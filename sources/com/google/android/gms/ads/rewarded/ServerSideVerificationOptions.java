package com.google.android.gms.ads.rewarded;

/* JADX INFO: loaded from: classes.dex */
public class ServerSideVerificationOptions {
    private final String zzdnz;
    private final String zzdoa;

    public static final class Builder {
        private String zzdnz = "";
        private String zzdoa = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public final Builder setCustomData(String str) {
            this.zzdoa = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.zzdnz = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.zzdnz = builder.zzdnz;
        this.zzdoa = builder.zzdoa;
    }

    public String getCustomData() {
        return this.zzdoa;
    }

    public String getUserId() {
        return this.zzdnz;
    }
}
