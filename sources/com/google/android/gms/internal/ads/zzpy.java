package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
final class zzpy implements Application.ActivityLifecycleCallbacks {
    private Runnable zzbpg;
    private long zzbph;
    private Context zzlk;
    private Activity zzzr;
    private final Object lock = new Object();
    private boolean foreground = true;
    private boolean zzbpd = false;
    private final List<zzqa> zzbpe = new ArrayList();
    private final List<zzql> zzbpf = new ArrayList();
    private boolean zzye = false;

    zzpy() {
    }

    private final void setActivity(Activity activity) {
        synchronized (this.lock) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.zzzr = activity;
            }
        }
    }

    static /* synthetic */ boolean zza(zzpy zzpyVar, boolean z) {
        zzpyVar.foreground = false;
        return false;
    }

    public final Activity getActivity() {
        return this.zzzr;
    }

    public final Context getContext() {
        return this.zzlk;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.lock) {
            if (this.zzzr == null) {
                return;
            }
            if (this.zzzr.equals(activity)) {
                this.zzzr = null;
            }
            Iterator<zzql> it = this.zzbpf.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().zza(activity)) {
                        it.remove();
                    }
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    zzaxi.zzc("", e2);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.lock) {
            Iterator<zzql> it = this.zzbpf.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityPaused(activity);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzaxi.zzc("", e2);
                }
            }
        }
        this.zzbpd = true;
        Runnable runnable = this.zzbpg;
        if (runnable != null) {
            zzaul.zzdsu.removeCallbacks(runnable);
        }
        Handler handler = zzaul.zzdsu;
        zzpx zzpxVar = new zzpx(this);
        this.zzbpg = zzpxVar;
        handler.postDelayed(zzpxVar, this.zzbph);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzbpd = false;
        boolean z = !this.foreground;
        this.foreground = true;
        Runnable runnable = this.zzbpg;
        if (runnable != null) {
            zzaul.zzdsu.removeCallbacks(runnable);
        }
        synchronized (this.lock) {
            Iterator<zzql> it = this.zzbpf.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityResumed(activity);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzaxi.zzc("", e2);
                }
            }
            if (z) {
                Iterator<zzqa> it2 = this.zzbpe.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().zzo(true);
                    } catch (Exception e3) {
                        zzaxi.zzc("", e3);
                    }
                }
            } else {
                zzaxi.zzdv("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context) {
        if (this.zzye) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            setActivity((Activity) context);
        }
        this.zzlk = application;
        this.zzbph = ((Long) zzuv.zzon().zzd(zzza.zzckn)).longValue();
        this.zzye = true;
    }

    public final void zza(zzqa zzqaVar) {
        synchronized (this.lock) {
            this.zzbpe.add(zzqaVar);
        }
    }

    public final void zzb(zzqa zzqaVar) {
        synchronized (this.lock) {
            this.zzbpe.remove(zzqaVar);
        }
    }
}
