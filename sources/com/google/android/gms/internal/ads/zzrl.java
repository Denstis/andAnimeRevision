package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzrl implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzrh zzbrg;

    zzrl(zzrh zzrhVar) {
        this.zzbrg = zzrhVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbrg.lock) {
            this.zzbrg.zzbrd = null;
            if (this.zzbrg.zzbrc != null) {
                zzrh.zza(this.zzbrg, (zzrq) null);
            }
            this.zzbrg.lock.notifyAll();
        }
    }
}
