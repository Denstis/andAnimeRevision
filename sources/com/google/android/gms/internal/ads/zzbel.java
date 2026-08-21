package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class zzbel {
    private final zzaxl zzblh;
    private final WeakReference<Context> zzeju;
    private final Context zzlk;

    public static class zza {
        private zzaxl zzblh;
        private WeakReference<Context> zzeju;
        private Context zzzc;

        public final zza zza(zzaxl zzaxlVar) {
            this.zzblh = zzaxlVar;
            return this;
        }

        public final zza zzbs(Context context) {
            this.zzeju = new WeakReference<>(context);
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.zzzc = context;
            return this;
        }
    }

    private zzbel(zza zzaVar) {
        this.zzblh = zzaVar.zzblh;
        this.zzlk = zzaVar.zzzc;
        this.zzeju = zzaVar.zzeju;
    }

    final Context zzabp() {
        return this.zzlk;
    }

    final WeakReference<Context> zzabq() {
        return this.zzeju;
    }

    final zzaxl zzabr() {
        return this.zzblh;
    }

    final String zzabs() {
        return com.google.android.gms.ads.internal.zzq.zzkj().zzr(this.zzlk, this.zzblh.zzblz);
    }
}
