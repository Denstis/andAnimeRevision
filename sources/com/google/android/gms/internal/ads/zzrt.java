package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzrt extends zzfn implements zzru {
    zzrt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzru
    public final zzro zza(zzrp zzrpVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzrpVar);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        zzro zzroVar = (zzro) zzfp.zza(parcelTransactAndReadException, zzro.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzroVar;
    }
}
