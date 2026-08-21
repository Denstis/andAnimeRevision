package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.util.EventDispatcher;
import com.google.android.exoplayer2.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(18)
class DefaultDrmSession<T extends ExoMediaCrypto> implements DrmSession<T> {
    private static final int MAX_LICENSE_DURATION_TO_RENEW = 60;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    private static final String TAG = "DefaultDrmSession";
    final MediaDrmCallback callback;
    private ExoMediaDrm.KeyRequest currentKeyRequest;
    private ExoMediaDrm.ProvisionRequest currentProvisionRequest;
    private final EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher;
    private final int initialDrmRequestRetryCount;
    private DrmSession.DrmSessionException lastException;
    private T mediaCrypto;
    private final ExoMediaDrm<T> mediaDrm;
    private final int mode;
    private byte[] offlineLicenseKeySetId;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private DefaultDrmSession<T>.PostRequestHandler postRequestHandler;
    final DefaultDrmSession<T>.PostResponseHandler postResponseHandler;
    private final ProvisioningManager<T> provisioningManager;
    private HandlerThread requestHandlerThread;
    public final List<DrmInitData.SchemeData> schemeDatas;
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    @SuppressLint({"HandlerLeak"})
    private class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        private long getRetryDelayMillis(int i2) {
            return Math.min((i2 - 1) * 1000, 5000);
        }

