package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzv {
    private static zzv zza;
    private final Context zzb;
    private final ScheduledExecutorService zzc;
    private zzw zzd = new zzw(this);
    private int zze = 1;

    private zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = scheduledExecutorService;
        this.zzb = context.getApplicationContext();
    }

    private final synchronized int zza() {
        int i2;
        i2 = this.zze;
        this.zze = i2 + 1;
        return i2;
    }

    private final synchronized <T> Task<T> zza(zzah<T> zzahVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(zzahVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(strValueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.zzd.zza((zzah<?>) zzahVar)) {
            this.zzd = new zzw(this);
            this.zzd.zza((zzah<?>) zzahVar);
        }
        return zzahVar.zzb.getTask();
    }

    public static synchronized zzv zza(Context context) {
        if (zza == null) {
            zza = new zzv(context, com.google.android.gms.internal.firebase_messaging.zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), com.google.android.gms.internal.firebase_messaging.zzf.zza));
        }
        return zza;
    }

    public final Task<Void> zza(int i2, Bundle bundle) {
        return zza(new zzae(zza(), 2, bundle));
    }

    public final Task<Bundle> zzb(int i2, Bundle bundle) {
        return zza(new zzaj(zza(), 1, bundle));
    }
}
