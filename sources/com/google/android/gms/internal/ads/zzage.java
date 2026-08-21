package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzage extends zzfm implements zzagf {
    public zzage() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzagh zzaggVar;
        if (i2 == 3) {
            zzwr videoController = getVideoController();
            parcel2.writeNoException();
            zzfp.zza(parcel2, videoController);
            return true;
        }
        if (i2 == 4) {
            destroy();
        } else {
            if (i2 != 5) {
                return false;
            }
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzaggVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzaggVar = iInterfaceQueryLocalInterface instanceof zzagh ? (zzagh) iInterfaceQueryLocalInterface : new zzagg(strongBinder);
            }
            zza(iObjectWrapperAsInterface, zzaggVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
