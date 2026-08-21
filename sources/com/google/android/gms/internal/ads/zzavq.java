package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "ExceptionParcelCreator")
public final class zzavq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavq> CREATOR = new zzavs();

    @SafeParcelable.Field(id = 2)
    public final int errorCode;

    @SafeParcelable.Field(id = 1)
    public final String zzdtw;

    @SafeParcelable.Constructor
    zzavq(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i2) {
        this.zzdtw = str == null ? "" : str;
        this.errorCode = i2;
    }

    public static zzavq zza(Throwable th, int i2) {
        return new zzavq(th.getMessage(), i2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdtw, false);
        SafeParcelWriter.writeInt(parcel, 2, this.errorCode);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
