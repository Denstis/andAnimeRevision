package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzcex implements zzdcz<ParcelFileDescriptor> {
    private final /* synthetic */ zzaoy zzfvo;

    zzcex(zzcen zzcenVar, zzaoy zzaoyVar) {
        this.zzfvo = zzaoyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.zzfvo.zzb(parcelFileDescriptor);
        } catch (RemoteException e2) {
            zzaug.zza("Service can't call client", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        try {
            this.zzfvo.zza(zzavq.zza(th, zzccu.zzd(th)));
        } catch (RemoteException e2) {
            zzaug.zza("Service can't call client", e2);
        }
    }
}
