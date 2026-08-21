package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbo;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class zzczc implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final String packageName;
    private final HandlerThread zzduw = new HandlerThread("GassClient");

    @VisibleForTesting
    private zzczq zzgni;
    private final String zzgnj;
    private final LinkedBlockingQueue<zzbo.zza> zzgnk;

    public zzczc(Context context, String str, String str2) {
        this.packageName = str;
        this.zzgnj = str2;
        this.zzduw.start();
        this.zzgni = new zzczq(context, this.zzduw.getLooper(), this, this);
        this.zzgnk = new LinkedBlockingQueue<>();
        this.zzgni.checkAvailabilityAndConnect();
    }

    private final void zzakj() {
        zzczq zzczqVar = this.zzgni;
        if (zzczqVar != null) {
            if (zzczqVar.isConnected() || this.zzgni.isConnecting()) {
                this.zzgni.disconnect();
            }
        }
    }

    private final zzczx zzanu() {
        try {
            return this.zzgni.zzaob();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @VisibleForTesting
    private static zzbo.zza zzanv() {
        return (zzbo.zza) zzbo.zza.zzal().zzau(32768L).zzazr();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzczx zzczxVarZzanu = zzanu();
        if (zzczxVarZzanu != null) {
            try {
                try {
                    this.zzgnk.put(zzczxVarZzanu.zza(new zzczt(this.packageName, this.zzgnj)).zzaoc());
                } catch (Throwable unused) {
                    this.zzgnk.put(zzanv());
                }
            } catch (InterruptedException unused2) {
            } catch (Throwable th) {
                zzakj();
                this.zzduw.quit();
                throw th;
            }
            zzakj();
            this.zzduw.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzgnk.put(zzanv());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        try {
            this.zzgnk.put(zzanv());
        } catch (InterruptedException unused) {
        }
    }

    public final zzbo.zza zzdk(int i2) {
        zzbo.zza zzaVarPoll;
        try {
            zzaVarPoll = this.zzgnk.poll(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzaVarPoll = null;
        }
        return zzaVarPoll == null ? zzanv() : zzaVarPoll;
    }
}
