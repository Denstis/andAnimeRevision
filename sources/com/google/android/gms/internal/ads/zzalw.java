package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzalw extends zzfm implements zzalx {
    public zzalw() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zza(zzakp.zzac(parcel.readStrongBinder()));
        } else {
            if (i2 != 2) {
                return false;
            }
            zzdg(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
