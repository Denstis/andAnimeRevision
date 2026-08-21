package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzvc extends zzfm implements zzvd {
    public zzvc() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String mediationAdapterClassName;
        if (i2 != 1) {
            if (i2 == 2) {
                mediationAdapterClassName = getMediationAdapterClassName();
            } else {
                if (i2 == 3) {
                    boolean zIsLoading = isLoading();
                    parcel2.writeNoException();
                    zzfp.writeBoolean(parcel2, zIsLoading);
                    return true;
                }
                if (i2 == 4) {
                    mediationAdapterClassName = zzju();
                } else {
                    if (i2 != 5) {
                        return false;
                    }
                    zza((zztx) zzfp.zza(parcel, zztx.CREATOR), parcel.readInt());
                }
            }
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
            return true;
        }
        zzb((zztx) zzfp.zza(parcel, zztx.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
