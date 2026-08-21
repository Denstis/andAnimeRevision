package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzdpb extends zzdox {
    private final zzdpa zzhfm = new zzdpa();

    zzdpb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdox
    public final void zza(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> listZza = this.zzhfm.zza(th, false);
        if (listZza == null) {
            return;
        }
        synchronized (listZza) {
            for (Throwable th2 : listZza) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdox
    public final void zza(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.zzhfm.zza(th, true).add(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzdox
    public final void zzj(Throwable th) {
        th.printStackTrace();
        List<Throwable> listZza = this.zzhfm.zza(th, false);
        if (listZza == null) {
            return;
        }
        synchronized (listZza) {
            for (Throwable th2 : listZza) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }
}
