package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzwl extends zzfm implements zzwi {
    public zzwl() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    public static zzwi zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return iInterfaceQueryLocalInterface instanceof zzwi ? (zzwi) iInterfaceQueryLocalInterface : new zzwk(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String description;
        if (i2 == 1) {
            description = getDescription();
        } else {
            if (i2 != 2) {
                return false;
            }
            description = zzov();
        }
        parcel2.writeNoException();
        parcel2.writeString(description);
        return true;
    }
}
