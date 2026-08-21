package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzakq implements MediationAdRequest {
    private final String zzabl;
    private final int zzcby;
    private final boolean zzccj;
    private final int zzddp;
    private final int zzddq;
    private final Date zznc;
    private final Set<String> zzne;
    private final boolean zznf;
    private final Location zzng;

    public zzakq(Date date, int i2, Set<String> set, Location location, boolean z, int i3, boolean z2, int i4, String str) {
        this.zznc = date;
        this.zzcby = i2;
        this.zzne = set;
        this.zzng = location;
        this.zznf = z;
        this.zzddp = i3;
        this.zzccj = z2;
        this.zzddq = i4;
        this.zzabl = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zznc;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzcby;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzne;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zzng;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzccj;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zznf;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzddp;
    }
}
