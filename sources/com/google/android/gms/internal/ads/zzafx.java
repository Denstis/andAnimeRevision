package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzafx extends zzfm implements zzafu {
    public zzafx() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzafu zzy(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return iInterfaceQueryLocalInterface instanceof zzafu ? (zzafu) iInterfaceQueryLocalInterface : new zzafw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zzc(parcel.createTypedArrayList(zzafr.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
