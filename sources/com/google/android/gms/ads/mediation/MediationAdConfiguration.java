package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    private final String zzabl;
    private final int zzddp;
    private final String zzdeu;
    private final String zzeij;
    private final Bundle zzeik;
    private final Bundle zzeil;
    private final int zzeim;
    private final Context zzlk;
    private final boolean zznf;
    private final Location zzng;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i2, int i3, String str2, String str3) {
        this.zzeij = str;
        this.zzeik = bundle;
        this.zzeil = bundle2;
        this.zzlk = context;
        this.zznf = z;
        this.zzng = location;
        this.zzddp = i2;
        this.zzeim = i3;
        this.zzabl = str2;
        this.zzdeu = str3;
    }

    public String getBidResponse() {
        return this.zzeij;
    }

    public Context getContext() {
        return this.zzlk;
    }

    public Location getLocation() {
        return this.zzng;
    }

    public String getMaxAdContentRating() {
        return this.zzabl;
    }

    public Bundle getMediationExtras() {
        return this.zzeil;
    }

    public Bundle getServerParameters() {
        return this.zzeik;
    }

    public String getWatermark() {
        return this.zzdeu;
    }

    public boolean isTestRequest() {
        return this.zznf;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzddp;
    }

    public int taggedForUnderAgeTreatment() {
        return this.zzeim;
    }
}
