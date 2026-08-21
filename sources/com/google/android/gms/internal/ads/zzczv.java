package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbo;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "GassResponseParcelCreator")
public final class zzczv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzczv> CREATOR = new zzczu();

    @SafeParcelable.VersionField(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private zzbo.zza zzgog = null;
    private byte[] zzgoh;

    @SafeParcelable.Constructor
    zzczv(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.versionCode = i2;
        this.zzgoh = bArr;
        zzaod();
    }

    private final void zzaod() {
        if (this.zzgog != null || this.zzgoh == null) {
            if (this.zzgog == null || this.zzgoh != null) {
                if (this.zzgog != null && this.zzgoh != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.zzgog != null || this.zzgoh != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        byte[] byteArray = this.zzgoh;
        if (byteArray == null) {
            byteArray = this.zzgog.toByteArray();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, byteArray, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzbo.zza zzaoc() {
        if (!(this.zzgog != null)) {
            try {
                this.zzgog = zzbo.zza.zzb(this.zzgoh, zzdqj.zzazb());
                this.zzgoh = null;
            } catch (zzdrg e2) {
                throw new IllegalStateException(e2);
            }
        }
        zzaod();
        return this.zzgog;
    }
}
