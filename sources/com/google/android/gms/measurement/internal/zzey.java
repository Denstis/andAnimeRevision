package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzey {
    private final int zza;
    private final boolean zzb;
    private final boolean zzc;
    private final /* synthetic */ zzew zzd;

    zzey(zzew zzewVar, int i2, boolean z, boolean z2) {
        this.zzd = zzewVar;
        this.zza = i2;
        this.zzb = z;
        this.zzc = z2;
    }

    public final void zza(String str) {
        this.zzd.zza(this.zza, this.zzb, this.zzc, str, null, null, null);
    }

    public final void zza(String str, Object obj) {
        this.zzd.zza(this.zza, this.zzb, this.zzc, str, obj, null, null);
    }

    public final void zza(String str, Object obj, Object obj2) {
        this.zzd.zza(this.zza, this.zzb, this.zzc, str, obj, obj2, null);
    }

    public final void zza(String str, Object obj, Object obj2, Object obj3) {
        this.zzd.zza(this.zza, this.zzb, this.zzc, str, obj, obj2, obj3);
    }
}
