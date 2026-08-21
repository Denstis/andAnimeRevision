package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaqz extends zzfm implements zzara {
    public zzaqz() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzara zzam(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return iInterfaceQueryLocalInterface instanceof zzara ? (zzara) iInterfaceQueryLocalInterface : new zzarc(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzari zzarkVar = null;
        zzarj zzarmVar = null;
        zzarb zzardVar = null;
        switch (i2) {
            case 1:
                zztx zztxVar = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzarkVar = iInterfaceQueryLocalInterface instanceof zzari ? (zzari) iInterfaceQueryLocalInterface : new zzark(strongBinder);
                }
                zza(zztxVar, zzarkVar);
                break;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzardVar = iInterfaceQueryLocalInterface2 instanceof zzarb ? (zzarb) iInterfaceQueryLocalInterface2 : new zzard(strongBinder2);
                }
                zza(zzardVar);
                break;
            case 3:
                boolean zIsLoaded = isLoaded();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zzl(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzarmVar = iInterfaceQueryLocalInterface3 instanceof zzarj ? (zzarj) iInterfaceQueryLocalInterface3 : new zzarm(strongBinder3);
                }
                zza(zzarmVar);
                break;
            case 7:
                zza((zzarr) zzfp.zza(parcel, zzarr.CREATOR));
                break;
            case 8:
                zza(zzwp.zzh(parcel.readStrongBinder()));
                break;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, adMetadata);
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzfp.zza(parcel));
                break;
            case 11:
                zzaqv zzaqvVarZzpk = zzpk();
                parcel2.writeNoException();
                zzfp.zza(parcel2, zzaqvVarZzpk);
                return true;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
