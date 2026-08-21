package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AppOpenAdOptionsParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzuf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuf> CREATOR = new zzue();

    @AppOpenAd.AppOpenAdOrientation
    @SafeParcelable.Field(id = 2)
    public final int orientation;

    @SafeParcelable.Constructor
    public zzuf(@SafeParcelable.Param(id = 2) @AppOpenAd.AppOpenAdOrientation int i2) {
        this.orientation = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.orientation);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
