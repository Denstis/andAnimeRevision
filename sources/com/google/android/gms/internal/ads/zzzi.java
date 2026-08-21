package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzzi extends zzfn implements zzzg {
    zzzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.consent.IConsentSdkUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzzg
    public final void zza(Bundle bundle, zzzf zzzfVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, bundle);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzzfVar);
        zza(3, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzzg
    public final void zzr(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(2, parcelObtainAndWriteInterfaceToken);
    }
}
