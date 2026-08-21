package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "CacheEntryParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzro extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzro> CREATOR = new zzrn();

    @SafeParcelable.Field(getter = "getContentFileDescriptor", id = 2)
    private ParcelFileDescriptor zzbrh;

    public zzro() {
        this(null);
    }

    @SafeParcelable.Constructor
    public zzro(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.zzbrh = parcelFileDescriptor;
    }

    private final synchronized ParcelFileDescriptor zzmk() {
        return this.zzbrh;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, zzmk(), i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final synchronized boolean zzmi() {
        return this.zzbrh != null;
    }

    public final synchronized InputStream zzmj() {
        if (this.zzbrh == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbrh);
        this.zzbrh = null;
        return autoCloseInputStream;
    }
}
