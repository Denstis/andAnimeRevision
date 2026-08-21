package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class zzio implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzij zzd;

    zzio(zzij zzijVar, AtomicReference atomicReference, zzm zzmVar, boolean z) {
        this.zzd = zzijVar;
        this.zza = atomicReference;
        this.zzb = zzmVar;
        this.zzc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        synchronized (this.zza) {
            try {
                try {
                    zzeoVar = this.zzd.zzb;
                } catch (RemoteException e2) {
                    this.zzd.zzr().zzf().zza("Failed to get user properties", e2);
                    atomicReference = this.zza;
                }
                if (zzeoVar == null) {
                    this.zzd.zzr().zzf().zza("Failed to get user properties");
                    return;
                }
                this.zza.set(zzeoVar.zza(this.zzb, this.zzc));
                this.zzd.zzaj();
                atomicReference = this.zza;
                atomicReference.notify();
            } finally {
                this.zza.notify();
            }
        }
    }
}
