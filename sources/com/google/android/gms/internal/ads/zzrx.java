package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
final class zzrx implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzrp zzbrq;
    private final /* synthetic */ zzaxv zzbrr;
    final /* synthetic */ zzrv zzbrs;

    zzrx(zzrv zzrvVar, zzrp zzrpVar, zzaxv zzaxvVar) {
        this.zzbrs = zzrvVar;
        this.zzbrq = zzrpVar;
        this.zzbrr = zzaxvVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbrs.lock) {
            if (this.zzbrs.zzbrp) {
                return;
            }
            zzrv.zza(this.zzbrs, true);
            final zzrq zzrqVar = this.zzbrs.zzbrc;
            if (zzrqVar == null) {
                return;
            }
            zzddl zzddlVar = zzaxn.zzdwi;
            final zzrp zzrpVar = this.zzbrq;
            final zzaxv zzaxvVar = this.zzbrr;
            final zzddi<?> zzddiVarSubmit = zzddlVar.submit(new Runnable(this, zzrqVar, zzrpVar, zzaxvVar) { // from class: com.google.android.gms.internal.ads.zzsa
                private final zzrx zzbrv;
                private final zzrq zzbrw;
                private final zzrp zzbrx;
                private final zzaxv zzbry;

                {
                    this.zzbrv = this;
                    this.zzbrw = zzrqVar;
                    this.zzbrx = zzrpVar;
                    this.zzbry = zzaxvVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzrx zzrxVar = this.zzbrv;
                    zzrq zzrqVar2 = this.zzbrw;
                    zzrp zzrpVar2 = this.zzbrx;
                    zzaxv zzaxvVar2 = this.zzbry;
                    try {
                        zzro zzroVarZza = zzrqVar2.zzml().zza(zzrpVar2);
                        if (!zzroVarZza.zzmi()) {
                            zzaxvVar2.setException(new RuntimeException("No entry contents."));
                            zzrxVar.zzbrs.disconnect();
                            return;
                        }
                        zzsc zzscVar = new zzsc(zzrxVar, zzroVarZza.zzmj(), 1);
                        int i2 = zzscVar.read();
                        if (i2 == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzscVar.unread(i2);
                        zzaxvVar2.set(zzscVar);
                    } catch (RemoteException | IOException e2) {
                        zzaxi.zzc("Unable to obtain a cache service instance.", e2);
                        zzaxvVar2.setException(e2);
                        zzrxVar.zzbrs.disconnect();
                    }
                }
            });
            zzaxv zzaxvVar2 = this.zzbrr;
            final zzaxv zzaxvVar3 = this.zzbrr;
            zzaxvVar2.addListener(new Runnable(zzaxvVar3, zzddiVarSubmit) { // from class: com.google.android.gms.internal.ads.zzrz
                private final zzaxv zzbrt;
                private final Future zzbru;

                {
                    this.zzbrt = zzaxvVar3;
                    this.zzbru = zzddiVarSubmit;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaxv zzaxvVar4 = this.zzbrt;
                    Future future = this.zzbru;
                    if (zzaxvVar4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzaxn.zzdwn);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
    }
}
