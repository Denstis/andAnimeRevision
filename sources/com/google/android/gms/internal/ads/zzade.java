package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzade extends zzfm implements zzadf {
    public zzade() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onUnconfirmedClickReceived(parcel.readString());
        } else {
            if (i2 != 2) {
                return false;
            }
            onUnconfirmedClickCancelled();
        }
        parcel2.writeNoException();
        return true;
    }
}
