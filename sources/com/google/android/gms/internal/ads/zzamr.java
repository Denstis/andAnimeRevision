package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "RtbVersionInfoParcelCreator")
public final class zzamr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzamr> CREATOR = new zzamq();

    @SafeParcelable.Field(id = 1)
    private final int major;

    @SafeParcelable.Field(id = 2)
    private final int minor;

    @SafeParcelable.Field(id = 3)
    private final int zzdfd;

    @SafeParcelable.Constructor
    zzamr(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) int i4) {
        this.major = i2;
        this.minor = i3;
        this.zzdfd = i4;
    }

    public static zzamr zza(VersionInfo versionInfo) {
        return new zzamr(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final String toString() {
        int i2 = this.major;
        int i3 = this.minor;
        int i4 = this.zzdfd;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        sb.append(".");
        sb.append(i4);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.major);
        SafeParcelWriter.writeInt(parcel, 2, this.minor);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdfd);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
