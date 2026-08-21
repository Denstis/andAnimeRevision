package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbyk implements zzdcz<zzbbw> {
    private final /* synthetic */ String zzfpt;
    private final /* synthetic */ zzaer zzfpu;

    zzbyk(zzbyh zzbyhVar, String str, zzaer zzaerVar) {
        this.zzfpt = str;
        this.zzfpu = zzaerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbbw zzbbwVar) {
        zzbbwVar.zzb(this.zzfpt, this.zzfpu);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
    }
}
