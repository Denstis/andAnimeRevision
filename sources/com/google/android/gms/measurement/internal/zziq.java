package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class zziq implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzij zzc;

    zziq(zzij zzijVar, AtomicReference atomicReference, zzm zzmVar) {
        this.zzc = zzijVar;
        this.zza = atomicReference;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeo zzeoVar;
        synchronized (this.zza) {
            try {
                try {
                    zzeoVar = this.zzc.zzb;
                } catch (RemoteException e2) {
                    this.zzc.zzr().zzf().zza("Failed to get app instance id", e2);
                    atomicReference = this.zza;
                }
                if (zzeoVar == null) {
                    this.zzc.zzr().zzf().zza("Failed to get app instance id");
                    return;
                }
                this.zza.set(zzeoVar.zzc(this.zzb));
                String str = (String) this.zza.get();
                if (str != null) {
                    this.zzc.zzf().zza(str);
                    this.zzc.zzs().zzj.zza(str);
                }
                this.zzc.zzaj();
                atomicReference = this.zza;
                atomicReference.notify();
            } finally {
                this.zza.notify();
            }
        }
    }
}
