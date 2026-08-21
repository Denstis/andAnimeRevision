package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzu extends zza implements zzs {
    zzu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final int zza() {
        Parcel parcelZza = zza(2, a_());
        int i2 = parcelZza.readInt();
        parcelZza.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zza(String str, String str2, Bundle bundle, long j2) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzb.zza(parcelA_, bundle);
        parcelA_.writeLong(j2);
        zzb(1, parcelA_);
    }
}
