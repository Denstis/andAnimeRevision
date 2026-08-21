package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzjb implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzij zza;
    private volatile boolean zzb;
    private volatile zzet zzc;

    protected zzjb(zzij zzijVar) {
        this.zza = zzijVar;
    }

    static /* synthetic */ boolean zza(zzjb zzjbVar, boolean z) {
        zzjbVar.zzb = false;
        return false;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.zza.zzq().zza(new zzjg(this, this.zzc.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.zzc = null;
                this.zzb = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzew zzewVarZzd = this.zza.zzx.zzd();
        if (zzewVarZzd != null) {
            zzewVarZzd.zzi().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzb = false;
            this.zzc = null;
        }
        this.zza.zzq().zza(new zzji(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zza.zzr().zzw().zza("Service connection suspended");
        this.zza.zzq().zza(new zzjf(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzb = false;
                this.zza.zzr().zzf().zza("Service connected with null binder");
                return;
            }
            zzeo zzeqVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        zzeqVar = iInterfaceQueryLocalInterface instanceof zzeo ? (zzeo) iInterfaceQueryLocalInterface : new zzeq(iBinder);
                    }
                    this.zza.zzr().zzx().zza("Bound to IMeasurementService interface");
                } else {
                    this.zza.zzr().zzf().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.zza.zzr().zzf().zza("Service connect failed to get IMeasurementService");
            }
            if (zzeqVar == null) {
                this.zzb = false;
                try {
                    ConnectionTracker.getInstance().unbindService(this.zza.zzn(), this.zza.zza);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.zza.zzq().zza(new zzje(this, zzeqVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zza.zzr().zzw().zza("Service disconnected");
        this.zza.zzq().zza(new zzjd(this, componentName));
    }

    public final void zza() {
        if (this.zzc != null && (this.zzc.isConnected() || this.zzc.isConnecting())) {
            this.zzc.disconnect();
        }
        this.zzc = null;
    }

    public final void zza(Intent intent) {
        this.zza.zzd();
        Context contextZzn = this.zza.zzn();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzr().zzx().zza("Connection attempt already in progress");
                return;
            }
            this.zza.zzr().zzx().zza("Using local app measurement service");
            this.zzb = true;
            connectionTracker.bindService(contextZzn, intent, this.zza.zza, TsExtractor.TS_STREAM_TYPE_AC3);
        }
    }

    public final void zzb() {
        this.zza.zzd();
        Context contextZzn = this.zza.zzn();
        synchronized (this) {
            if (this.zzb) {
                this.zza.zzr().zzx().zza("Connection attempt already in progress");
                return;
            }
            if (this.zzc != null && (this.zzc.isConnecting() || this.zzc.isConnected())) {
                this.zza.zzr().zzx().zza("Already awaiting connection attempt");
                return;
            }
            this.zzc = new zzet(contextZzn, Looper.getMainLooper(), this, this);
            this.zza.zzr().zzx().zza("Connecting to remote service");
            this.zzb = true;
            this.zzc.checkAvailabilityAndConnect();
        }
    }
}
