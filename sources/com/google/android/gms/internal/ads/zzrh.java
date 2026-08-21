package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzrh {
    private zzrq zzbrc;
    private zzru zzbrd;
    private Context zzlk;
    private final Runnable zzbrb = new zzrk(this);
    private final Object lock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public final void connect() {
        synchronized (this.lock) {
            if (this.zzlk != null && this.zzbrc == null) {
                this.zzbrc = zza(new zzrm(this), new zzrl(this));
                this.zzbrc.checkAvailabilityAndConnect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.lock) {
            if (this.zzbrc == null) {
                return;
            }
            if (this.zzbrc.isConnected() || this.zzbrc.isConnecting()) {
                this.zzbrc.disconnect();
            }
            this.zzbrc = null;
            this.zzbrd = null;
            Binder.flushPendingCommands();
        }
    }

    @VisibleForTesting
    private final synchronized zzrq zza(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzrq(this.zzlk, com.google.android.gms.ads.internal.zzq.zzkx().zzwd(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    static /* synthetic */ zzrq zza(zzrh zzrhVar, zzrq zzrqVar) {
        zzrhVar.zzbrc = null;
        return null;
    }

    public final void initialize(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzlk != null) {
                return;
            }
            this.zzlk = context.getApplicationContext();
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcpo)).booleanValue()) {
                connect();
            } else {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcpn)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzq.zzkm().zza(new zzrj(this));
                }
            }
        }
    }

    public final zzro zza(zzrp zzrpVar) {
        synchronized (this.lock) {
            if (this.zzbrd == null) {
                return new zzro();
            }
            try {
                return this.zzbrd.zza(zzrpVar);
            } catch (RemoteException e2) {
                zzaxi.zzc("Unable to call into cache service.", e2);
                return new zzro();
            }
        }
    }

    public final void zzmh() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcpp)).booleanValue()) {
            synchronized (this.lock) {
                connect();
                com.google.android.gms.ads.internal.zzq.zzkj();
                zzaul.zzdsu.removeCallbacks(this.zzbrb);
                com.google.android.gms.ads.internal.zzq.zzkj();
                zzaul.zzdsu.postDelayed(this.zzbrb, ((Long) zzuv.zzon().zzd(zzza.zzcpq)).longValue());
            }
        }
    }
}
