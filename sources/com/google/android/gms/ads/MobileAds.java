package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxl;

/* JADX INFO: loaded from: classes.dex */
public class MobileAds {

    public static final class Settings {
        private final zzxl zzabh = new zzxl();

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }

        final zzxl zzdd() {
            return this.zzabh;
        }
    }

    private MobileAds() {
    }

    public static InitializationStatus getInitializationStatus() {
        return zzxc.zzph().getInitializationStatus();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzxc.zzph().getRequestConfiguration();
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzxc.zzph().getRewardedVideoAdInstance(context);
    }

    public static String getVersionString() {
        return zzxc.zzph().getVersionString();
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzxc.zzph().zza(context, null, null, onInitializationCompleteListener);
    }

    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzxc.zzph().zza(context, str, settings == null ? null : settings.zzdd(), null);
    }

    public static void openDebugMenu(Context context, String str) {
        zzxc.zzph().openDebugMenu(context, str);
    }

    @KeepForSdk
    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        zzxc.zzph().registerRtbAdapter(cls);
    }

    public static void setAppMuted(boolean z) {
        zzxc.zzph().setAppMuted(z);
    }

    public static void setAppVolume(float f2) {
        zzxc.zzph().setAppVolume(f2);
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        zzxc.zzph().setRequestConfiguration(requestConfiguration);
    }
}
