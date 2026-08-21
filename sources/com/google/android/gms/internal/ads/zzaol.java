package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdRequestInfoParcelCreator")
public final class zzaol extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaol> CREATOR = new zzaoo();

    @SafeParcelable.Field(id = 6)
    private final ApplicationInfo applicationInfo;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 11)
    private final zzaxl zzblk;

    @SafeParcelable.Field(id = 4)
    private final zzua zzbll;

    @SafeParcelable.Field(id = 20)
    private final float zzbog;

    @SafeParcelable.Field(id = 5)
    private final String zzbqy;

    @SafeParcelable.Field(id = 10)
    private final String zzcdr;

    @SafeParcelable.Field(id = 42)
    private final boolean zzdcd;

    @SafeParcelable.Field(id = 29)
    private final zzaay zzdeh;

    @SafeParcelable.Field(id = 14)
    private final List<String> zzdei;

    @SafeParcelable.Field(id = 18)
    private final int zzdgn;

    @SafeParcelable.Field(id = 19)
    private final int zzdgo;

    @SafeParcelable.Field(id = 2)
    private final Bundle zzdit;

    @SafeParcelable.Field(id = 3)
    private final zztx zzdiu;

    @SafeParcelable.Field(id = 7)
    private final PackageInfo zzdiv;

    @SafeParcelable.Field(id = 8)
    private final String zzdiw;

    @SafeParcelable.Field(id = 9)
    private final String zzdix;

    @SafeParcelable.Field(id = 12)
    private final Bundle zzdiy;

    @SafeParcelable.Field(id = 13)
    private final int zzdiz;

    @SafeParcelable.Field(id = 15)
    private final Bundle zzdja;

    @SafeParcelable.Field(id = 16)
    private final boolean zzdjb;

    @SafeParcelable.Field(id = 21)
    private final String zzdjc;

    @SafeParcelable.Field(id = 25)
    private final long zzdjd;

    @SafeParcelable.Field(id = 26)
    private final String zzdje;

    @SafeParcelable.Field(id = 27)
    private final List<String> zzdjf;

    @SafeParcelable.Field(id = 28)
    private final String zzdjg;

    @SafeParcelable.Field(id = 30)
    private final List<String> zzdjh;

    @SafeParcelable.Field(id = 31)
    private final long zzdji;

    @SafeParcelable.Field(id = 33)
    private final String zzdjj;

    @SafeParcelable.Field(id = 34)
    private final float zzdjk;

    @SafeParcelable.Field(id = 35)
    private final int zzdjl;

    @SafeParcelable.Field(id = 36)
    private final int zzdjm;

    @SafeParcelable.Field(id = 37)
    private final boolean zzdjn;

    @SafeParcelable.Field(id = 38)
    private final boolean zzdjo;

    @SafeParcelable.Field(id = 39)
    private final String zzdjp;

    @SafeParcelable.Field(id = 40)
    private final boolean zzdjq;

    @SafeParcelable.Field(id = 41)
    private final String zzdjr;

    @SafeParcelable.Field(id = 43)
    private final int zzdjs;

    @SafeParcelable.Field(id = 44)
    private final Bundle zzdjt;

    @SafeParcelable.Field(id = 45)
    private final String zzdju;

    @SafeParcelable.Field(id = 46)
    private final zzwx zzdjv;

    @SafeParcelable.Field(id = 47)
    private final boolean zzdjw;

    @SafeParcelable.Field(id = 48)
    private final Bundle zzdjx;

    @SafeParcelable.Field(id = 49)
    private final String zzdjy;

    @SafeParcelable.Field(id = 50)
    private final String zzdjz;

    @SafeParcelable.Field(id = 51)
    private final String zzdka;

    @SafeParcelable.Field(id = 52)
    private final boolean zzdkb;

    @SafeParcelable.Field(id = 53)
    private final List<Integer> zzdkc;

    @SafeParcelable.Field(id = 54)
    private final String zzdkd;

    @SafeParcelable.Field(id = 55)
    private final List<String> zzdke;

    @SafeParcelable.Field(id = 56)
    private final int zzdkf;

    @SafeParcelable.Field(id = 57)
    private final boolean zzdkg;

    @SafeParcelable.Field(id = 58)
    private final boolean zzdkh;

    @SafeParcelable.Field(id = 59)
    private final boolean zzdki;

    @SafeParcelable.Field(id = 60)
    private final ArrayList<String> zzdkj;

    @SafeParcelable.Field(id = 61)
    private final String zzdkk;

    @SafeParcelable.Field(id = 63)
    private final zzagd zzdkl;

    @SafeParcelable.Field(id = 64)
    private final String zzdkm;

    @SafeParcelable.Field(id = 65)
    private final Bundle zzdkn;

    @SafeParcelable.Constructor
    zzaol(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) Bundle bundle, @SafeParcelable.Param(id = 3) zztx zztxVar, @SafeParcelable.Param(id = 4) zzua zzuaVar, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 7) PackageInfo packageInfo, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) String str4, @SafeParcelable.Param(id = 11) zzaxl zzaxlVar, @SafeParcelable.Param(id = 12) Bundle bundle2, @SafeParcelable.Param(id = 13) int i3, @SafeParcelable.Param(id = 14) List<String> list, @SafeParcelable.Param(id = 15) Bundle bundle3, @SafeParcelable.Param(id = 16) boolean z, @SafeParcelable.Param(id = 18) int i4, @SafeParcelable.Param(id = 19) int i5, @SafeParcelable.Param(id = 20) float f2, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 25) long j2, @SafeParcelable.Param(id = 26) String str6, @SafeParcelable.Param(id = 27) List<String> list2, @SafeParcelable.Param(id = 28) String str7, @SafeParcelable.Param(id = 29) zzaay zzaayVar, @SafeParcelable.Param(id = 30) List<String> list3, @SafeParcelable.Param(id = 31) long j3, @SafeParcelable.Param(id = 33) String str8, @SafeParcelable.Param(id = 34) float f3, @SafeParcelable.Param(id = 40) boolean z2, @SafeParcelable.Param(id = 35) int i6, @SafeParcelable.Param(id = 36) int i7, @SafeParcelable.Param(id = 37) boolean z3, @SafeParcelable.Param(id = 38) boolean z4, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 41) String str10, @SafeParcelable.Param(id = 42) boolean z5, @SafeParcelable.Param(id = 43) int i8, @SafeParcelable.Param(id = 44) Bundle bundle4, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) zzwx zzwxVar, @SafeParcelable.Param(id = 47) boolean z6, @SafeParcelable.Param(id = 48) Bundle bundle5, @SafeParcelable.Param(id = 49) String str12, @SafeParcelable.Param(id = 50) String str13, @SafeParcelable.Param(id = 51) String str14, @SafeParcelable.Param(id = 52) boolean z7, @SafeParcelable.Param(id = 53) List<Integer> list4, @SafeParcelable.Param(id = 54) String str15, @SafeParcelable.Param(id = 55) List<String> list5, @SafeParcelable.Param(id = 56) int i9, @SafeParcelable.Param(id = 57) boolean z8, @SafeParcelable.Param(id = 58) boolean z9, @SafeParcelable.Param(id = 59) boolean z10, @SafeParcelable.Param(id = 60) ArrayList<String> arrayList, @SafeParcelable.Param(id = 61) String str16, @SafeParcelable.Param(id = 63) zzagd zzagdVar, @SafeParcelable.Param(id = 64) String str17, @SafeParcelable.Param(id = 65) Bundle bundle6) {
        this.versionCode = i2;
        this.zzdit = bundle;
        this.zzdiu = zztxVar;
        this.zzbll = zzuaVar;
        this.zzbqy = str;
        this.applicationInfo = applicationInfo;
        this.zzdiv = packageInfo;
        this.zzdiw = str2;
        this.zzdix = str3;
        this.zzcdr = str4;
        this.zzblk = zzaxlVar;
        this.zzdiy = bundle2;
        this.zzdiz = i3;
        this.zzdei = list;
        this.zzdjh = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzdja = bundle3;
        this.zzdjb = z;
        this.zzdgn = i4;
        this.zzdgo = i5;
        this.zzbog = f2;
        this.zzdjc = str5;
        this.zzdjd = j2;
        this.zzdje = str6;
        this.zzdjf = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzdjg = str7;
        this.zzdeh = zzaayVar;
        this.zzdji = j3;
        this.zzdjj = str8;
        this.zzdjk = f3;
        this.zzdjq = z2;
        this.zzdjl = i6;
        this.zzdjm = i7;
        this.zzdjn = z3;
        this.zzdjo = z4;
        this.zzdjp = str9;
        this.zzdjr = str10;
        this.zzdcd = z5;
        this.zzdjs = i8;
        this.zzdjt = bundle4;
        this.zzdju = str11;
        this.zzdjv = zzwxVar;
        this.zzdjw = z6;
        this.zzdjx = bundle5;
        this.zzdjy = str12;
        this.zzdjz = str13;
        this.zzdka = str14;
        this.zzdkb = z7;
        this.zzdkc = list4;
        this.zzdkd = str15;
        this.zzdke = list5;
        this.zzdkf = i9;
        this.zzdkg = z8;
        this.zzdkh = z9;
        this.zzdki = z10;
        this.zzdkj = arrayList;
        this.zzdkk = str16;
        this.zzdkl = zzagdVar;
        this.zzdkm = str17;
        this.zzdkn = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzdit, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzdiu, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzbll, i2, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzbqy, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.applicationInfo, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzdiv, i2, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzdiw, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzdix, false);
        SafeParcelWriter.writeString(parcel, 10, this.zzcdr, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzblk, i2, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.zzdiy, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzdiz);
        SafeParcelWriter.writeStringList(parcel, 14, this.zzdei, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.zzdja, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzdjb);
        SafeParcelWriter.writeInt(parcel, 18, this.zzdgn);
        SafeParcelWriter.writeInt(parcel, 19, this.zzdgo);
        SafeParcelWriter.writeFloat(parcel, 20, this.zzbog);
        SafeParcelWriter.writeString(parcel, 21, this.zzdjc, false);
        SafeParcelWriter.writeLong(parcel, 25, this.zzdjd);
        SafeParcelWriter.writeString(parcel, 26, this.zzdje, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.zzdjf, false);
        SafeParcelWriter.writeString(parcel, 28, this.zzdjg, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.zzdeh, i2, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.zzdjh, false);
        SafeParcelWriter.writeLong(parcel, 31, this.zzdji);
        SafeParcelWriter.writeString(parcel, 33, this.zzdjj, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.zzdjk);
        SafeParcelWriter.writeInt(parcel, 35, this.zzdjl);
        SafeParcelWriter.writeInt(parcel, 36, this.zzdjm);
        SafeParcelWriter.writeBoolean(parcel, 37, this.zzdjn);
        SafeParcelWriter.writeBoolean(parcel, 38, this.zzdjo);
        SafeParcelWriter.writeString(parcel, 39, this.zzdjp, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.zzdjq);
        SafeParcelWriter.writeString(parcel, 41, this.zzdjr, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzdcd);
        SafeParcelWriter.writeInt(parcel, 43, this.zzdjs);
        SafeParcelWriter.writeBundle(parcel, 44, this.zzdjt, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzdju, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.zzdjv, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzdjw);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzdjx, false);
        SafeParcelWriter.writeString(parcel, 49, this.zzdjy, false);
        SafeParcelWriter.writeString(parcel, 50, this.zzdjz, false);
        SafeParcelWriter.writeString(parcel, 51, this.zzdka, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.zzdkb);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.zzdkc, false);
        SafeParcelWriter.writeString(parcel, 54, this.zzdkd, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.zzdke, false);
        SafeParcelWriter.writeInt(parcel, 56, this.zzdkf);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzdkg);
        SafeParcelWriter.writeBoolean(parcel, 58, this.zzdkh);
        SafeParcelWriter.writeBoolean(parcel, 59, this.zzdki);
        SafeParcelWriter.writeStringList(parcel, 60, this.zzdkj, false);
        SafeParcelWriter.writeString(parcel, 61, this.zzdkk, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.zzdkl, i2, false);
        SafeParcelWriter.writeString(parcel, 64, this.zzdkm, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.zzdkn, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
