package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzoj implements Parcelable.Creator<zzok> {
    zzoj() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzok createFromParcel(Parcel parcel) {
        return new zzok(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzok[] newArray(int i2) {
        return new zzok[0];
    }
}
