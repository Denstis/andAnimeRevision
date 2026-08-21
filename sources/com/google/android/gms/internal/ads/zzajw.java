package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzajw extends zzfm implements zzajx {
    public zzajw() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzajx zzaa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return iInterfaceQueryLocalInterface instanceof zzajx ? (zzajx) iInterfaceQueryLocalInterface : new zzajz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        IInterface iInterfaceZzcz;
        if (i2 == 1) {
            iInterfaceZzcz = zzcz(parcel.readString());
        } else {
            if (i2 == 2) {
                boolean zZzda = zzda(parcel.readString());
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzda);
                return true;
            }
            if (i2 != 3) {
                return false;
            }
            iInterfaceZzcz = zzdd(parcel.readString());
        }
        parcel2.writeNoException();
        zzfp.zza(parcel2, iInterfaceZzcz);
        return true;
    }
}
