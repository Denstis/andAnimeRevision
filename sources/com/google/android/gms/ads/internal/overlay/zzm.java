package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzaxl;

/* JADX INFO: loaded from: classes.dex */
public final class zzm implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzd zzdVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String strCreateString = null;
        String strCreateString2 = null;
        IBinder iBinder5 = null;
        String strCreateString3 = null;
        zzaxl zzaxlVar = null;
        String strCreateString4 = null;
        com.google.android.gms.ads.internal.zzg zzgVar = null;
        IBinder iBinder6 = null;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    zzdVar = (zzd) SafeParcelReader.createParcelable(parcel, header, zzd.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 7:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 10:
                    iBinder5 = SafeParcelReader.readIBinder(parcel, header);
                    break;
                case 11:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 13:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 14:
                    zzaxlVar = (zzaxl) SafeParcelReader.createParcelable(parcel, header, zzaxl.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 16:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 17:
                    zzgVar = (com.google.android.gms.ads.internal.zzg) SafeParcelReader.createParcelable(parcel, header, com.google.android.gms.ads.internal.zzg.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.readIBinder(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new AdOverlayInfoParcel(zzdVar, iBinder, iBinder2, iBinder3, iBinder4, strCreateString, z, strCreateString2, iBinder5, i2, i3, strCreateString3, zzaxlVar, strCreateString4, zzgVar, iBinder6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i2) {
        return new AdOverlayInfoParcel[i2];
    }
}
