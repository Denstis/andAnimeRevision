package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class zzre extends zzfn implements zzrc {
    zzre(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzrc
    public final void onAppOpenAdClosed() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
