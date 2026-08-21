package com.google.ads;

import android.content.Context;
import com.google.firebase.storage.internal.ExponentialBackoffSender;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    private final com.google.android.gms.ads.AdSize zzdg;
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "mb");
    public static final AdSize BANNER = new AdSize(320, 50, "mb");
    public static final AdSize IAB_MRECT = new AdSize(300, ExponentialBackoffSender.RND_MAX, "as");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "as");
    public static final AdSize IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");

    public AdSize(int i2, int i3) {
        this(new com.google.android.gms.ads.AdSize(i2, i3));
    }

    private AdSize(int i2, int i3, String str) {
        this(new com.google.android.gms.ads.AdSize(i2, i3));
    }

    public AdSize(com.google.android.gms.ads.AdSize adSize) {
        this.zzdg = adSize;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AdSize) {
            return this.zzdg.equals(((AdSize) obj).zzdg);
        }
        return false;
    }

    public final AdSize findBestSize(AdSize... adSizeArr) {
        AdSize adSize = null;
        if (adSizeArr == null) {
            return null;
        }
        float f2 = 0.0f;
        int width = getWidth();
        int height = getHeight();
        for (AdSize adSize2 : adSizeArr) {
            if (isSizeAppropriate(adSize2.getWidth(), adSize2.getHeight())) {
                float f3 = (r7 * r8) / (width * height);
                if (f3 > 1.0f) {
                    f3 = 1.0f / f3;
                }
                if (f3 > f2) {
                    adSize = adSize2;
                    f2 = f3;
                }
            }
        }
        return adSize;
    }

    public final int getHeight() {
        return this.zzdg.getHeight();
    }

    public final int getHeightInPixels(Context context) {
        return this.zzdg.getHeightInPixels(context);
    }

    public final int getWidth() {
        return this.zzdg.getWidth();
    }

    public final int getWidthInPixels(Context context) {
        return this.zzdg.getWidthInPixels(context);
    }

    public final int hashCode() {
        return this.zzdg.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.zzdg.isAutoHeight();
    }

    public final boolean isCustomAdSize() {
        return false;
    }

    public final boolean isFullWidth() {
        return this.zzdg.isFullWidth();
    }

    public final boolean isSizeAppropriate(int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        float f2 = i2;
        float f3 = width;
        if (f2 > f3 * 1.25f || f2 < f3 * 0.8f) {
            return false;
        }
        float f4 = i3;
        float f5 = height;
        return f4 <= 1.25f * f5 && f4 >= f5 * 0.8f;
    }

    public final String toString() {
        return this.zzdg.toString();
    }
}
