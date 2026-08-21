package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class zzwg extends zzfn implements zzwe {
    zzwg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void onAdMuted() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
