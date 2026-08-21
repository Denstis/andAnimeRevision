package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "StringParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzapg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapg> CREATOR = new zzapf();

    @SafeParcelable.Field(id = 2)
    String zzdmd;

    @SafeParcelable.Constructor
    public zzapg(@SafeParcelable.Param(id = 2) String str) {
        this.zzdmd = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdmd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
