package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzafo implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzaxv zzbrr;

    zzafo(zzafl zzaflVar, zzaxv zzaxvVar) {
        this.zzbrr = zzaxvVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbrr.setException(new RuntimeException("Connection failed."));
    }
}
