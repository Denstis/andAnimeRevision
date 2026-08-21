package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzzj extends zzfm implements zzzg {
    public zzzj() {
        super("com.google.android.gms.ads.internal.consent.IConsentSdkUtil");
    }

    public static zzzg zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.consent.IConsentSdkUtil");
        return iInterfaceQueryLocalInterface instanceof zzzg ? (zzzg) iInterfaceQueryLocalInterface : new zzzi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzzf zzzhVar;
        if (i2 == 2) {
            zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
        } else {
            if (i2 != 3) {
                return false;
            }
            Bundle bundle = (Bundle) zzfp.zza(parcel, Bundle.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzzhVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.consent.IConsentCallback");
                zzzhVar = iInterfaceQueryLocalInterface instanceof zzzf ? (zzzf) iInterfaceQueryLocalInterface : new zzzh(strongBinder);
            }
            zza(bundle, zzzhVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
