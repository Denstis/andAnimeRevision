package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzafi extends zzfn implements zzafj {
    zzafi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void zza(zzafd zzafdVar, zzafh zzafhVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzafdVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzafhVar);
        zzb(2, parcelObtainAndWriteInterfaceToken);
    }
}
