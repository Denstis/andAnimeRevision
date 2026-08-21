package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "InterstitialAdParameterParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzj();

    @SafeParcelable.Field(id = 2)
    public final boolean zzbkw;

    @SafeParcelable.Field(id = 3)
    public final boolean zzbkx;

    @SafeParcelable.Field(id = 4)
    private final String zzbky;

    @SafeParcelable.Field(id = 5)
    public final boolean zzbkz;

    @SafeParcelable.Field(id = 6)
    public final float zzbla;

    @SafeParcelable.Field(id = 7)
    public final int zzblb;

    @SafeParcelable.Field(id = 8)
    public final boolean zzblc;

    @SafeParcelable.Field(id = 9)
    public final boolean zzbld;

    @SafeParcelable.Field(id = 10)
    public final boolean zzble;

    @SafeParcelable.Constructor
    zzg(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) boolean z3, @SafeParcelable.Param(id = 6) float f2, @SafeParcelable.Param(id = 7) int i2, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) boolean z5, @SafeParcelable.Param(id = 10) boolean z6) {
        this.zzbkw = z;
        this.zzbkx = z2;
        this.zzbky = str;
        this.zzbkz = z3;
        this.zzbla = f2;
        this.zzblb = i2;
        this.zzblc = z4;
        this.zzbld = z5;
        this.zzble = z6;
    }

    public zzg(boolean z, boolean z2, boolean z3, float f2, int i2, boolean z4, boolean z5, boolean z6) {
        this(false, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzbkw);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzbkx);
        SafeParcelWriter.writeString(parcel, 4, this.zzbky, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzbkz);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzbla);
        SafeParcelWriter.writeInt(parcel, 7, this.zzblb);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzblc);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzbld);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzble);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
