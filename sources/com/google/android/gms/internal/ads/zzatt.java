package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzatt extends zzauc {
    private final /* synthetic */ zzatr zzdrb;

    zzatt(zzatr zzatrVar) {
        this.zzdrb = zzatrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauc
    public final void zzsx() {
        zzzo zzzoVar = new zzzo(this.zzdrb.zzlk, this.zzdrb.zzblk.zzblz);
        synchronized (this.zzdrb.lock) {
            try {
                com.google.android.gms.ads.internal.zzq.zzks();
                zzzt.zza(this.zzdrb.zzdqo, zzzoVar);
            } catch (IllegalArgumentException e2) {
                zzaxi.zzd("Cannot config CSI reporter.", e2);
            }
        }
    }
}
