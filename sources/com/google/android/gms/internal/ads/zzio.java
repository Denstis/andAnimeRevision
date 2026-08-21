package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzin;

/* JADX INFO: loaded from: classes.dex */
final class zzio implements Parcelable.Creator<zzin.zza> {
    zzio() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzin.zza createFromParcel(Parcel parcel) {
        return new zzin.zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzin.zza[] newArray(int i2) {
        return new zzin.zza[i2];
    }
}
