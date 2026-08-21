package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdRequestParcelCreator")
public final class zztx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztx> CREATOR = new zztz();

    @SafeParcelable.Field(id = 3)
    public final Bundle extras;

    @SafeParcelable.Field(id = 1)
    public final int versionCode;

    @SafeParcelable.Field(id = 7)
    public final int zzabj;

    @SafeParcelable.Field(id = 20)
    public final int zzabk;

    @SafeParcelable.Field(id = 21)
    public final String zzabl;

    @SafeParcelable.Field(id = 8)
    public final boolean zzbkg;

    @SafeParcelable.Field(id = 2)
    @Deprecated
    public final long zzcbx;

    @SafeParcelable.Field(id = 4)
    @Deprecated
    public final int zzcby;

    @SafeParcelable.Field(id = 5)
    public final List<String> zzcbz;

    @SafeParcelable.Field(id = 6)
    public final boolean zzcca;

    @SafeParcelable.Field(id = 9)
    public final String zzccb;

    @SafeParcelable.Field(id = 10)
    public final zzyf zzccc;

    @SafeParcelable.Field(id = 12)
    public final String zzccd;

    @SafeParcelable.Field(id = 13)
    public final Bundle zzcce;

    @SafeParcelable.Field(id = 14)
    public final Bundle zzccf;

    @SafeParcelable.Field(id = 15)
    public final List<String> zzccg;

    @SafeParcelable.Field(id = 16)
    public final String zzcch;

    @SafeParcelable.Field(id = 17)
    public final String zzcci;

    @SafeParcelable.Field(id = 18)
    @Deprecated
    public final boolean zzccj;

    @SafeParcelable.Field(id = 19)
    public final zztr zzcck;

    @SafeParcelable.Field(id = 11)
    public final Location zzng;

    @SafeParcelable.Constructor
    public zztx(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) Bundle bundle, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) String str, @SafeParcelable.Param(id = 10) zzyf zzyfVar, @SafeParcelable.Param(id = 11) Location location, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 13) Bundle bundle2, @SafeParcelable.Param(id = 14) Bundle bundle3, @SafeParcelable.Param(id = 15) List<String> list2, @SafeParcelable.Param(id = 16) String str3, @SafeParcelable.Param(id = 17) String str4, @SafeParcelable.Param(id = 18) boolean z3, @SafeParcelable.Param(id = 19) zztr zztrVar, @SafeParcelable.Param(id = 20) int i5, @SafeParcelable.Param(id = 21) String str5) {
        this.versionCode = i2;
        this.zzcbx = j2;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzcby = i3;
        this.zzcbz = list;
        this.zzcca = z;
        this.zzabj = i4;
        this.zzbkg = z2;
        this.zzccb = str;
        this.zzccc = zzyfVar;
        this.zzng = location;
        this.zzccd = str2;
        this.zzcce = bundle2 == null ? new Bundle() : bundle2;
        this.zzccf = bundle3;
        this.zzccg = list2;
        this.zzcch = str3;
        this.zzcci = str4;
        this.zzccj = z3;
        this.zzcck = zztrVar;
        this.zzabk = i5;
        this.zzabl = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zztx)) {
            return false;
        }
        zztx zztxVar = (zztx) obj;
        return this.versionCode == zztxVar.versionCode && this.zzcbx == zztxVar.zzcbx && Objects.equal(this.extras, zztxVar.extras) && this.zzcby == zztxVar.zzcby && Objects.equal(this.zzcbz, zztxVar.zzcbz) && this.zzcca == zztxVar.zzcca && this.zzabj == zztxVar.zzabj && this.zzbkg == zztxVar.zzbkg && Objects.equal(this.zzccb, zztxVar.zzccb) && Objects.equal(this.zzccc, zztxVar.zzccc) && Objects.equal(this.zzng, zztxVar.zzng) && Objects.equal(this.zzccd, zztxVar.zzccd) && Objects.equal(this.zzcce, zztxVar.zzcce) && Objects.equal(this.zzccf, zztxVar.zzccf) && Objects.equal(this.zzccg, zztxVar.zzccg) && Objects.equal(this.zzcch, zztxVar.zzcch) && Objects.equal(this.zzcci, zztxVar.zzcci) && this.zzccj == zztxVar.zzccj && this.zzabk == zztxVar.zzabk && Objects.equal(this.zzabl, zztxVar.zzabl);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzcbx), this.extras, Integer.valueOf(this.zzcby), this.zzcbz, Boolean.valueOf(this.zzcca), Integer.valueOf(this.zzabj), Boolean.valueOf(this.zzbkg), this.zzccb, this.zzccc, this.zzng, this.zzccd, this.zzcce, this.zzccf, this.zzccg, this.zzcch, this.zzcci, Boolean.valueOf(this.zzccj), Integer.valueOf(this.zzabk), this.zzabl);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeLong(parcel, 2, this.zzcbx);
        SafeParcelWriter.writeBundle(parcel, 3, this.extras, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzcby);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzcbz, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzcca);
        SafeParcelWriter.writeInt(parcel, 7, this.zzabj);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbkg);
        SafeParcelWriter.writeString(parcel, 9, this.zzccb, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzccc, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzng, i2, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzccd, false);
        SafeParcelWriter.writeBundle(parcel, 13, this.zzcce, false);
        SafeParcelWriter.writeBundle(parcel, 14, this.zzccf, false);
        SafeParcelWriter.writeStringList(parcel, 15, this.zzccg, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzcch, false);
        SafeParcelWriter.writeString(parcel, 17, this.zzcci, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzccj);
        SafeParcelWriter.writeParcelable(parcel, 19, this.zzcck, i2, false);
        SafeParcelWriter.writeInt(parcel, 20, this.zzabk);
        SafeParcelWriter.writeString(parcel, 21, this.zzabl, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
