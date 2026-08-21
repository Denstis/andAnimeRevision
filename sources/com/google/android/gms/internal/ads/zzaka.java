package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaka extends zzfn implements zzajy {
    zzaka(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void destroy() {
        zza(5, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle getInterstitialAdapterInfo() {
        Parcel parcelTransactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfp.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzwr getVideoController() {
        Parcel parcelTransactAndReadException = transactAndReadException(26, obtainAndWriteInterfaceToken());
        zzwr zzwrVarZzi = zzwq.zzi(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzwrVarZzi;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final boolean isInitialized() {
        Parcel parcelTransactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken());
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void pause() {
        zza(8, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void resume() {
        zza(9, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void setImmersiveMode(boolean z) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.writeBoolean(parcelObtainAndWriteInterfaceToken, z);
        zza(25, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void showInterstitial() {
        zza(4, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void showVideo() {
        zza(12, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzaft zzaftVar, List<zzagb> list) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaftVar);
        parcelObtainAndWriteInterfaceToken.writeTypedList(list);
        zza(31, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzaqp zzaqpVar, List<String> list) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaqpVar);
        parcelObtainAndWriteInterfaceToken.writeStringList(list);
        zza(23, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(3, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzaqp zzaqpVar, String str2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaqpVar);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zza(10, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(7, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar, zzaay zzaayVar, List<String> list) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzaayVar);
        parcelObtainAndWriteInterfaceToken.writeStringList(list);
        zza(14, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, String str2, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(6, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zztx zztxVar, String str) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(11, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zztx zztxVar, String str, String str2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zza(20, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zztxVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzakdVar);
        zza(28, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final IObjectWrapper zzro() {
        Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakg zzrp() {
        zzakg zzakiVar;
        Parcel parcelTransactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzakiVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzakiVar = iInterfaceQueryLocalInterface instanceof zzakg ? (zzakg) iInterfaceQueryLocalInterface : new zzaki(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzakiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakl zzrq() {
        zzakl zzaknVar;
        Parcel parcelTransactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzaknVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzaknVar = iInterfaceQueryLocalInterface instanceof zzakl ? (zzakl) iInterfaceQueryLocalInterface : new zzakn(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzaknVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle zzrr() {
        Parcel parcelTransactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfp.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle zzrs() {
        Parcel parcelTransactAndReadException = transactAndReadException(19, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfp.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final boolean zzrt() {
        Parcel parcelTransactAndReadException = transactAndReadException(22, obtainAndWriteInterfaceToken());
        boolean zZza = zzfp.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzace zzru() {
        Parcel parcelTransactAndReadException = transactAndReadException(24, obtainAndWriteInterfaceToken());
        zzace zzaceVarZzp = zzach.zzp(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaceVarZzp;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakm zzrv() {
        zzakm zzakoVar;
        Parcel parcelTransactAndReadException = transactAndReadException(27, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzakoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzakoVar = iInterfaceQueryLocalInterface instanceof zzakm ? (zzakm) iInterfaceQueryLocalInterface : new zzako(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzakoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(21, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzx(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(30, parcelObtainAndWriteInterfaceToken);
    }
}
