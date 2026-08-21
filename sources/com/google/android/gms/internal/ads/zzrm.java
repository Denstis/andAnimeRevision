package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzrm implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzrh zzbrg;

    zzrm(zzrh zzrhVar) {
        this.zzbrg = zzrhVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbrg.lock) {
            try {
            } catch (DeadObjectException e2) {
                zzaxi.zzc("Unable to obtain a cache service instance.", e2);
                this.zzbrg.disconnect();
            }
            if (this.zzbrg.zzbrc != null) {
                this.zzbrg.zzbrd = this.zzbrg.zzbrc.zzml();
                this.zzbrg.lock.notifyAll();
            } else {
                this.zzbrg.lock.notifyAll();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        synchronized (this.zzbrg.lock) {
            this.zzbrg.zzbrd = null;
            this.zzbrg.lock.notifyAll();
        }
    }
}
