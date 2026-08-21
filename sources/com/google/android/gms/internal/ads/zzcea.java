package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzcea extends zzcec {
    public zzcea(Context context) {
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
                    this.zzfva.zzta().zza(this.zzfuz, new zzcef(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    zzaxvVar = this.zzdbn;
                    zzcelVar = new zzcel(0);
                    zzaxvVar.setException(zzcelVar);
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "RemoteAdRequestClientTask.onConnected");
                    zzaxvVar = this.zzdbn;
                    zzcelVar = new zzcel(0);
                    zzaxvVar.setException(zzcelVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcec, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzaxi.zzdv("Cannot connect to remote service, fallback to local instance.");
        this.zzdbn.setException(new zzcel(0));
    }

    public final zzddi<InputStream> zzf(zzape zzapeVar) {
        synchronized (this.mLock) {
            if (this.zzfux) {
                return this.zzdbn;
            }
            this.zzfux = true;
            this.zzfuz = zzapeVar;
            this.zzfva.checkAvailabilityAndConnect();
            this.zzdbn.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzced
                private final zzcea zzfvb;

                {
                    this.zzfvb = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfvb.zzakj();
                }
            }, zzaxn.zzdwn);
            return this.zzdbn;
        }
    }
}
