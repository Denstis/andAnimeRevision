package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes.dex */
public final class zzpv {
    private final Object zzbox = new Object();
    private zzpy zzboy = null;
    private boolean zzboz = false;

    public final Activity getActivity() {
        synchronized (this.zzbox) {
            if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                return null;
            }
            if (this.zzboy == null) {
                return null;
            }
            return this.zzboy.getActivity();
        }
    }

    public final Context getContext() {
        synchronized (this.zzbox) {
            if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                return null;
            }
            if (this.zzboy == null) {
                return null;
            }
            return this.zzboy.getContext();
        }
    }

    public final void initialize(Context context) {
        synchronized (this.zzbox) {
            if (!this.zzboz) {
                if (!PlatformVersion.isAtLeastIceCreamSandwich()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    zzaxi.zzeu("Can not cast Context to Application");
                    return;
                }
                if (this.zzboy == null) {
                    this.zzboy = new zzpy();
                }
                this.zzboy.zza(application, context);
                this.zzboz = true;
            }
        }
    }

    public final void zza(zzqa zzqaVar) {
        synchronized (this.zzbox) {
            if (PlatformVersion.isAtLeastIceCreamSandwich()) {
                if (this.zzboy == null) {
                    this.zzboy = new zzpy();
                }
                this.zzboy.zza(zzqaVar);
            }
        }
    }

    public final void zzb(zzqa zzqaVar) {
        synchronized (this.zzbox) {
            if (this.zzboy == null) {
                return;
            }
            this.zzboy.zzb(zzqaVar);
        }
    }
}
