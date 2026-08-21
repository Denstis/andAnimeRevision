package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzaqn implements Parcelable.Creator<zzaqo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaqo createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zztx zztxVar = null;
        String strCreateString = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                zztxVar = (zztx) SafeParcelReader.createParcelable(parcel, header, zztx.CREATOR);
            } else if (fieldId != 3) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzaqo(zztxVar, strCreateString);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaqo[] newArray(int i2) {
        return new zzaqo[i2];
    }
}
