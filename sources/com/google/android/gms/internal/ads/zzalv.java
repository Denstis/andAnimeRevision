package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzalv extends zzfm implements zzals {
    public zzalv() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 2) {
            zzsf();
        } else {
            if (i2 != 3) {
                return false;
            }
            zzdg(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
