package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
final class zzec implements Runnable {
    private final /* synthetic */ zzdx zzyj;
    private final /* synthetic */ int zzym;
    private final /* synthetic */ boolean zzyn;

    zzec(zzdx zzdxVar, int i2, boolean z) {
        this.zzyj = zzdxVar;
        this.zzym = i2;
        this.zzyn = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbo.zza zzaVarZzb = this.zzyj.zzb(this.zzym, this.zzyn);
        this.zzyj.zzxy = zzaVarZzb;
        if (zzdx.zza(this.zzym, zzaVarZzb)) {
            this.zzyj.zza(this.zzym + 1, this.zzyn);
        }
    }
}
