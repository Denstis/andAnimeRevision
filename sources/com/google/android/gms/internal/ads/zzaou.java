package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaou extends zzfm implements zzaor {
    public zzaou() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            zzaow zzaovVar = null;
            zzaoy zzapaVar = null;
            zzaoy zzapaVar2 = null;
            if (i2 == 2) {
                zzaol zzaolVar = (zzaol) zzfp.zza(parcel, zzaol.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    zzaovVar = iInterfaceQueryLocalInterface instanceof zzaow ? (zzaow) iInterfaceQueryLocalInterface : new zzaov(strongBinder);
                }
                zza(zzaolVar, zzaovVar);
            } else if (i2 == 4) {
                zzape zzapeVar = (zzape) zzfp.zza(parcel, zzape.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzapaVar2 = iInterfaceQueryLocalInterface2 instanceof zzaoy ? (zzaoy) iInterfaceQueryLocalInterface2 : new zzapa(strongBinder2);
                }
                zza(zzapeVar, zzapaVar2);
            } else {
                if (i2 != 5) {
                    return false;
                }
                zzape zzapeVar2 = (zzape) zzfp.zza(parcel, zzape.CREATOR);
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzapaVar = iInterfaceQueryLocalInterface3 instanceof zzaoy ? (zzaoy) iInterfaceQueryLocalInterface3 : new zzapa(strongBinder3);
                }
                zzb(zzapeVar2, zzapaVar);
            }
            parcel2.writeNoException();
        } else {
            zzaon zzaonVarZza = zza((zzaol) zzfp.zza(parcel, zzaol.CREATOR));
            parcel2.writeNoException();
            zzfp.zzb(parcel2, zzaonVarZza);
        }
        return true;
    }
}
