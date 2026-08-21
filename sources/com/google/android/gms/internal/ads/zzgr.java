package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzgr implements Parcelable.Creator<zzgo> {
    zzgr() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgo createFromParcel(Parcel parcel) {
        return new zzgo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgo[] newArray(int i2) {
        return new zzgo[i2];
    }
}
