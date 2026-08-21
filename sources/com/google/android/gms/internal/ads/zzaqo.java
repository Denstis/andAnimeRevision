package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "RewardedVideoAdRequestParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzaqo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqo> CREATOR = new zzaqn();

    @SafeParcelable.Field(id = 3)
    public final String zzbqy;

    @SafeParcelable.Field(id = 2)
    public final zztx zzdiu;

    @SafeParcelable.Constructor
    public zzaqo(@SafeParcelable.Param(id = 2) zztx zztxVar, @SafeParcelable.Param(id = 3) String str) {
        this.zzdiu = zztxVar;
        this.zzbqy = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdiu, i2, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzbqy, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
