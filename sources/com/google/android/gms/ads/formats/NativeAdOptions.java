package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;

/* JADX INFO: loaded from: classes.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;

    @Deprecated
    public static final int ORIENTATION_ANY = 0;

    @Deprecated
    public static final int ORIENTATION_LANDSCAPE = 2;

    @Deprecated
    public static final int ORIENTATION_PORTRAIT = 1;
    private final boolean zzbju;
    private final int zzbjv;
    private final int zzbjw;
    private final boolean zzbjx;
    private final int zzbjy;
    private final VideoOptions zzbjz;
    private final boolean zzbka;

    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        private VideoOptions zzbjz;
        private boolean zzbju = false;
        private int zzbjv = -1;
        private int zzbjw = 0;
        private boolean zzbjx = false;
        private int zzbjy = 1;
        private boolean zzbka = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i2) {
            this.zzbjy = i2;
            return this;
        }

        @Deprecated
        public final Builder setImageOrientation(int i2) {
            this.zzbjv = i2;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int i2) {
            this.zzbjw = i2;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.zzbka = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzbjx = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzbju = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzbjz = videoOptions;
            return this;
        }
    }

    public @interface NativeMediaAspectRatio {
    }

    private NativeAdOptions(Builder builder) {
        this.zzbju = builder.zzbju;
        this.zzbjv = builder.zzbjv;
        this.zzbjw = builder.zzbjw;
        this.zzbjx = builder.zzbjx;
        this.zzbjy = builder.zzbjy;
        this.zzbjz = builder.zzbjz;
        this.zzbka = builder.zzbka;
    }

    public final int getAdChoicesPlacement() {
        return this.zzbjy;
    }

    @Deprecated
    public final int getImageOrientation() {
        return this.zzbjv;
    }

    public final int getMediaAspectRatio() {
        return this.zzbjw;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbjz;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzbjx;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzbju;
    }

    public final boolean zzje() {
        return this.zzbka;
    }
}
