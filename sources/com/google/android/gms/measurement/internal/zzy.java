package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzy implements Parcelable.Creator<zzv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        String strCreateString = null;
        String strCreateString2 = null;
        zzkl zzklVar = null;
        String strCreateString3 = null;
        zzan zzanVar = null;
        zzan zzanVar2 = null;
        zzan zzanVar3 = null;
        boolean z = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    zzklVar = (zzkl) SafeParcelReader.createParcelable(parcel, header, zzkl.CREATOR);
                    break;
                case 5:
                    j2 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 6:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    zzanVar = (zzan) SafeParcelReader.createParcelable(parcel, header, zzan.CREATOR);
                    break;
                case 9:
                    j3 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    zzanVar2 = (zzan) SafeParcelReader.createParcelable(parcel, header, zzan.CREATOR);
                    break;
                case 11:
                    j4 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    zzanVar3 = (zzan) SafeParcelReader.createParcelable(parcel, header, zzan.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzv(strCreateString, strCreateString2, zzklVar, j2, z, strCreateString3, zzanVar, j3, zzanVar2, j4, zzanVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv[] newArray(int i2) {
        return new zzv[i2];
    }
}
