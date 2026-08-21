package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzchq implements Runnable {
    private final zzcab zzfyk;

    private zzchq(zzcab zzcabVar) {
        this.zzfyk = zzcabVar;
    }

    static Runnable zza(zzcab zzcabVar) {
        return new zzchq(zzcabVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfyk.zzajm();
    }
}
