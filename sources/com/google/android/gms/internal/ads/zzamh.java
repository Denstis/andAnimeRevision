package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzamh extends zzfm implements zzame {
    public zzamh() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzdi(parcel.readString());
        } else {
            if (i2 != 2) {
                return false;
            }
            onFailure(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
