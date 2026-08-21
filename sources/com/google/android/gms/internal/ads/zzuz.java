package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class zzuz extends zzfn implements zzux {
    zzuz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
