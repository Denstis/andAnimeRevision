package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzla implements Parcelable.Creator<zzky> {
    zzla() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzky createFromParcel(Parcel parcel) {
        return new zzky(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzky[] newArray(int i2) {
        return new zzky[i2];
    }
}
