package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcz implements Runnable {
    private final /* synthetic */ zzda zzvn;

    zzcz(zzda zzdaVar) {
        this.zzvn = zzdaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        if (this.zzvn.zzvr != null) {
            return;
        }
        synchronized (zzda.zzvp) {
            if (this.zzvn.zzvr != null) {
                return;
            }
            boolean z = false;
            try {
                zBooleanValue = ((Boolean) zzuv.zzon().zzd(zzza.zzcmw)).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    zzda.zzvq = new zzsi(this.zzvn.zzvo.zzlk, "ADSHIELD", null);
                    z = zBooleanValue;
                } catch (Throwable unused2) {
                }
            } else {
                z = zBooleanValue;
            }
            this.zzvn.zzvr = Boolean.valueOf(z);
            zzda.zzvp.open();
        }
    }
}
