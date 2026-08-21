package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzen extends com.google.android.gms.internal.measurement.zzc implements zzeo {
    public zzen() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
        Collection collectionZza;
        switch (i2) {
            case 1:
                zza((zzan) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzan.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zza((zzkl) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzkl.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zza((zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zza((zzan) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzan.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb((zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                collectionZza = zza((zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR), com.google.android.gms.internal.measurement.zzb.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionZza);
                return true;
            case 9:
                byte[] bArrZza = zza((zzan) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzan.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrZza);
                return true;
            case 10:
                zza(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strZzc = zzc((zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strZzc);
                return true;
            case 12:
                zza((zzv) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzv.CREATOR), (zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zza((zzv) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                collectionZza = zza(parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzb.zza(parcel), (zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionZza);
                return true;
            case 15:
                collectionZza = zza(parcel.readString(), parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzb.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionZza);
                return true;
            case 16:
                collectionZza = zza(parcel.readString(), parcel.readString(), (zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionZza);
                return true;
            case 17:
                collectionZza = zza(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(collectionZza);
                return true;
            case 18:
                zzd((zzm) com.google.android.gms.internal.measurement.zzb.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
