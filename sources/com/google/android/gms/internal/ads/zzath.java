package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "SignalConfigurationParcelCreator")
public final class zzath extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzath> CREATOR = new zzatk();

    @SafeParcelable.Field(id = 2)
    public final String zzblw;

    @SafeParcelable.Field(id = 1)
    public final String zzbqy;

    @SafeParcelable.Field(id = 3)
    public final zzua zzdpz;

    @SafeParcelable.Constructor
    public zzath(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) zzua zzuaVar) {
        this.zzbqy = str;
        this.zzblw = str2;
        this.zzdpz = zzuaVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzbqy, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzblw, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzdpz, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
