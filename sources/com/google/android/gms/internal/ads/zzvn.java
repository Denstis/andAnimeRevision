package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzvn extends zzfn implements zzvl {
    zzvn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void destroy() {
        zza(2, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        Parcel parcelTransactAndReadException = transactAndReadException(37, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfp.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getAdUnitId() {
        Parcel parcelTransactAndReadException = transactAndReadException(31, obtainAndWriteInterfaceToken());
        String string = parcelTransactAndReadException.readString();
        parcelTransactAndReadException.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getMediationAdapterClassName() {
        Parcel parcelTransactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        String string = parcelTransactAndReadException.readString();
        parcelTransactAndReadException.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzwr getVideoController() {
        zzwr zzwtVar;
        Parcel parcelTransactAndReadException = transactAndReadException(26, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzwtVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzwtVar = iInterfaceQueryLocalInterface instanceof zzwr ? (zzwr) iInterfaceQueryLocalInterface : new zzwt(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isLoading() {
        Parcel parcelTransactAndReadException = transactAndReadException(23, obtainAndWriteInterfaceToken());
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isReady() {
        Parcel parcelTransactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void pause() {
        zza(5, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void resume() {
        zza(6, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setImmersiveMode(boolean z) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.writeBoolean(parcelObtainAndWriteInterfaceToken, z);
        zza(34, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setManualImpressionsEnabled(boolean z) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.writeBoolean(parcelObtainAndWriteInterfaceToken, z);
        zza(22, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setUserId(String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(25, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void showInterstitial() {
        zza(9, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void stopLoading() {
        zza(10, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaah zzaahVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaahVar);
        zza(19, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzant zzantVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzantVar);
        zza(14, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzanz zzanzVar, String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzanzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(15, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaqi zzaqiVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaqiVar);
        zza(24, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzqx zzqxVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzqxVar);
        zza(40, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzua zzuaVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        zza(13, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzufVar);
        zza(39, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuxVar);
        zza(20, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuyVar);
        zza(7, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzvoVar);
        zza(36, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzvtVar);
        zza(8, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvz zzvzVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzvzVar);
        zza(21, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzwxVar);
        zza(30, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzyj zzyjVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzyjVar);
        zza(29, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean zza(zztx zztxVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        Parcel parcelTransactAndReadException = transactAndReadException(4, parcelObtainAndWriteInterfaceToken);
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(38, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        Parcel parcelTransactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzjs() {
        zza(11, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzua zzjt() {
        Parcel parcelTransactAndReadException = transactAndReadException(12, obtainAndWriteInterfaceToken());
        zzua zzuaVar = (zzua) zzfp.zza(parcelTransactAndReadException, zzua.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzuaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String zzju() {
        Parcel parcelTransactAndReadException = transactAndReadException(35, obtainAndWriteInterfaceToken());
        String string = parcelTransactAndReadException.readString();
        parcelTransactAndReadException.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        zzvt zzvvVar;
        Parcel parcelTransactAndReadException = transactAndReadException(32, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvvVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzvvVar = iInterfaceQueryLocalInterface instanceof zzvt ? (zzvt) iInterfaceQueryLocalInterface : new zzvv(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        zzuy zzvaVar;
        Parcel parcelTransactAndReadException = transactAndReadException(33, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvaVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzvaVar = iInterfaceQueryLocalInterface instanceof zzuy ? (zzuy) iInterfaceQueryLocalInterface : new zzva(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvaVar;
    }
}
