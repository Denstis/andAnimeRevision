package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdResponseParcelCreator")
public final class zzaon extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaon> CREATOR = new zzaoq();

    @SafeParcelable.Field(id = 5)
    private final int errorCode;

    @SafeParcelable.Field(id = 12)
    private final int orientation;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 37)
    private final zzaop zzbkt;

    @SafeParcelable.Field(id = 49)
    private final boolean zzbld;

    @SafeParcelable.Field(id = 53)
    private final boolean zzble;

    @SafeParcelable.Field(id = 23)
    private final boolean zzbmb;

    @SafeParcelable.Field(id = 30)
    private final String zzbzn;

    @SafeParcelable.Field(id = 31)
    private final boolean zzcco;

    @SafeParcelable.Field(id = 32)
    private final boolean zzccp;

    @SafeParcelable.Field(id = 4)
    private final List<String> zzdby;

    @SafeParcelable.Field(id = 6)
    private final List<String> zzdbz;

    @SafeParcelable.Field(id = 52)
    private final List<String> zzdca;

    @SafeParcelable.Field(id = 40)
    private final List<String> zzdcc;

    @SafeParcelable.Field(id = 42)
    private final boolean zzdcd;

    @SafeParcelable.Field(id = 11)
    private final long zzdcf;

    @SafeParcelable.Field(id = 2)
    private final String zzdhz;

    @SafeParcelable.Field(id = 24)
    private final boolean zzdjb;

    @SafeParcelable.Field(id = 38)
    private final boolean zzdjo;

    @SafeParcelable.Field(id = 39)
    private String zzdjp;

    @SafeParcelable.Field(id = 47)
    private final boolean zzdkb;

    @SafeParcelable.Field(id = 3)
    private String zzdko;

    @SafeParcelable.Field(id = 7)
    private final long zzdkp;

    @SafeParcelable.Field(id = 8)
    private final boolean zzdkq;

    @SafeParcelable.Field(id = 9)
    private final long zzdkr;

    @SafeParcelable.Field(id = 10)
    private final List<String> zzdks;

    @SafeParcelable.Field(id = 13)
    private final String zzdkt;

    @SafeParcelable.Field(id = 14)
    private final long zzdku;

    @SafeParcelable.Field(id = 15)
    private final String zzdkv;

    @SafeParcelable.Field(id = 18)
    private final boolean zzdkw;

    @SafeParcelable.Field(id = 19)
    private final String zzdkx;

    @SafeParcelable.Field(id = 21)
    private final String zzdky;

    @SafeParcelable.Field(id = 22)
    private final boolean zzdkz;

    @SafeParcelable.Field(id = 25)
    private final boolean zzdla;

    @SafeParcelable.Field(id = 26)
    private final boolean zzdlb;

    @SafeParcelable.Field(id = 28)
    private zzaoz zzdlc;

    @SafeParcelable.Field(id = 29)
    private String zzdld;

    @SafeParcelable.Field(id = 33)
    private final zzaqt zzdle;

    @SafeParcelable.Field(id = 34)
    private final List<String> zzdlf;

    @SafeParcelable.Field(id = 35)
    private final List<String> zzdlg;

    @SafeParcelable.Field(id = 36)
    private final boolean zzdlh;

    @SafeParcelable.Field(id = 43)
    private final String zzdli;

    @SafeParcelable.Field(id = 44)
    private final zzasd zzdlj;

    @SafeParcelable.Field(id = 45)
    private final String zzdlk;

    @SafeParcelable.Field(id = 46)
    private final boolean zzdll;

    @SafeParcelable.Field(id = 48)
    private Bundle zzdlm;

    @SafeParcelable.Field(id = 50)
    private final int zzdln;

    @SafeParcelable.Field(id = 51)
    private final boolean zzdlo;

    @SafeParcelable.Field(id = 54)
    private final String zzdlp;

    @SafeParcelable.Field(id = 55)
    private String zzdlq;

    @SafeParcelable.Field(id = 56)
    private boolean zzdlr;

    @SafeParcelable.Field(id = 57)
    private boolean zzdls;

    @SafeParcelable.Constructor
    zzaon(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) List<String> list, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) List<String> list2, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j3, @SafeParcelable.Param(id = 10) List<String> list3, @SafeParcelable.Param(id = 11) long j4, @SafeParcelable.Param(id = 12) int i4, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) String str4, @SafeParcelable.Param(id = 18) boolean z2, @SafeParcelable.Param(id = 19) String str5, @SafeParcelable.Param(id = 21) String str6, @SafeParcelable.Param(id = 22) boolean z3, @SafeParcelable.Param(id = 23) boolean z4, @SafeParcelable.Param(id = 24) boolean z5, @SafeParcelable.Param(id = 25) boolean z6, @SafeParcelable.Param(id = 26) boolean z7, @SafeParcelable.Param(id = 28) zzaoz zzaozVar, @SafeParcelable.Param(id = 29) String str7, @SafeParcelable.Param(id = 30) String str8, @SafeParcelable.Param(id = 31) boolean z8, @SafeParcelable.Param(id = 32) boolean z9, @SafeParcelable.Param(id = 33) zzaqt zzaqtVar, @SafeParcelable.Param(id = 34) List<String> list4, @SafeParcelable.Param(id = 35) List<String> list5, @SafeParcelable.Param(id = 36) boolean z10, @SafeParcelable.Param(id = 37) zzaop zzaopVar, @SafeParcelable.Param(id = 38) boolean z11, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 40) List<String> list6, @SafeParcelable.Param(id = 42) boolean z12, @SafeParcelable.Param(id = 43) String str10, @SafeParcelable.Param(id = 44) zzasd zzasdVar, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) boolean z13, @SafeParcelable.Param(id = 47) boolean z14, @SafeParcelable.Param(id = 48) Bundle bundle, @SafeParcelable.Param(id = 49) boolean z15, @SafeParcelable.Param(id = 50) int i5, @SafeParcelable.Param(id = 51) boolean z16, @SafeParcelable.Param(id = 52) List<String> list7, @SafeParcelable.Param(id = 53) boolean z17, @SafeParcelable.Param(id = 54) String str12, @SafeParcelable.Param(id = 55) String str13, @SafeParcelable.Param(id = 56) boolean z18, @SafeParcelable.Param(id = 57) boolean z19) {
        zzaoz zzaozVar2;
        zzapg zzapgVar;
        this.versionCode = i2;
        this.zzdhz = str;
        this.zzdko = str2;
        this.zzdby = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i3;
        this.zzdbz = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzdkp = j2;
        this.zzdkq = z;
        this.zzdkr = j3;
        this.zzdks = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.zzdcf = j4;
        this.orientation = i4;
        this.zzdkt = str3;
        this.zzdku = j5;
        this.zzdkv = str4;
        this.zzdkw = z2;
        this.zzdkx = str5;
        this.zzdky = str6;
        this.zzdkz = z3;
        this.zzbmb = z4;
        this.zzdjb = z5;
        this.zzdla = z6;
        this.zzdll = z13;
        this.zzdlb = z7;
        this.zzdlc = zzaozVar;
        this.zzdld = str7;
        this.zzbzn = str8;
        if (this.zzdko == null && (zzaozVar2 = this.zzdlc) != null && (zzapgVar = (zzapg) zzaozVar2.zza(zzapg.CREATOR)) != null && !TextUtils.isEmpty(zzapgVar.zzdmd)) {
            this.zzdko = zzapgVar.zzdmd;
        }
        this.zzcco = z8;
        this.zzccp = z9;
        this.zzdle = zzaqtVar;
        this.zzdlf = list4;
        this.zzdlg = list5;
        this.zzdlh = z10;
        this.zzbkt = zzaopVar;
        this.zzdjo = z11;
        this.zzdjp = str9;
        this.zzdcc = list6;
        this.zzdcd = z12;
        this.zzdli = str10;
        this.zzdlj = zzasdVar;
        this.zzdlk = str11;
        this.zzdkb = z14;
        this.zzdlm = bundle;
        this.zzbld = z15;
        this.zzdln = i5;
        this.zzdlo = z16;
        this.zzdca = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.zzble = z17;
        this.zzdlp = str12;
        this.zzdlq = str13;
        this.zzdlr = z18;
        this.zzdls = z19;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.zzdhz, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzdko, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.zzdby, false);
        SafeParcelWriter.writeInt(parcel, 5, this.errorCode);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzdbz, false);
        SafeParcelWriter.writeLong(parcel, 7, this.zzdkp);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdkq);
        SafeParcelWriter.writeLong(parcel, 9, this.zzdkr);
        SafeParcelWriter.writeStringList(parcel, 10, this.zzdks, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzdcf);
        SafeParcelWriter.writeInt(parcel, 12, this.orientation);
        SafeParcelWriter.writeString(parcel, 13, this.zzdkt, false);
        SafeParcelWriter.writeLong(parcel, 14, this.zzdku);
        SafeParcelWriter.writeString(parcel, 15, this.zzdkv, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzdkw);
        SafeParcelWriter.writeString(parcel, 19, this.zzdkx, false);
        SafeParcelWriter.writeString(parcel, 21, this.zzdky, false);
        SafeParcelWriter.writeBoolean(parcel, 22, this.zzdkz);
        SafeParcelWriter.writeBoolean(parcel, 23, this.zzbmb);
        SafeParcelWriter.writeBoolean(parcel, 24, this.zzdjb);
        SafeParcelWriter.writeBoolean(parcel, 25, this.zzdla);
        SafeParcelWriter.writeBoolean(parcel, 26, this.zzdlb);
        SafeParcelWriter.writeParcelable(parcel, 28, this.zzdlc, i2, false);
        SafeParcelWriter.writeString(parcel, 29, this.zzdld, false);
        SafeParcelWriter.writeString(parcel, 30, this.zzbzn, false);
        SafeParcelWriter.writeBoolean(parcel, 31, this.zzcco);
        SafeParcelWriter.writeBoolean(parcel, 32, this.zzccp);
        SafeParcelWriter.writeParcelable(parcel, 33, this.zzdle, i2, false);
        SafeParcelWriter.writeStringList(parcel, 34, this.zzdlf, false);
        SafeParcelWriter.writeStringList(parcel, 35, this.zzdlg, false);
        SafeParcelWriter.writeBoolean(parcel, 36, this.zzdlh);
        SafeParcelWriter.writeParcelable(parcel, 37, this.zzbkt, i2, false);
        SafeParcelWriter.writeBoolean(parcel, 38, this.zzdjo);
        SafeParcelWriter.writeString(parcel, 39, this.zzdjp, false);
        SafeParcelWriter.writeStringList(parcel, 40, this.zzdcc, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzdcd);
        SafeParcelWriter.writeString(parcel, 43, this.zzdli, false);
        SafeParcelWriter.writeParcelable(parcel, 44, this.zzdlj, i2, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzdlk, false);
        SafeParcelWriter.writeBoolean(parcel, 46, this.zzdll);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzdkb);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzdlm, false);
        SafeParcelWriter.writeBoolean(parcel, 49, this.zzbld);
        SafeParcelWriter.writeInt(parcel, 50, this.zzdln);
        SafeParcelWriter.writeBoolean(parcel, 51, this.zzdlo);
        SafeParcelWriter.writeStringList(parcel, 52, this.zzdca, false);
        SafeParcelWriter.writeBoolean(parcel, 53, this.zzble);
        SafeParcelWriter.writeString(parcel, 54, this.zzdlp, false);
        SafeParcelWriter.writeString(parcel, 55, this.zzdlq, false);
        SafeParcelWriter.writeBoolean(parcel, 56, this.zzdlr);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzdls);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
