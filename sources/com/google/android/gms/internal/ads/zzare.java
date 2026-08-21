package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzare extends zzfm implements zzarb {
    public zzare() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzaqv zzaqxVar;
        if (i2 == 1) {
            onRewardedAdOpened();
        } else if (i2 == 2) {
            onRewardedAdClosed();
        } else if (i2 == 3) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzaqxVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                zzaqxVar = iInterfaceQueryLocalInterface instanceof zzaqv ? (zzaqv) iInterfaceQueryLocalInterface : new zzaqx(strongBinder);
            }
            zza(zzaqxVar);
        } else {
            if (i2 != 4) {
                return false;
            }
            onRewardedAdFailedToShow(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
