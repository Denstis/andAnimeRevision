package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzgo implements Parcelable {
    public static final Parcelable.Creator<zzgo> CREATOR = new zzgr();
    public final int height;
    public final int width;
    private final String zzaex;
    public final int zzaey;
    public final String zzaez;
    private final zzkx zzafa;
    private final String zzafb;
    public final String zzafc;
    public final int zzafd;
    public final List<byte[]> zzafe;
    public final zzin zzaff;
    public final float zzafg;
    public final int zzafh;
    public final float zzafi;
    private final int zzafj;
    private final byte[] zzafk;
    private final zzok zzafl;
    public final int zzafm;
    public final int zzafn;
    public final int zzafo;
    private final int zzafp;
    private final int zzafq;
    public final long zzafr;
    public final int zzafs;
    public final String zzaft;
    private final int zzafu;
    private int zzafv;

    zzgo(Parcel parcel) {
        this.zzaex = parcel.readString();
        this.zzafb = parcel.readString();
        this.zzafc = parcel.readString();
        this.zzaez = parcel.readString();
        this.zzaey = parcel.readInt();
        this.zzafd = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.zzafg = parcel.readFloat();
        this.zzafh = parcel.readInt();
        this.zzafi = parcel.readFloat();
        this.zzafk = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.zzafj = parcel.readInt();
        this.zzafl = (zzok) parcel.readParcelable(zzok.class.getClassLoader());
        this.zzafm = parcel.readInt();
        this.zzafn = parcel.readInt();
        this.zzafo = parcel.readInt();
        this.zzafp = parcel.readInt();
        this.zzafq = parcel.readInt();
        this.zzafs = parcel.readInt();
        this.zzaft = parcel.readString();
        this.zzafu = parcel.readInt();
        this.zzafr = parcel.readLong();
        int i2 = parcel.readInt();
        this.zzafe = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            this.zzafe.add(parcel.createByteArray());
        }
        this.zzaff = (zzin) parcel.readParcelable(zzin.class.getClassLoader());
        this.zzafa = (zzkx) parcel.readParcelable(zzkx.class.getClassLoader());
    }

    private zzgo(String str, String str2, String str3, String str4, int i2, int i3, int i4, int i5, float f2, int i6, float f3, byte[] bArr, int i7, zzok zzokVar, int i8, int i9, int i10, int i11, int i12, int i13, String str5, int i14, long j2, List<byte[]> list, zzin zzinVar, zzkx zzkxVar) {
        this.zzaex = str;
        this.zzafb = str2;
        this.zzafc = str3;
        this.zzaez = str4;
        this.zzaey = i2;
        this.zzafd = i3;
        this.width = i4;
        this.height = i5;
        this.zzafg = f2;
        this.zzafh = i6;
        this.zzafi = f3;
        this.zzafk = bArr;
        this.zzafj = i7;
        this.zzafl = zzokVar;
        this.zzafm = i8;
        this.zzafn = i9;
        this.zzafo = i10;
        this.zzafp = i11;
        this.zzafq = i12;
        this.zzafs = i13;
        this.zzaft = str5;
        this.zzafu = i14;
        this.zzafr = j2;
        this.zzafe = list == null ? Collections.emptyList() : list;
        this.zzaff = zzinVar;
        this.zzafa = zzkxVar;
    }

    public static zzgo zza(String str, String str2, String str3, int i2, int i3, int i4, int i5, float f2, List<byte[]> list, int i6, float f3, byte[] bArr, int i7, zzok zzokVar, zzin zzinVar) {
        return new zzgo(str, null, str2, null, -1, i3, i4, i5, -1.0f, i6, f3, bArr, i7, zzokVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzinVar, null);
    }

    public static zzgo zza(String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, List<byte[]> list, zzin zzinVar, int i7, String str4) {
        return new zzgo(str, null, str2, null, -1, i3, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i4, i5, i6, -1, -1, i7, str4, -1, Long.MAX_VALUE, list, zzinVar, null);
    }

    public static zzgo zza(String str, String str2, String str3, int i2, int i3, int i4, int i5, List<byte[]> list, zzin zzinVar, int i6, String str4) {
        return zza(str, str2, null, -1, -1, i4, i5, -1, null, zzinVar, 0, str4);
    }

    public static zzgo zza(String str, String str2, String str3, int i2, int i3, String str4, int i4, zzin zzinVar, long j2, List<byte[]> list) {
        return new zzgo(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i3, str4, -1, j2, list, zzinVar, null);
    }

    public static zzgo zza(String str, String str2, String str3, int i2, int i3, String str4, zzin zzinVar) {
        return zza(str, str2, null, -1, i3, str4, -1, zzinVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzgo zza(String str, String str2, String str3, int i2, zzin zzinVar) {
        return new zzgo(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    public static zzgo zza(String str, String str2, String str3, int i2, List<byte[]> list, String str4, zzin zzinVar) {
        return new zzgo(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzinVar, null);
    }

    @TargetApi(16)
    private static void zza(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzgo.class == obj.getClass()) {
            zzgo zzgoVar = (zzgo) obj;
            if (this.zzaey == zzgoVar.zzaey && this.zzafd == zzgoVar.zzafd && this.width == zzgoVar.width && this.height == zzgoVar.height && this.zzafg == zzgoVar.zzafg && this.zzafh == zzgoVar.zzafh && this.zzafi == zzgoVar.zzafi && this.zzafj == zzgoVar.zzafj && this.zzafm == zzgoVar.zzafm && this.zzafn == zzgoVar.zzafn && this.zzafo == zzgoVar.zzafo && this.zzafp == zzgoVar.zzafp && this.zzafq == zzgoVar.zzafq && this.zzafr == zzgoVar.zzafr && this.zzafs == zzgoVar.zzafs && zzof.zza(this.zzaex, zzgoVar.zzaex) && zzof.zza(this.zzaft, zzgoVar.zzaft) && this.zzafu == zzgoVar.zzafu && zzof.zza(this.zzafb, zzgoVar.zzafb) && zzof.zza(this.zzafc, zzgoVar.zzafc) && zzof.zza(this.zzaez, zzgoVar.zzaez) && zzof.zza(this.zzaff, zzgoVar.zzaff) && zzof.zza(this.zzafa, zzgoVar.zzafa) && zzof.zza(this.zzafl, zzgoVar.zzafl) && Arrays.equals(this.zzafk, zzgoVar.zzafk) && this.zzafe.size() == zzgoVar.zzafe.size()) {
                for (int i2 = 0; i2 < this.zzafe.size(); i2++) {
                    if (!Arrays.equals(this.zzafe.get(i2), zzgoVar.zzafe.get(i2))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzafv == 0) {
            String str = this.zzaex;
            int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.zzafb;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.zzafc;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.zzaez;
            int iHashCode4 = (((((((((((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.zzaey) * 31) + this.width) * 31) + this.height) * 31) + this.zzafm) * 31) + this.zzafn) * 31;
            String str5 = this.zzaft;
            int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.zzafu) * 31;
            zzin zzinVar = this.zzaff;
            int iHashCode6 = (iHashCode5 + (zzinVar == null ? 0 : zzinVar.hashCode())) * 31;
            zzkx zzkxVar = this.zzafa;
            this.zzafv = iHashCode6 + (zzkxVar != null ? zzkxVar.hashCode() : 0);
        }
        return this.zzafv;
    }

    public final String toString() {
        String str = this.zzaex;
        String str2 = this.zzafb;
        String str3 = this.zzafc;
        int i2 = this.zzaey;
        String str4 = this.zzaft;
        int i3 = this.width;
        int i4 = this.height;
        float f2 = this.zzafg;
        int i5 = this.zzafm;
        int i6 = this.zzafn;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(str4);
        sb.append(", [");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(", ");
        sb.append(f2);
        sb.append("], [");
        sb.append(i5);
        sb.append(", ");
        sb.append(i6);
        sb.append("])");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.zzaex);
        parcel.writeString(this.zzafb);
        parcel.writeString(this.zzafc);
        parcel.writeString(this.zzaez);
        parcel.writeInt(this.zzaey);
        parcel.writeInt(this.zzafd);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.zzafg);
        parcel.writeInt(this.zzafh);
        parcel.writeFloat(this.zzafi);
        parcel.writeInt(this.zzafk != null ? 1 : 0);
        byte[] bArr = this.zzafk;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.zzafj);
        parcel.writeParcelable(this.zzafl, i2);
        parcel.writeInt(this.zzafm);
        parcel.writeInt(this.zzafn);
        parcel.writeInt(this.zzafo);
        parcel.writeInt(this.zzafp);
        parcel.writeInt(this.zzafq);
        parcel.writeInt(this.zzafs);
        parcel.writeString(this.zzaft);
        parcel.writeInt(this.zzafu);
        parcel.writeLong(this.zzafr);
        int size = this.zzafe.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeByteArray(this.zzafe.get(i3));
        }
        parcel.writeParcelable(this.zzaff, 0);
        parcel.writeParcelable(this.zzafa, 0);
    }

    public final zzgo zza(int i2, int i3) {
        return new zzgo(this.zzaex, this.zzafb, this.zzafc, this.zzaez, this.zzaey, this.zzafd, this.width, this.height, this.zzafg, this.zzafh, this.zzafi, this.zzafk, this.zzafj, this.zzafl, this.zzafm, this.zzafn, this.zzafo, i2, i3, this.zzafs, this.zzaft, this.zzafu, this.zzafr, this.zzafe, this.zzaff, this.zzafa);
    }

    public final zzgo zza(zzkx zzkxVar) {
        return new zzgo(this.zzaex, this.zzafb, this.zzafc, this.zzaez, this.zzaey, this.zzafd, this.width, this.height, this.zzafg, this.zzafh, this.zzafi, this.zzafk, this.zzafj, this.zzafl, this.zzafm, this.zzafn, this.zzafo, this.zzafp, this.zzafq, this.zzafs, this.zzaft, this.zzafu, this.zzafr, this.zzafe, this.zzaff, zzkxVar);
    }

    public final zzgo zzdm(long j2) {
        return new zzgo(this.zzaex, this.zzafb, this.zzafc, this.zzaez, this.zzaey, this.zzafd, this.width, this.height, this.zzafg, this.zzafh, this.zzafi, this.zzafk, this.zzafj, this.zzafl, this.zzafm, this.zzafn, this.zzafo, this.zzafp, this.zzafq, this.zzafs, this.zzaft, this.zzafu, j2, this.zzafe, this.zzaff, this.zzafa);
    }

    public final int zzej() {
        int i2;
        int i3 = this.width;
        if (i3 == -1 || (i2 = this.height) == -1) {
            return -1;
        }
        return i3 * i2;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat zzek() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.zzafc);
        String str = this.zzaft;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        zza(mediaFormat, "max-input-size", this.zzafd);
        zza(mediaFormat, "width", this.width);
        zza(mediaFormat, "height", this.height);
        float f2 = this.zzafg;
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        zza(mediaFormat, "rotation-degrees", this.zzafh);
        zza(mediaFormat, "channel-count", this.zzafm);
        zza(mediaFormat, "sample-rate", this.zzafn);
        zza(mediaFormat, "encoder-delay", this.zzafp);
        zza(mediaFormat, "encoder-padding", this.zzafq);
        for (int i2 = 0; i2 < this.zzafe.size(); i2++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i2);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.zzafe.get(i2)));
        }
        zzok zzokVar = this.zzafl;
        if (zzokVar != null) {
            zza(mediaFormat, "color-transfer", zzokVar.zzapw);
            zza(mediaFormat, "color-standard", zzokVar.zzapv);
            zza(mediaFormat, "color-range", zzokVar.zzapx);
            byte[] bArr = zzokVar.zzbgz;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final zzgo zzo(int i2) {
        return new zzgo(this.zzaex, this.zzafb, this.zzafc, this.zzaez, this.zzaey, i2, this.width, this.height, this.zzafg, this.zzafh, this.zzafi, this.zzafk, this.zzafj, this.zzafl, this.zzafm, this.zzafn, this.zzafo, this.zzafp, this.zzafq, this.zzafs, this.zzaft, this.zzafu, this.zzafr, this.zzafe, this.zzaff, this.zzafa);
    }
}
