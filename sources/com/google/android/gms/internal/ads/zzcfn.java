package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfn implements zzbnb, zzbog {
    private static final Object zzfwb = new Object();
    private static int zzfwc;
    private final zzcft zzfwd;

    public zzcfn(zzcft zzcftVar) {
        this.zzfwd = zzcftVar;
    }

    private static void zzakl() {
        synchronized (zzfwb) {
            zzfwc++;
        }
    }

    private static boolean zzakm() {
        boolean z;
        synchronized (zzfwb) {
            z = zzfwc < ((Integer) zzuv.zzon().zzd(zzza.zzctd)).intValue();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void onAdFailedToLoad(int i2) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzctc)).booleanValue() && zzakm()) {
            this.zzfwd.zzbb(false);
            zzakl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final void onAdLoaded() {
    }
}
