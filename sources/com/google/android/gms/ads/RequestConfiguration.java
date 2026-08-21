package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzaxi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public static final List<String> zzabm = Arrays.asList("MA", "T", "PG", "G");
    private final int zzabj;
    private final int zzabk;
    private final String zzabl;

    public static class Builder {
        private int zzabj = -1;
        private int zzabk = -1;
        private String zzabl = null;

        public RequestConfiguration build() {
            return new RequestConfiguration(this.zzabj, this.zzabk, this.zzabl);
        }

        public Builder setMaxAdContentRating(String str) {
            if (str != null && !"".equals(str)) {
                if (!"G".equals(str) && !"PG".equals(str) && !"T".equals(str) && !"MA".equals(str)) {
                    String strValueOf = String.valueOf(str);
                    zzaxi.zzeu(strValueOf.length() != 0 ? "Invalid value passed to setMaxAdContentRating: ".concat(strValueOf) : new String("Invalid value passed to setMaxAdContentRating: "));
                }
                return this;
            }
            str = null;
            this.zzabl = str;
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i2) {
            if (i2 == -1 || i2 == 0 || i2 == 1) {
                this.zzabj = i2;
            } else {
                StringBuilder sb = new StringBuilder(68);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i2);
                zzaxi.zzeu(sb.toString());
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i2) {
            if (i2 == -1 || i2 == 0 || i2 == 1) {
                this.zzabk = i2;
            } else {
                StringBuilder sb = new StringBuilder(63);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i2);
                zzaxi.zzeu(sb.toString());
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    private RequestConfiguration(int i2, int i3, String str) {
        this.zzabj = i2;
        this.zzabk = i3;
        this.zzabl = str;
    }

    public String getMaxAdContentRating() {
        String str = this.zzabl;
        return str == null ? "" : str;
    }

    public int getTagForChildDirectedTreatment() {
        return this.zzabj;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.zzabk;
    }

    public Builder toBuilder() {
        return new Builder().setTagForChildDirectedTreatment(this.zzabj).setTagForUnderAgeOfConsent(this.zzabk).setMaxAdContentRating(this.zzabl);
    }
}
