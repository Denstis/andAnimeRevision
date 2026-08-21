package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzqv extends zzfm implements zzqw {
    public zzqv() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzrc zzreVar;
        if (i2 == 2) {
            zzvl zzvlVarZzdg = zzdg();
            parcel2.writeNoException();
            zzfp.zza(parcel2, zzvlVarZzdg);
            return true;
        }
        if (i2 != 3) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzreVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
            zzreVar = iInterfaceQueryLocalInterface instanceof zzrc ? (zzrc) iInterfaceQueryLocalInterface : new zzre(strongBinder);
        }
        zza(zzreVar);
        parcel2.writeNoException();
        return true;
    }
}
