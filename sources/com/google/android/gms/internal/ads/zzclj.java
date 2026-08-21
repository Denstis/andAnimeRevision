package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzclj implements com.google.android.gms.ads.internal.zze {
    private com.google.android.gms.ads.internal.zze zzgbc;

    public final synchronized void zza(com.google.android.gms.ads.internal.zze zzeVar) {
        this.zzgbc = zzeVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final synchronized void zzg(View view) {
        if (this.zzgbc != null) {
            this.zzgbc.zzg(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final synchronized void zzjl() {
        if (this.zzgbc != null) {
            this.zzgbc.zzjl();
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final synchronized void zzjm() {
        if (this.zzgbc != null) {
            this.zzgbc.zzjm();
        }
    }
}
