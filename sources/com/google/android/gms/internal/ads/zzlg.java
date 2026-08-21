package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzlg implements Parcelable.Creator<zzld> {
    zzlg() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzld createFromParcel(Parcel parcel) {
        return new zzld(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzld[] newArray(int i2) {
        return new zzld[i2];
    }
}
