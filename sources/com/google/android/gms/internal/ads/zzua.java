package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdSizeParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzua extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzua> CREATOR = new zzud();

    @SafeParcelable.Field(id = 3)
    public final int height;

    @SafeParcelable.Field(id = 4)
    public final int heightPixels;

    @SafeParcelable.Field(id = 6)
    public final int width;

    @SafeParcelable.Field(id = 7)
    public final int widthPixels;

    @SafeParcelable.Field(id = 2)
    public final String zzabd;

    @SafeParcelable.Field(id = 9)
    public final boolean zzbmb;

    @SafeParcelable.Field(id = 5)
    public final boolean zzccm;

    @SafeParcelable.Field(id = 8)
    public final zzua[] zzccn;

    @SafeParcelable.Field(id = 10)
    public final boolean zzcco;

    @SafeParcelable.Field(id = 11)
    public boolean zzccp;

    @SafeParcelable.Field(id = 12)
    public boolean zzccq;

    @SafeParcelable.Field(id = 13)
    private boolean zzccr;

    @SafeParcelable.Field(id = 14)
    public boolean zzccs;

    public zzua() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false);
    }

    public zzua(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzua(android.content.Context r13, com.google.android.gms.ads.AdSize[] r14) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzua.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    @SafeParcelable.Constructor
    zzua(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) int i4, @SafeParcelable.Param(id = 7) int i5, @SafeParcelable.Param(id = 8) zzua[] zzuaVarArr, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) boolean z3, @SafeParcelable.Param(id = 11) boolean z4, @SafeParcelable.Param(id = 12) boolean z5, @SafeParcelable.Param(id = 13) boolean z6, @SafeParcelable.Param(id = 14) boolean z7) {
        this.zzabd = str;
        this.height = i2;
        this.heightPixels = i3;
        this.zzccm = z;
        this.width = i4;
        this.widthPixels = i5;
        this.zzccn = zzuaVarArr;
        this.zzbmb = z2;
        this.zzcco = z3;
        this.zzccp = z4;
        this.zzccq = z5;
        this.zzccr = z6;
        this.zzccs = z7;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (zzd(displayMetrics) * displayMetrics.density);
    }

    private static int zzd(DisplayMetrics displayMetrics) {
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i2 <= 400) {
            return 32;
        }
        return i2 <= 720 ? 50 : 90;
    }

    public static zzua zzg(Context context) {
        return new zzua("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false);
    }

    public static zzua zzoa() {
        return new zzua("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false);
    }

    public static zzua zzob() {
        return new zzua("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false);
    }

    public static zzua zzoc() {
        return new zzua("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzabd, false);
        SafeParcelWriter.writeInt(parcel, 3, this.height);
        SafeParcelWriter.writeInt(parcel, 4, this.heightPixels);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzccm);
        SafeParcelWriter.writeInt(parcel, 6, this.width);
        SafeParcelWriter.writeInt(parcel, 7, this.widthPixels);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzccn, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzbmb);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzcco);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzccp);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzccq);
        SafeParcelWriter.writeBoolean(parcel, 13, this.zzccr);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzccs);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final AdSize zzod() {
        return com.google.android.gms.ads.zzb.zza(this.width, this.height, this.zzabd);
    }
}
