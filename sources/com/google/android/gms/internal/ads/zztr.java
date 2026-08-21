package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdDataParcelCreator")
public final class zztr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztr> CREATOR = new zztq();

    @SafeParcelable.Field(id = 1)
    public final String zzcbt;

    @SafeParcelable.Field(id = 2)
    public final String zzcbu;

    @SafeParcelable.Constructor
    public zztr(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.zzcbt = str;
        this.zzcbu = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzcbt, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzcbu, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
