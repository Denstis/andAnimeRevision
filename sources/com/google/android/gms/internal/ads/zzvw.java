package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzvw extends zzfn implements zzvu {
    zzvw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzabt zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper2);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper3);
        Parcel parcelTransactAndReadException = transactAndReadException(11, parcelObtainAndWriteInterfaceToken);
        zzabt zzabtVarZzo = zzabs.zzo(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzabtVarZzo;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzaqb zza(IObjectWrapper iObjectWrapper, zzajx zzajxVar, int i2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(6, parcelObtainAndWriteInterfaceToken);
        zzaqb zzaqbVarZzai = zzaqe.zzai(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaqbVarZzai;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzve zza(IObjectWrapper iObjectWrapper, String str, zzajx zzajxVar, int i2) {
        zzve zzvgVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(3, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzvgVar = iInterfaceQueryLocalInterface instanceof zzve ? (zzve) iInterfaceQueryLocalInterface : new zzvg(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, int i2) {
        zzvl zzvnVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(10, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvnVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvnVar = iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        zzvl zzvnVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvnVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvnVar = iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwb zza(IObjectWrapper iObjectWrapper, int i2) {
        zzwb zzwdVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(9, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzwdVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzwdVar = iInterfaceQueryLocalInterface instanceof zzwb ? (zzwb) iInterfaceQueryLocalInterface : new zzwd(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzwdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzara zzb(IObjectWrapper iObjectWrapper, String str, zzajx zzajxVar, int i2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(12, parcelObtainAndWriteInterfaceToken);
        zzara zzaraVarZzam = zzaqz.zzam(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaraVarZzam;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zzb(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        zzvl zzvnVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(2, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvnVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvnVar = iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzabm zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper2);
        Parcel parcelTransactAndReadException = transactAndReadException(5, parcelObtainAndWriteInterfaceToken);
        zzabm zzabmVarZzn = zzabp.zzn(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzabmVarZzn;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zzc(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        zzvl zzvnVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzuaVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfp.zza(parcelObtainAndWriteInterfaceToken, zzajxVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i2);
        Parcel parcelTransactAndReadException = transactAndReadException(13, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzvnVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzvnVar = iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzano zzf(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(8, parcelObtainAndWriteInterfaceToken);
        zzano zzanoVarZzae = zzann.zzae(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzanoVarZzae;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwb zzg(IObjectWrapper iObjectWrapper) {
        zzwb zzwdVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(4, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzwdVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzwdVar = iInterfaceQueryLocalInterface instanceof zzwb ? (zzwb) iInterfaceQueryLocalInterface : new zzwd(strongBinder);
        }
        parcelTransactAndReadException.recycle();
        return zzwdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzany zzh(IObjectWrapper iObjectWrapper) {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfp.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(7, parcelObtainAndWriteInterfaceToken);
        zzany zzanyVarZzag = zzanx.zzag(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzanyVarZzag;
    }
}
