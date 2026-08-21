package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzazl implements Runnable {
    private boolean zzbpd = false;
    private zzayw zzdyw;

    zzazl(zzayw zzaywVar) {
        this.zzdyw = zzaywVar;
    }

    private final void zzxv() {
        zzaul.zzdsu.removeCallbacks(this);
        zzaul.zzdsu.postDelayed(this, 250L);
    }

    public final void pause() {
        this.zzbpd = true;
        this.zzdyw.zzxd();
    }

    public final void resume() {
        this.zzbpd = false;
        zzxv();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzbpd) {
            return;
        }
        this.zzdyw.zzxd();
        zzxv();
    }
}
