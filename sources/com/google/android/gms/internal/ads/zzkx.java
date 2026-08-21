package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzkx implements Parcelable {
    public static final Parcelable.Creator<zzkx> CREATOR = new zzkw();
    private final zza[] zzazn;

    public interface zza extends Parcelable {
    }

    zzkx(Parcel parcel) {
        this.zzazn = new zza[parcel.readInt()];
        int i2 = 0;
        while (true) {
            zza[] zzaVarArr = this.zzazn;
            if (i2 >= zzaVarArr.length) {
                return;
            }
            zzaVarArr[i2] = (zza) parcel.readParcelable(zza.class.getClassLoader());
            i2++;
        }
    }

    public zzkx(List<? extends zza> list) {
        this.zzazn = new zza[list.size()];
        list.toArray(this.zzazn);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzkx.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzazn, ((zzkx) obj).zzazn);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzazn);
    }

    public final int length() {
        return this.zzazn.length;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.zzazn.length);
        for (zza zzaVar : this.zzazn) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public final zza zzar(int i2) {
        return this.zzazn[i2];
    }
}
