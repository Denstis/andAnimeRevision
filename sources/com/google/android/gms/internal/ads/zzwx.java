package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "IconAdOptionsParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzwx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzwx> CREATOR = new zzww();

    @SafeParcelable.Field(id = 2)
    private final int zzcea;

    @SafeParcelable.Constructor
    public zzwx(@SafeParcelable.Param(id = 2) int i2) {
        this.zzcea = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zzcea);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
