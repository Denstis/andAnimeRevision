package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzabp extends zzfm implements zzabm {
    public zzabp() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzabm zzn(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return iInterfaceQueryLocalInterface instanceof zzabm ? (zzabm) iInterfaceQueryLocalInterface : new zzabo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzabh zzabjVar;
        switch (i2) {
            case 1:
                zzc(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 2:
                IObjectWrapper iObjectWrapperZzcj = zzcj(parcel.readString());
                parcel2.writeNoException();
                zzfp.zza(parcel2, iObjectWrapperZzcj);
                return true;
            case 3:
                zze(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 4:
                destroy();
                break;
            case 5:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 6:
                zzi(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 7:
                zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzabjVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    zzabjVar = iInterfaceQueryLocalInterface instanceof zzabh ? (zzabh) iInterfaceQueryLocalInterface : new zzabj(strongBinder);
                }
                zza(zzabjVar);
                break;
            case 9:
                zzk(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
