package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "VideoOptionsParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzyj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyj> CREATOR = new zzyi();

    @SafeParcelable.Field(id = 2)
    public final boolean zzabp;

    @SafeParcelable.Field(id = 3)
    public final boolean zzabq;

    @SafeParcelable.Field(id = 4)
    public final boolean zzabr;

    public zzyj(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested(), videoOptions.getClickToExpandRequested());
    }

    @SafeParcelable.Constructor
    public zzyj(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) boolean z3) {
        this.zzabp = z;
        this.zzabq = z2;
        this.zzabr = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzabp);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzabq);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzabr);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
