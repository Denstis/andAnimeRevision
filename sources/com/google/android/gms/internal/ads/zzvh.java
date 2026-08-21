package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzvh extends zzfm implements zzve {
    public zzvh() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzuy zzvaVar = null;
        zzvz zzvyVar = null;
        switch (i2) {
            case 1:
                zzvd zzvdVarZzor = zzor();
                parcel2.writeNoException();
                zzfp.zza(parcel2, zzvdVarZzor);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzvaVar = iInterfaceQueryLocalInterface instanceof zzuy ? (zzuy) iInterfaceQueryLocalInterface : new zzva(strongBinder);
                }
                zzb(zzvaVar);
                break;
            case 3:
                zza(zzacl.zzq(parcel.readStrongBinder()));
                break;
            case 4:
                zza(zzacm.zzr(parcel.readStrongBinder()));
                break;
            case 5:
                zza(parcel.readString(), zzacs.zzt(parcel.readStrongBinder()), zzacr.zzs(parcel.readStrongBinder()));
                break;
            case 6:
                zza((zzaay) zzfp.zza(parcel, zzaay.CREATOR));
                break;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzvyVar = iInterfaceQueryLocalInterface2 instanceof zzvz ? (zzvz) iInterfaceQueryLocalInterface2 : new zzvy(strongBinder2);
                }
                zzb(zzvyVar);
                break;
            case 8:
                zza(zzacx.zzu(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR));
                break;
            case 9:
                zza((PublisherAdViewOptions) zzfp.zza(parcel, PublisherAdViewOptions.CREATOR));
                break;
            case 10:
                zza(zzacy.zzv(parcel.readStrongBinder()));
                break;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zza((zzagd) zzfp.zza(parcel, zzagd.CREATOR));
                break;
            case 14:
                zza(zzagi.zzz(parcel.readStrongBinder()));
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
