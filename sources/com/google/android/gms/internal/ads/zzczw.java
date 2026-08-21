package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzczw extends zzfn implements zzczx {
    zzczw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.zzczx
    public final zzczv zza(zzczt zzcztVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzcztVar);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        zzczv zzczvVar = (zzczv) zzfp.zza(parcelTransactAndReadException, zzczv.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzczvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczx
    public final void zza(zzczo zzczoVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzczoVar);
        zza(2, parcelObtainAndWriteInterfaceToken);
    }
}
