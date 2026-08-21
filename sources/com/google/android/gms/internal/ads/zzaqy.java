package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaqy extends zzfm implements zzaqv {
    public zzaqy() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    public static zzaqv zzal(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        return iInterfaceQueryLocalInterface instanceof zzaqv ? (zzaqv) iInterfaceQueryLocalInterface : new zzaqx(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            String type = getType();
            parcel2.writeNoException();
            parcel2.writeString(type);
        } else {
            if (i2 != 2) {
                return false;
            }
            int amount = getAmount();
            parcel2.writeNoException();
            parcel2.writeInt(amount);
        }
        return true;
    }
}
