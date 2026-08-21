package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzati extends zzfm implements zzatf {
    public zzati() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzatd zzatgVar;
        if (i2 != 1) {
            return false;
        }
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        zzath zzathVar = (zzath) zzfp.zza(parcel, zzath.CREATOR);
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzatgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
            zzatgVar = iInterfaceQueryLocalInterface instanceof zzatd ? (zzatd) iInterfaceQueryLocalInterface : new zzatg(strongBinder);
        }
        zza(iObjectWrapperAsInterface, zzathVar, zzatgVar);
        parcel2.writeNoException();
        return true;
    }
}
