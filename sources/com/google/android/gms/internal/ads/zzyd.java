package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "RequestConfigurationParcelCreator")
public final class zzyd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyd> CREATOR = new zzyc();

    @SafeParcelable.Field(id = 1)
    private final int zzabj;

    @SafeParcelable.Field(id = 2)
    private final int zzabk;

    @SafeParcelable.Constructor
    public zzyd(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3) {
        this.zzabj = i2;
        this.zzabk = i3;
    }

    public zzyd(RequestConfiguration requestConfiguration) {
        this.zzabj = requestConfiguration.getTagForChildDirectedTreatment();
        this.zzabk = requestConfiguration.getTagForUnderAgeOfConsent();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzabj);
        SafeParcelWriter.writeInt(parcel, 2, this.zzabk);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
