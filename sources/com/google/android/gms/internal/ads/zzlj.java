package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzlj implements Runnable {
    private final /* synthetic */ zzli zzazs;
    private final /* synthetic */ zzlo zzbat;

    zzlj(zzli zzliVar, zzlo zzloVar) {
        this.zzazs = zzliVar;
        this.zzbat = zzloVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbat.release();
        int size = this.zzazs.zzbae.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((zzmc) this.zzazs.zzbae.valueAt(i2)).disable();
        }
    }
}
