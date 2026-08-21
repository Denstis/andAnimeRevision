package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzamf extends zzfn implements zzamd {
    zzamf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzwr getVideoController() {
        Parcel parcelTransactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        zzwr zzwrVarZzi = zzwq.zzi(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzwrVarZzi;
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzua zzuaVar, zzame zzameVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, bundle);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, bundle2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzameVar);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzalr zzalrVar, zzakd zzakdVar, zzua zzuaVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzalrVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        zza(13, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzals zzalsVar, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzalsVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(14, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzalx zzalxVar, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzalxVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(18, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzaly zzalyVar, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzalyVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(16, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String[] strArr, Bundle[] bundleArr) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeStringArray(strArr);
        parcelObtainAndWriteInterfaceToken.writeTypedArray(bundleArr, 0);
        zza(11, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final boolean zzac(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(15, parcelObtainAndWriteInterfaceToken);
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final boolean zzad(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(17, parcelObtainAndWriteInterfaceToken);
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zzdh(String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(19, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zzr(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(10, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzamr zzsg() {
        Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        zzamr zzamrVar = (zzamr) zzfp.zza(parcelTransactAndReadException, zzamr.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzamrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzamr zzsh() {
        Parcel parcelTransactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        zzamr zzamrVar = (zzamr) zzfp.zza(parcelTransactAndReadException, zzamr.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzamrVar;
    }
}
