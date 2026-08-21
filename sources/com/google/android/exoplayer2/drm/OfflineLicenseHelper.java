package com.google.android.exoplayer2.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class OfflineLicenseHelper<T extends ExoMediaCrypto> {
    private final ConditionVariable conditionVariable;
    private final DefaultDrmSessionManager<T> drmSessionManager;
    private final HandlerThread handlerThread = new HandlerThread("OfflineLicenseHelper");

    public OfflineLicenseHelper(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, HashMap<String, String> map) {
        this.handlerThread.start();
        this.conditionVariable = new ConditionVariable();
        DefaultDrmSessionEventListener defaultDrmSessionEventListener = new DefaultDrmSessionEventListener() { // from class: com.google.android.exoplayer2.drm.OfflineLicenseHelper.1
            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public void onDrmKeysLoaded() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public void onDrmKeysRemoved() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public void onDrmKeysRestored() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public /* synthetic */ void onDrmSessionAcquired() {
                i.$default$onDrmSessionAcquired(this);
            }

            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public void onDrmSessionManagerError(Exception exc) {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener
            public /* synthetic */ void onDrmSessionReleased() {
                i.$default$onDrmSessionReleased(this);
            }
        };
        this.drmSessionManager = new DefaultDrmSessionManager<>(uuid, exoMediaDrm, mediaDrmCallback, map);
        this.drmSessionManager.addListener(new Handler(this.handlerThread.getLooper()), defaultDrmSessionEventListener);
    }

    private byte[] blockingKeyRequest(int i2, byte[] bArr, DrmInitData drmInitData) throws DrmSession.DrmSessionException {
        DrmSession<T> drmSessionOpenBlockingKeyRequest = openBlockingKeyRequest(i2, bArr, drmInitData);
        DrmSession.DrmSessionException error = drmSessionOpenBlockingKeyRequest.getError();
        byte[] offlineLicenseKeySetId = drmSessionOpenBlockingKeyRequest.getOfflineLicenseKeySetId();
        this.drmSessionManager.releaseSession(drmSessionOpenBlockingKeyRequest);
        if (error == null) {
            return offlineLicenseKeySetId;
        }
        throw error;
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, HttpDataSource.Factory factory) {
        return newWidevineInstance(str, false, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory) {
        return newWidevineInstance(str, z, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory, HashMap<String, String> map) {
        UUID uuid = C.WIDEVINE_UUID;
        return new OfflineLicenseHelper<>(uuid, FrameworkMediaDrm.newInstance(uuid), new HttpMediaDrmCallback(str, z, factory), map);
    }

    private DrmSession<T> openBlockingKeyRequest(int i2, byte[] bArr, DrmInitData drmInitData) {
        this.drmSessionManager.setMode(i2, bArr);
        this.conditionVariable.close();
        DrmSession<T> drmSessionAcquireSession = this.drmSessionManager.acquireSession(this.handlerThread.getLooper(), drmInitData);
        this.conditionVariable.block();
        return drmSessionAcquireSession;
    }

    public synchronized byte[] downloadLicense(DrmInitData drmInitData) {
        Assertions.checkArgument(drmInitData != null);
        return blockingKeyRequest(2, null, drmInitData);
    }

    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) {
        Assertions.checkNotNull(bArr);
        DrmSession<T> drmSessionOpenBlockingKeyRequest = openBlockingKeyRequest(1, bArr, null);
        DrmSession.DrmSessionException error = drmSessionOpenBlockingKeyRequest.getError();
        Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(drmSessionOpenBlockingKeyRequest);
        this.drmSessionManager.releaseSession(drmSessionOpenBlockingKeyRequest);
        if (error == null) {
            return licenseDurationRemainingSec;
        }
        if (!(error.getCause() instanceof KeysExpiredException)) {
            throw error;
        }
        return Pair.create(0L, 0L);
    }

    public synchronized byte[] getPropertyByteArray(String str) {
        return this.drmSessionManager.getPropertyByteArray(str);
    }

    public synchronized String getPropertyString(String str) {
        return this.drmSessionManager.getPropertyString(str);
    }

    public void release() {
        this.handlerThread.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) {
        Assertions.checkNotNull(bArr);
        blockingKeyRequest(3, bArr, null);
    }

    public synchronized byte[] renewLicense(byte[] bArr) {
        Assertions.checkNotNull(bArr);
        return blockingKeyRequest(2, bArr, null);
    }

    public synchronized void setPropertyByteArray(String str, byte[] bArr) {
        this.drmSessionManager.setPropertyByteArray(str, bArr);
    }

    public synchronized void setPropertyString(String str, String str2) {
        this.drmSessionManager.setPropertyString(str, str2);
    }
}
