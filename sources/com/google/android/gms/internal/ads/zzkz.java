package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;

/* JADX INFO: loaded from: classes.dex */
public final class zzkz extends zzle {
    public static final Parcelable.Creator<zzkz> CREATOR = new zzlc();
    public final String description;
    private final String zzaft;
    public final String zzazq;

    zzkz(Parcel parcel) {
        super(CommentFrame.ID);
        this.zzaft = parcel.readString();
        this.description = parcel.readString();
        this.zzazq = parcel.readString();
    }

    public zzkz(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.zzaft = str;
        this.description = str2;
        this.zzazq = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzkz.class == obj.getClass()) {
            zzkz zzkzVar = (zzkz) obj;
            if (zzof.zza(this.description, zzkzVar.description) && zzof.zza(this.zzaft, zzkzVar.zzaft) && zzof.zza(this.zzazq, zzkzVar.zzazq)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zzaft;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.zzazq;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.zzaex);
        parcel.writeString(this.zzaft);
        parcel.writeString(this.zzazq);
    }
}
