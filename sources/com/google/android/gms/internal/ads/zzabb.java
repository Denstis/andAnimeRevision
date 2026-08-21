package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzabb implements Parcelable.Creator<zzaay> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaay createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzyj zzyjVar = null;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        boolean z3 = false;
        int i5 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 3:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    z2 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 5:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    zzyjVar = (zzyj) SafeParcelReader.createParcelable(parcel, header, zzyj.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 8:
                    i5 = SafeParcelReader.readInt(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzaay(i2, z, i3, z2, i4, zzyjVar, z3, i5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaay[] newArray(int i2) {
        return new zzaay[i2];
    }
}