        private boolean maybeRetryRequest(Message message) {
            int i2;
            if (!(message.arg1 == 1) || (i2 = message.arg2 + 1) > DefaultDrmSession.this.initialDrmRequestRetryCount) {
                return false;
            }
            Message messageObtain = Message.obtain(message);
            messageObtain.arg2 = i2;
            sendMessageDelayed(messageObtain, getRetryDelayMillis(i2));
            return true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj = message.obj;
            try {
                int i2 = message.what;
                if (i2 == 0) {
                    e = DefaultDrmSession.this.callback.executeProvisionRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.ProvisionRequest) obj);
                } else {
                    if (i2 != 1) {
                        throw new RuntimeException();
                    }
                    e = DefaultDrmSession.this.callback.executeKeyRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.KeyRequest) obj);
                }
            } catch (Exception e2) {
                e = e2;
                if (maybeRetryRequest(message)) {
                    return;
                }
            }
            DefaultDrmSession.this.postResponseHandler.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        }

        void post(int i2, Object obj, boolean z) {
            obtainMessage(i2, z ? 1 : 0, 0, obj).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i2 = message.what;
            if (i2 == 0) {
                DefaultDrmSession.this.onProvisionResponse(obj, obj2);
            } else {
                if (i2 != 1) {
                    return;
                }
                DefaultDrmSession.this.onKeyResponse(obj, obj2);
            }
        }
    }

    public interface ProvisioningManager<T extends ExoMediaCrypto> {
        void onProvisionCompleted();

        void onProvisionError(Exception exc);

        void provisionRequired(DefaultDrmSession<T> defaultDrmSession);
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm<T> exoMediaDrm, ProvisioningManager<T> provisioningManager, List<DrmInitData.SchemeData> list, int i2, byte[] bArr, HashMap<String, String> map, MediaDrmCallback mediaDrmCallback, Looper looper, EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher, int i3) {
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.mediaDrm = exoMediaDrm;
        this.mode = i2;
        this.offlineLicenseKeySetId = bArr;
        this.schemeDatas = bArr == null ? Collections.unmodifiableList(list) : null;
        this.optionalKeyRequestParameters = map;
        this.callback = mediaDrmCallback;
        this.initialDrmRequestRetryCount = i3;
        this.eventDispatcher = eventDispatcher;
        this.state = 2;
        this.postResponseHandler = new PostResponseHandler(looper);
        this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
        this.requestHandlerThread.start();
        this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
    }

    private void doLicense(boolean z) {
        int i2 = this.mode;
        int i3 = 1;
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                if (this.offlineLicenseKeySetId != null && !restoreKeys()) {
                    return;
                }
                postKeyRequest(2, z);
                return;
            }
            i3 = 3;
            if (i2 != 3 || !restoreKeys()) {
                return;
            }
            postKeyRequest(i3, z);
        }
        if (this.offlineLicenseKeySetId != null) {
            if (this.state == 4 || restoreKeys()) {
                long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
                if (this.mode != 0 || licenseDurationRemainingSec > 60) {
                    if (licenseDurationRemainingSec <= 0) {
                        onError(new KeysExpiredException());
                        return;
                    } else {
                        this.state = 4;
                        this.eventDispatcher.dispatch(g.f3954a);
                        return;
                    }
                }
                Log.d(TAG, "Offline license has expired or will expire soon. Remaining seconds: " + licenseDurationRemainingSec);
                postKeyRequest(2, z);
                return;
            }
            return;
        }
        postKeyRequest(i3, z);
    }

    private long getLicenseDurationRemainingSec() {
        if (!C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(this);
        return Math.min(((Long) licenseDurationRemainingSec.first).longValue(), ((Long) licenseDurationRemainingSec.second).longValue());
    }

    private boolean isOpen() {
        int i2 = this.state;
        return i2 == 3 || i2 == 4;
    }

    private void onError(final Exception exc) {
        this.lastException = new DrmSession.DrmSessionException(exc);
        this.eventDispatcher.dispatch(new EventDispatcher.Event() { // from class: com.google.android.exoplayer2.drm.b
            @Override // com.google.android.exoplayer2.util.EventDispatcher.Event
            public final void sendTo(Object obj) {
                ((DefaultDrmSessionEventListener) obj).onDrmSessionManagerError(exc);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(Object obj, Object obj2) {
        EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher;
        EventDispatcher.Event<DefaultDrmSessionEventListener> event;
        if (obj == this.currentKeyRequest && isOpen()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                onKeysError((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse(this.offlineLicenseKeySetId, bArr);
                    eventDispatcher = this.eventDispatcher;
                    event = g.f3954a;
                } else {
                    byte[] bArrProvideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                    if ((this.mode == 2 || (this.mode == 0 && this.offlineLicenseKeySetId != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                        this.offlineLicenseKeySetId = bArrProvideKeyResponse;
                    }
                    this.state = 4;
                    eventDispatcher = this.eventDispatcher;
                    event = new EventDispatcher.Event() { // from class: com.google.android.exoplayer2.drm.h
                        @Override // com.google.android.exoplayer2.util.EventDispatcher.Event
                        public final void sendTo(Object obj3) {
                            ((DefaultDrmSessionEventListener) obj3).onDrmKeysLoaded();
                        }
                    };
                }
                eventDispatcher.dispatch(event);
            } catch (Exception e2) {
                onKeysError(e2);
            }
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.provisionRequired(this);
        } else {
            onError(exc);
        }
    }

    private void onKeysExpired() {
        if (this.state == 4) {
            this.state = 3;
            onError(new KeysExpiredException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(Object obj, Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || isOpen()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof Exception) {
                    this.provisioningManager.onProvisionError((Exception) obj2);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (Exception e2) {
                    this.provisioningManager.onProvisionError(e2);
                }
            }
        }
    }

    private boolean openInternal(boolean z) {
        if (isOpen()) {
            return true;
        }
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.eventDispatcher.dispatch(new EventDispatcher.Event() { // from class: com.google.android.exoplayer2.drm.f
                @Override // com.google.android.exoplayer2.util.EventDispatcher.Event
                public final void sendTo(Object obj) {
                    ((DefaultDrmSessionEventListener) obj).onDrmSessionAcquired();
                }
            });
            this.mediaCrypto = (T) this.mediaDrm.createMediaCrypto(this.sessionId);
            this.state = 3;
            return true;
        } catch (NotProvisionedException e2) {
            if (z) {
                this.provisioningManager.provisionRequired(this);
                return false;
            }
            onError(e2);
            return false;
        } catch (Exception e3) {
            onError(e3);
            return false;
        }
    }

    private void postKeyRequest(int i2, boolean z) {
        try {
            this.currentKeyRequest = this.mediaDrm.getKeyRequest(i2 == 3 ? this.offlineLicenseKeySetId : this.sessionId, this.schemeDatas, i2, this.optionalKeyRequestParameters);
            this.postRequestHandler.post(1, this.currentKeyRequest, z);
        } catch (Exception e2) {
            onKeysError(e2);
        }
    }

    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e2) {
            Log.e(TAG, "Error trying to restore Widevine keys.", e2);
            onError(e2);
            return false;
        }
    }

    public void acquire() {
        int i2 = this.openCount + 1;
        this.openCount = i2;
        if (i2 == 1 && this.state != 1 && openInternal(true)) {
            doLicense(true);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final T getMediaCrypto() {
        return this.mediaCrypto;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        return this.offlineLicenseKeySetId;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.state;
    }

    public boolean hasSessionId(byte[] bArr) {
        return Arrays.equals(this.sessionId, bArr);
    }

    public void onMediaDrmEvent(int i2) {
        if (isOpen()) {
            if (i2 == 1) {
                this.state = 3;
                this.provisioningManager.provisionRequired(this);
            } else if (i2 == 2) {
                doLicense(false);
            } else {
                if (i2 != 3) {
                    return;
                }
                onKeysExpired();
            }
        }
    }

    public void onProvisionCompleted() {
        if (openInternal(false)) {
            doLicense(true);
        }
    }

    public void onProvisionError(Exception exc) {
        onError(exc);
    }

    public void provision() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        this.postRequestHandler.post(0, this.currentProvisionRequest, true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    public boolean release() {
        int i2 = this.openCount - 1;
        this.openCount = i2;
        if (i2 != 0) {
            return false;
        }
        this.state = 0;
        this.postResponseHandler.removeCallbacksAndMessages(null);
        this.postRequestHandler.removeCallbacksAndMessages(null);
        this.postRequestHandler = null;
        this.requestHandlerThread.quit();
        this.requestHandlerThread = null;
        this.mediaCrypto = null;
        this.lastException = null;
        this.currentKeyRequest = null;
        this.currentProvisionRequest = null;
        byte[] bArr = this.sessionId;
        if (bArr != null) {
            this.mediaDrm.closeSession(bArr);
            this.sessionId = null;
            this.eventDispatcher.dispatch(new EventDispatcher.Event() { // from class: com.google.android.exoplayer2.drm.a
                @Override // com.google.android.exoplayer2.util.EventDispatcher.Event
                public final void sendTo(Object obj) {
                    ((DefaultDrmSessionEventListener) obj).onDrmSessionReleased();
                }
            });
        }
        return true;
    }
}
