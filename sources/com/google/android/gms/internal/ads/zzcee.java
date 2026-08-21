package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzcee extends zzcec {
    public zzcee(Context context) {
        this.zzfva = new zzaom(context, com.google.android.gms.ads.internal.zzq.zzkx().zzwd(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzaxv<InputStream> zzaxvVar;
        zzcel zzcelVar;
        synchronized (this.mLock) {
            if (!this.zzfuy) {
                this.zzfuy = true;
                try {
                    this.zzfva.zzta().zzb(this.zzfuz, new zzcef(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    zzaxvVar = this.zzdbn;
                    zzcelVar = new zzcel(0);
                    zzaxvVar.setException(zzcelVar);
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "RemoteSignalsClientTask.onConnected");
                    zzaxvVar = this.zzdbn;
                    zzcelVar = new zzcel(0);
                    zzaxvVar.setException(zzcelVar);
                }
            }
        }
    }

    public final zzddi<InputStream> zzg(zzape zzapeVar) {
        synchronized (this.mLock) {
            if (this.zzfux) {
                return this.zzdbn;
            }
            this.zzfux = true;
            this.zzfuz = zzapeVar;
            this.zzfva.checkAvailabilityAndConnect();
            this.zzdbn.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzceh
                private final zzcee zzfvd;

                {
                    this.zzfvd = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfvd.zzakj();
                }
            }, zzaxn.zzdwn);
            return this.zzdbn;
        }
    }
}
