package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzacw extends zzfn implements zzacu {
    zzacw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zza(zzvl zzvlVar, IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzvlVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }
}
