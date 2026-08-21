package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzok implements Parcelable {
    public static final Parcelable.Creator<zzok> CREATOR = new zzoj();
    private int zzafv;
    public final int zzapv;
    public final int zzapw;
    public final int zzapx;
    public final byte[] zzbgz;

    public zzok(int i2, int i3, int i4, byte[] bArr) {
        this.zzapv = i2;
        this.zzapx = i3;
        this.zzapw = i4;
        this.zzbgz = bArr;
    }

    zzok(Parcel parcel) {
        this.zzapv = parcel.readInt();
        this.zzapx = parcel.readInt();
        this.zzapw = parcel.readInt();
        this.zzbgz = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzok.class == obj.getClass()) {
            zzok zzokVar = (zzok) obj;
            if (this.zzapv == zzokVar.zzapv && this.zzapx == zzokVar.zzapx && this.zzapw == zzokVar.zzapw && Arrays.equals(this.zzbgz, zzokVar.zzbgz)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzafv == 0) {
            this.zzafv = ((((((this.zzapv + 527) * 31) + this.zzapx) * 31) + this.zzapw) * 31) + Arrays.hashCode(this.zzbgz);
        }
        return this.zzafv;
    }

    public final String toString() {
        int i2 = this.zzapv;
        int i3 = this.zzapx;
        int i4 = this.zzapw;
        boolean z = this.zzbgz != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.zzapv);
        parcel.writeInt(this.zzapx);
        parcel.writeInt(this.zzapw);
        parcel.writeInt(this.zzbgz != null ? 1 : 0);
        byte[] bArr = this.zzbgz;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
