package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "VersionInfoParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzaxl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaxl> CREATOR = new zzaxo();

    @SafeParcelable.Field(id = 2)
    public String zzblz;

    @SafeParcelable.Field(id = 3)
    public int zzdwe;

    @SafeParcelable.Field(id = 4)
    public int zzdwf;

    @SafeParcelable.Field(id = 5)
    public boolean zzdwg;

    @SafeParcelable.Field(id = 6)
    private boolean zzdwh;

    public zzaxl(int i2, int i3, boolean z) {
        this(i2, i3, z, false, false);
    }

    public zzaxl(int i2, int i3, boolean z, boolean z2) {
        this(i2, i3, true, false, false);
    }

    private zzaxl(int i2, int i3, boolean z, boolean z2, boolean z3) {
        String str = z ? "0" : "1";
        StringBuilder sb = new StringBuilder(str.length() + 36);
        sb.append("afma-sdk-a-v");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        sb.append(".");
        sb.append(str);
        this(sb.toString(), i2, i3, z, false);
    }

    @SafeParcelable.Constructor
    zzaxl(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.zzblz = str;
        this.zzdwe = i2;
        this.zzdwf = i3;
        this.zzdwg = z;
        this.zzdwh = z2;
    }

    public static zzaxl zzwo() {
        return new zzaxl(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzblz, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdwe);
        SafeParcelWriter.writeInt(parcel, 4, this.zzdwf);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzdwg);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzdwh);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
