package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class zzld extends zzle {
    public static final Parcelable.Creator<zzld> CREATOR = new zzlg();
    private final String description;
    private final String value;

    zzld(Parcel parcel) {
        super(parcel.readString());
        this.description = parcel.readString();
        this.value = parcel.readString();
    }

    public zzld(String str, String str2, String str3) {
        super(str);
        this.description = null;
        this.value = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzld.class == obj.getClass()) {
            zzld zzldVar = (zzld) obj;
            if (this.zzaex.equals(zzldVar.zzaex) && zzof.zza(this.description, zzldVar.description) && zzof.zza(this.value, zzldVar.value)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.zzaex.hashCode() + 527) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.zzaex);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
