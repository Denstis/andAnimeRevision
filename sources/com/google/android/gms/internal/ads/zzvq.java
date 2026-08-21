package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class zzvq extends zzfn implements zzvo {
    zzvq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzvo
    public final void onAdMetadataChanged() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
