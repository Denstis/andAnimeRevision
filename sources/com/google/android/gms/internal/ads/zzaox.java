package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaox extends zzfm implements zzaoy {
    public zzaox() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzb((ParcelFileDescriptor) zzfp.zza(parcel, ParcelFileDescriptor.CREATOR));
        } else {
            if (i2 != 2) {
                return false;
            }
            zza((zzavq) zzfp.zza(parcel, zzavq.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
