package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "ServerSideVerificationOptionsParcelCreator")
public final class zzarr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzarr> CREATOR = new zzaru();

    @SafeParcelable.Field(id = 1)
    public final String zzdnz;

    @SafeParcelable.Field(id = 2)
    public final String zzdoa;

    public zzarr(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    @SafeParcelable.Constructor
    public zzarr(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.zzdnz = str;
        this.zzdoa = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdnz, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzdoa, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
