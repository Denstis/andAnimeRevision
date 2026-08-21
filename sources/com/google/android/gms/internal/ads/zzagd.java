package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "InstreamAdConfigurationParcelCreator")
public final class zzagd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzagd> CREATOR = new zzagc();

    @SafeParcelable.Field(id = 1)
    public final int zzcyt;

    @SafeParcelable.Constructor
    public zzagd(@SafeParcelable.Param(id = 1) int i2) {
        this.zzcyt = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzcyt);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
