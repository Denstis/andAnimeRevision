package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "NativeAdOptionsParcelCreator")
public final class zzaay extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaay> CREATOR = new zzabb();

    @SafeParcelable.Field(id = 1)
    public final int versionCode;

    @SafeParcelable.Field(id = 3)
    public final int zzbjv;

    @SafeParcelable.Field(id = 8)
    public final int zzbjw;

    @SafeParcelable.Field(id = 4)
    public final boolean zzbjx;

    @SafeParcelable.Field(id = 5)
    public final int zzbjy;

    @SafeParcelable.Field(id = 7)
    public final boolean zzbka;

    @SafeParcelable.Field(id = 2)
    public final boolean zzcvz;

    @SafeParcelable.Field(id = 6)
    public final zzyj zzcwa;

    @SafeParcelable.Constructor
    public zzaay(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) int i4, @SafeParcelable.Param(id = 6) zzyj zzyjVar, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) int i5) {
        this.versionCode = i2;
        this.zzcvz = z;
        this.zzbjv = i3;
        this.zzbjx = z2;
        this.zzbjy = i4;
        this.zzcwa = zzyjVar;
        this.zzbka = z3;
        this.zzbjw = i5;
    }

    public zzaay(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzyj(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzje(), nativeAdOptions.getMediaAspectRatio());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzcvz);
        SafeParcelWriter.writeInt(parcel, 3, this.zzbjv);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzbjx);
        SafeParcelWriter.writeInt(parcel, 5, this.zzbjy);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzcwa, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzbka);
        SafeParcelWriter.writeInt(parcel, 8, this.zzbjw);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
