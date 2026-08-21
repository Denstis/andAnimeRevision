package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzsb implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzaxv zzbrr;
    private final /* synthetic */ zzrv zzbrs;

    zzsb(zzrv zzrvVar, zzaxv zzaxvVar) {
        this.zzbrs = zzrvVar;
        this.zzbrr = zzaxvVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbrs.lock) {
            this.zzbrr.setException(new RuntimeException("Connection failed."));
        }
    }
}
