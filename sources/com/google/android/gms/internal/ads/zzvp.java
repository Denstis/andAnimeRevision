package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzvp extends zzfn implements zzvm {
    zzvp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final IBinder zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2, int i3) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        parcelObtainAndWriteInterfaceToken.writeInt(i3);
        Parcel parcelTransactAndReadException = transactAndReadException(2, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        parcelTransactAndReadException.recycle();
        return strongBinder;
    }
}
