package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzafp implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzaxv zzbrr;
    private final /* synthetic */ zzafl zzcym;

    zzafp(zzafl zzaflVar, zzaxv zzaxvVar) {
        this.zzcym = zzaflVar;
        this.zzbrr = zzaxvVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        try {
            this.zzbrr.set(this.zzcym.zzcyl.zzqz());
        } catch (DeadObjectException e2) {
            this.zzbrr.setException(e2);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        zzaxv zzaxvVar = this.zzbrr;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i2);
        zzaxvVar.setException(new RuntimeException(sb.toString()));
    }
}
