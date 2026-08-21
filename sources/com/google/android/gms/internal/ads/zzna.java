package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzna {
    public final zzmk zzbee;
    public final zzmv zzbef;
    public final Object zzbeg;
    public final zzgz[] zzbeh;

    public zzna(zzmk zzmkVar, zzmv zzmvVar, Object obj, zzgz[] zzgzVarArr) {
        this.zzbee = zzmkVar;
        this.zzbef = zzmvVar;
        this.zzbeg = obj;
        this.zzbeh = zzgzVarArr;
    }

    public final boolean zza(zzna zznaVar, int i2) {
        return zznaVar != null && zzof.zza(this.zzbef.zzax(i2), zznaVar.zzbef.zzax(i2)) && zzof.zza(this.zzbeh[i2], zznaVar.zzbeh[i2]);
    }
}
