package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface ExoMediaDrm<T extends ExoMediaCrypto> {
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;

    public static final class KeyRequest {
        private final byte[] data;
        private final String licenseServerUrl;

        public KeyRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.licenseServerUrl = str;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getLicenseServerUrl() {
            return this.licenseServerUrl;
        }
    }

    public static final class KeyStatus {
        private final byte[] keyId;
        private final int statusCode;

        public KeyStatus(int i2, byte[] bArr) {
            this.statusCode = i2;
            this.keyId = bArr;
        }

        public byte[] getKeyId() {
            return this.keyId;
        }

        public int getStatusCode() {
            return this.statusCode;
        }
    }

    public interface OnEventListener<T extends ExoMediaCrypto> {
        void onEvent(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, int i2, int i3, byte[] bArr2);
    }

    public interface OnKeyStatusChangeListener<T extends ExoMediaCrypto> {
        void onKeyStatusChange(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, List<KeyStatus> list, boolean z);
    }

    public static final class ProvisionRequest {
        private final byte[] data;
        private final String defaultUrl;

        public ProvisionRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.defaultUrl = str;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getDefaultUrl() {
            return this.defaultUrl;
        }
    }

    void closeSession(byte[] bArr);

    T createMediaCrypto(byte[] bArr);

    KeyRequest getKeyRequest(byte[] bArr, List<DrmInitData.SchemeData> list, int i2, HashMap<String, String> map);

    byte[] getPropertyByteArray(String str);

    String getPropertyString(String str);

    ProvisionRequest getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    void setOnEventListener(OnEventListener<? super T> onEventListener);

    void setOnKeyStatusChangeListener(OnKeyStatusChangeListener<? super T> onKeyStatusChangeListener);

    void setPropertyByteArray(String str, byte[] bArr);

    void setPropertyString(String str, String str2);
}
