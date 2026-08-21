package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzim implements Parcelable.Creator<zzin> {
    zzim() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzin createFromParcel(Parcel parcel) {
        return new zzin(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzin[] newArray(int i2) {
        return new zzin[i2];
    }
}
