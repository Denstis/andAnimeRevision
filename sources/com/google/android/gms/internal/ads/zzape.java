package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "NonagonRequestParcelCreator")
public final class zzape extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzape> CREATOR = new zzapd();

    @SafeParcelable.Field(id = 3)
    public final ApplicationInfo applicationInfo;

    @SafeParcelable.Field(id = 4)
    public final String packageName;

    @SafeParcelable.Field(id = 2)
    public final zzaxl zzdio;

    @SafeParcelable.Field(id = 6)
    public final PackageInfo zzdiv;

    @SafeParcelable.Field(id = 5)
    public final List<String> zzdjf;

    @SafeParcelable.Field(id = 7)
    public final String zzdjp;

    @SafeParcelable.Field(id = 1)
    public final Bundle zzdma;

    @SafeParcelable.Field(id = 8)
    public final boolean zzdmb;

    @SafeParcelable.Field(id = 9)
    public final String zzdmc;

    @SafeParcelable.Constructor
    public zzape(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) zzaxl zzaxlVar, @SafeParcelable.Param(id = 3) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) PackageInfo packageInfo, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str3) {
        this.zzdma = bundle;
        this.zzdio = zzaxlVar;
        this.packageName = str;
        this.applicationInfo = applicationInfo;
        this.zzdjf = list;
        this.zzdiv = packageInfo;
        this.zzdjp = str2;
        this.zzdmb = z;
        this.zzdmc = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zzdma, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdio, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.applicationInfo, i2, false);
        SafeParcelWriter.writeString(parcel, 4, this.packageName, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzdjf, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzdiv, i2, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdjp, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdmb);
        SafeParcelWriter.writeString(parcel, 9, this.zzdmc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
