package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzwa extends zzfm implements zzwb {
    public zzwa() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                initialize();
                break;
            case 2:
                setAppVolume(parcel.readFloat());
                break;
            case 3:
                zzby(parcel.readString());
                break;
            case 4:
                setAppMuted(zzfp.zza(parcel));
                break;
            case 5:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                break;
            case 6:
                zzb(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 7:
                float fZzos = zzos();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzos);
                return true;
            case 8:
                boolean zZzot = zzot();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzot);
                return true;
            case 9:
                String versionString = getVersionString();
                parcel2.writeNoException();
                parcel2.writeString(versionString);
                return true;
            case 10:
                zzbz(parcel.readString());
                break;
            case 11:
                zza(zzajw.zzaa(parcel.readStrongBinder()));
                break;
            case 12:
                zza(zzafx.zzy(parcel.readStrongBinder()));
                break;
            case 13:
                List<zzafr> listZzou = zzou();
                parcel2.writeNoException();
                parcel2.writeTypedList(listZzou);
                return true;
            case 14:
                zza((zzyd) zzfp.zza(parcel, zzyd.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
