package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzaot extends zzfn implements zzaor {
    zzaot(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final zzaon zza(zzaol zzaolVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaolVar);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        zzaon zzaonVar = (zzaon) zzfp.zza(parcelTransactAndReadException, zzaon.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzaonVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zza(zzaol zzaolVar, zzaow zzaowVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaolVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaowVar);
        zza(2, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zza(zzape zzapeVar, zzaoy zzaoyVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzapeVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaoyVar);
        zza(4, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaor
    public final void zzb(zzape zzapeVar, zzaoy zzaoyVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzapeVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaoyVar);
        zza(5, parcelObtainAndWriteInterfaceToken);
    }
}
