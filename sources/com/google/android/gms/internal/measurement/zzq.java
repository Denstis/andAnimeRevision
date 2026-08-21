package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzq extends zzc implements zzn {
    public zzq() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zza((Bundle) zzb.zza(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
