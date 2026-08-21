package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzzh extends zzfn implements zzzf {
    zzzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.consent.IConsentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void onFailure(int i2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        zzb(3, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void onSuccess(String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzb(2, parcelObtainAndWriteInterfaceToken);
    }
}
