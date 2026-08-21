package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzp extends zza implements zzn {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public final void zza(Bundle bundle) {
        Parcel parcelA_ = a_();
        zzb.zza(parcelA_, bundle);
        zzb(1, parcelA_);
    }
}
