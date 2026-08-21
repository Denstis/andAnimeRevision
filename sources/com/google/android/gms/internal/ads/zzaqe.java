package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaqe extends zzfm implements zzaqb {
    public zzaqe() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzaqb zzai(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return iInterfaceQueryLocalInterface instanceof zzaqb ? (zzaqb) iInterfaceQueryLocalInterface : new zzaqd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        boolean zIsLoaded;
        if (i2 == 1) {
            zza((zzaqo) zzfp.zza(parcel, zzaqo.CREATOR));
        } else if (i2 != 2) {
            zzaqi zzaqkVar = null;
            zzapz zzaqcVar = null;
            if (i2 == 3) {
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    zzaqkVar = iInterfaceQueryLocalInterface instanceof zzaqi ? (zzaqi) iInterfaceQueryLocalInterface : new zzaqk(strongBinder);
                }
                zza(zzaqkVar);
            } else {
                if (i2 != 34) {
                    switch (i2) {
                        case 5:
                            zIsLoaded = isLoaded();
                            break;
                        case 6:
                            pause();
                            break;
                        case 7:
                            resume();
                            break;
                        case 8:
                            destroy();
                            break;
                        case 9:
                            zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                            break;
                        case 10:
                            zzo(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                            break;
                        case 11:
                            zzp(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                            break;
                        case 12:
                            String mediationAdapterClassName = getMediationAdapterClassName();
                            parcel2.writeNoException();
                            parcel2.writeString(mediationAdapterClassName);
                            return true;
                        case 13:
                            setUserId(parcel.readString());
                            break;
                        case 14:
                            zza(zzvr.zzd(parcel.readStrongBinder()));
                            break;
                        case 15:
                            Bundle adMetadata = getAdMetadata();
                            parcel2.writeNoException();
                            zzfp.zzb(parcel2, adMetadata);
                            return true;
                        case 16:
                            IBinder strongBinder2 = parcel.readStrongBinder();
                            if (strongBinder2 != null) {
                                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                                zzaqcVar = iInterfaceQueryLocalInterface2 instanceof zzapz ? (zzapz) iInterfaceQueryLocalInterface2 : new zzaqc(strongBinder2);
                            }
                            zza(zzaqcVar);
                            break;
                        case 17:
                            setAppPackageName(parcel.readString());
                            break;
                        case 18:
                            zzm(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                            break;
                        case 19:
                            setCustomData(parcel.readString());
                            break;
                        case 20:
                            zIsLoaded = zzpl();
                            break;
                        default:
                            return false;
                    }
                    parcel2.writeNoException();
                    zzfp.writeBoolean(parcel2, zIsLoaded);
                    return true;
                }
                setImmersiveMode(zzfp.zza(parcel));
            }
        } else {
            show();
        }
        parcel2.writeNoException();
        return true;
    }
}
