package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
final class zzcze implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final Object lock = new Object();
    private boolean zzfux = false;
    private boolean zzfuy = false;
    private final zzczq zzgnl;
    private final zzczl zzgnm;

    zzcze(Context context, Looper looper, zzczl zzczlVar) {
        this.zzgnm = zzczlVar;
        this.zzgnl = new zzczq(context, looper, this, this);
    }

    private final void zzakj() {
        synchronized (this.lock) {
            if (this.zzgnl.isConnected() || this.zzgnl.isConnecting()) {
                this.zzgnl.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.lock) {
            if (this.zzfuy) {
                return;
            }
            this.zzfuy = true;
            try {
                this.zzgnl.zzaob().zza(new zzczo(this.zzgnm.toByteArray()));
            } catch (Exception unused) {
            } catch (Throwable th) {
                zzakj();
                throw th;
            }
            zzakj();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
    }

    final void zzanw() {
        synchronized (this.lock) {
            if (!this.zzfux) {
                this.zzfux = true;
                this.zzgnl.checkAvailabilityAndConnect();
            }
        }
    }
}
