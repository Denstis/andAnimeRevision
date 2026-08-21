package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
final class zzkw implements Parcelable.Creator<zzkx> {
    zzkw() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkx createFromParcel(Parcel parcel) {
        return new zzkx(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkx[] newArray(int i2) {
        return new zzkx[0];
    }
}
