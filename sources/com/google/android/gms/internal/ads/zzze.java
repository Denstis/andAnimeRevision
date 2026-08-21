package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzze extends zzfm implements zzzf {
    public zzze() {
        super("com.google.android.gms.ads.internal.consent.IConsentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 2) {
            onSuccess(parcel.readString());
            return true;
        }
        if (i2 != 3) {
            return false;
        }
        onFailure(parcel.readInt());
        return true;
    }
}
