package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzky extends zzle {
    public static final Parcelable.Creator<zzky> CREATOR = new zzla();
    private final String description;
    private final String mimeType;
    private final int zzazo;
    private final byte[] zzazp;

    zzky(Parcel parcel) {
        super(ApicFrame.ID);
        this.mimeType = parcel.readString();
        this.description = parcel.readString();
        this.zzazo = parcel.readInt();
        this.zzazp = parcel.createByteArray();
    }

    public zzky(String str, String str2, int i2, byte[] bArr) {
        super(ApicFrame.ID);
        this.mimeType = str;
        this.description = null;
        this.zzazo = 3;
        this.zzazp = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzky.class == obj.getClass()) {
            zzky zzkyVar = (zzky) obj;
            if (this.zzazo == zzkyVar.zzazo && zzof.zza(this.mimeType, zzkyVar.mimeType) && zzof.zza(this.description, zzkyVar.description) && Arrays.equals(this.zzazp, zzkyVar.zzazp)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (this.zzazo + 527) * 31;
        String str = this.mimeType;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.zzazp);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.zzazo);
        parcel.writeByteArray(this.zzazp);
    }
}
