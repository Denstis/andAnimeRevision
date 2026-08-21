package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzwy;
import com.google.android.gms.internal.ads.zzwz;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_G = "G";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";

    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final int MAX_CONTENT_URL_LENGTH = 512;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;

    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    private final zzwz zzaaz;

    @VisibleForTesting
    public static final class Builder {
        private final zzwy zzabb = new zzwy();

        public Builder() {
            this.zzabb.zzcb("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzabb.zzb(cls, bundle);
            return this;
        }

        public final Builder addKeyword(String str) {
            this.zzabb.zzca(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzabb.zza(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.zzabb.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzabb.zzcc("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.zzabb.zzcb(str);
            return this;
        }

        public final AdRequest build() {
            return new AdRequest(this);
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.zzabb.zza(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            Preconditions.checkNotNull(str, "Content URL must be non-null.");
            Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
            Preconditions.checkArgument(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf(AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length()));
            this.zzabb.zzcd(str);
            return this;
        }

        @Deprecated
        public final Builder setGender(int i2) {
            this.zzabb.zzcg(i2);
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzabb.zzt(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzabb.zza(location);
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.zzabb.zzch(str);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzabb.zzcf(str);
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i2) {
            this.zzabb.zzch(i2);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzabb.zzs(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    public @interface TagForUnderAgeOfConsent {
    }

    private AdRequest(Builder builder) {
        this.zzaaz = new zzwz(builder.zzabb);
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzaaz.getBirthday();
    }

    public final String getContentUrl() {
        return this.zzaaz.getContentUrl();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzaaz.getCustomEventExtrasBundle(cls);
    }

    @Deprecated
    public final int getGender() {
        return this.zzaaz.getGender();
    }

    public final Set<String> getKeywords() {
        return this.zzaaz.getKeywords();
    }

    public final Location getLocation() {
        return this.zzaaz.getLocation();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzaaz.getNetworkExtras(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzaaz.getNetworkExtrasBundle(cls);
    }

    public final boolean isTestDevice(Context context) {
        return this.zzaaz.isTestDevice(context);
    }

    public final zzwz zzdb() {
        return this.zzaaz;
    }
}
