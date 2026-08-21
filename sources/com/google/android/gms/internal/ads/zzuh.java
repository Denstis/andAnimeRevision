package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.R;

/* JADX INFO: loaded from: classes.dex */
public final class zzuh {
    private final String zzbqy;
    private final AdSize[] zzcdc;

    public zzuh(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.AdsAttrs);
        String string = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adSize);
        String string2 = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adSizes);
        boolean z = !TextUtils.isEmpty(string);
        boolean z2 = !TextUtils.isEmpty(string2);
        if (z && !z2) {
            this.zzcdc = zzbx(string);
        } else {
            if (z || !z2) {
                if (!z) {
                    throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
                }
                throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
            }
            this.zzcdc = zzbx(string2);
        }
        this.zzbqy = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(this.zzbqy)) {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        }
    }

    private static AdSize[] zzbx(String str) {
        String[] strArrSplit = str.split("\\s*,\\s*");
        AdSize[] adSizeArr = new AdSize[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String strTrim = strArrSplit[i2].trim();
            if (strTrim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] strArrSplit2 = strTrim.split("[xX]");
                strArrSplit2[0] = strArrSplit2[0].trim();
                strArrSplit2[1] = strArrSplit2[1].trim();
                try {
                    adSizeArr[i2] = new AdSize("FULL_WIDTH".equals(strArrSplit2[0]) ? -1 : Integer.parseInt(strArrSplit2[0]), "AUTO_HEIGHT".equals(strArrSplit2[1]) ? -2 : Integer.parseInt(strArrSplit2[1]));
                } catch (NumberFormatException unused) {
                    String strValueOf = String.valueOf(strTrim);
                    throw new IllegalArgumentException(strValueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(strValueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(strTrim)) {
                adSizeArr[i2] = AdSize.BANNER;
            } else if ("LARGE_BANNER".equals(strTrim)) {
                adSizeArr[i2] = AdSize.LARGE_BANNER;
            } else if ("FULL_BANNER".equals(strTrim)) {
                adSizeArr[i2] = AdSize.FULL_BANNER;
            } else if ("LEADERBOARD".equals(strTrim)) {
                adSizeArr[i2] = AdSize.LEADERBOARD;
            } else if ("MEDIUM_RECTANGLE".equals(strTrim)) {
                adSizeArr[i2] = AdSize.MEDIUM_RECTANGLE;
            } else if ("SMART_BANNER".equals(strTrim)) {
                adSizeArr[i2] = AdSize.SMART_BANNER;
            } else if ("WIDE_SKYSCRAPER".equals(strTrim)) {
                adSizeArr[i2] = AdSize.WIDE_SKYSCRAPER;
            } else if ("FLUID".equals(strTrim)) {
                adSizeArr[i2] = AdSize.FLUID;
            } else {
                if (!"ICON".equals(strTrim)) {
                    String strValueOf2 = String.valueOf(strTrim);
                    throw new IllegalArgumentException(strValueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(strValueOf2) : new String("Could not parse XML attribute \"adSize\": "));
                }
                adSizeArr[i2] = AdSize.zzabc;
            }
        }
        if (adSizeArr.length != 0) {
            return adSizeArr;
        }
        String strValueOf3 = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(strValueOf3) : new String("Could not parse XML attribute \"adSize\": "));
    }

    public final String getAdUnitId() {
        return this.zzbqy;
    }

    public final AdSize[] zzr(boolean z) {
        if (z || this.zzcdc.length == 1) {
            return this.zzcdc;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
}
