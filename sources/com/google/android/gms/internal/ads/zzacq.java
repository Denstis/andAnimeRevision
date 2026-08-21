package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzacq extends zzfn implements zzaco {
    zzacq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zza(zzace zzaceVar, String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaceVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }
}
