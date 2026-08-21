package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdapterStatusParcelCreator")
public final class zzafr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzafr> CREATOR = new zzafq();

    @SafeParcelable.Field(id = 4)
    public final String description;

    @SafeParcelable.Field(id = 1)
    public final String zzcyn;

    @SafeParcelable.Field(id = 2)
    public final boolean zzcyo;

    @SafeParcelable.Field(id = 3)
    public final int zzcyp;

    @SafeParcelable.Constructor
    public zzafr(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) String str2) {
        this.zzcyn = str;
        this.zzcyo = z;
        this.zzcyp = i2;
        this.description = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzcyn, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzcyo);
        SafeParcelWriter.writeInt(parcel, 3, this.zzcyp);
        SafeParcelWriter.writeString(parcel, 4, this.description, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
