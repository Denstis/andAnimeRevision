package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzvx extends zzfm implements zzvu {
    public zzvx() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        IInterface iInterfaceZza;
        switch (i2) {
            case 1:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR), parcel.readString(), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 2:
                iInterfaceZza = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR), parcel.readString(), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 4:
                iInterfaceZza = zzg(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 5:
                iInterfaceZza = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 6:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 7:
                iInterfaceZza = zzh(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 8:
                iInterfaceZza = zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 9:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR), parcel.readString(), parcel.readInt());
                break;
            case 11:
                iInterfaceZza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 12:
                iInterfaceZza = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 13:
                iInterfaceZza = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR), parcel.readString(), zzajw.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        zzfp.zza(parcel2, iInterfaceZza);
        return true;
    }
}
