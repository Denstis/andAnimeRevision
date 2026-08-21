package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AutoClickProtectionConfigurationParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzaop extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaop> CREATOR = new zzaos();

    @SafeParcelable.Field(id = 2)
    public final boolean zzdlt;

    @SafeParcelable.Field(id = 3)
    public final List<String> zzdlu;

    public zzaop() {
        this(false, Collections.emptyList());
    }

    @SafeParcelable.Constructor
    public zzaop(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) List<String> list) {
        this.zzdlt = z;
        this.zzdlu = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzdlt);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzdlu, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
