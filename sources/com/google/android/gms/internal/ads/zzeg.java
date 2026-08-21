package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzeg implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final Handler zzzb = new Handler(Looper.getMainLooper());
    private final zzdx zzvo;
    private Application zzxh;
    private final Context zzzc;
    private final PowerManager zzzd;
    private final KeyguardManager zzze;
    private BroadcastReceiver zzzf;
    private WeakReference<ViewTreeObserver> zzzg;
    private WeakReference<View> zzzh;
    private zzdm zzzi;
    private byte zzzj = -1;
    private int zzzk = -1;
    private long zzzl = -3;

    public zzeg(zzdx zzdxVar, View view) {
        this.zzvo = zzdxVar;
        this.zzzc = zzdxVar.zzlk;
        this.zzzd = (PowerManager) this.zzzc.getSystemService("power");
        this.zzze = (KeyguardManager) this.zzzc.getSystemService("keyguard");
        Context context = this.zzzc;
        if (context instanceof Application) {
            this.zzxh = (Application) context;
            this.zzzi = new zzdm((Application) context, this);
        }
        zzd(view);
    }

    private final void zza(Activity activity, int i2) {
        Window window;
        if (this.zzzh == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = this.zzzh.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.zzzk = i2;
    }

    private final void zzcr() {
        zzzb.post(new zzej(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzct() {
        /*
            r9 = this;
            java.lang.ref.WeakReference<android.view.View> r0 = r9.zzzh
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            r1 = -1
            r2 = -3
            if (r0 != 0) goto L15
            r9.zzzl = r2
            r9.zzzj = r1
            return
        L15:
            int r4 = r0.getVisibility()
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L1f
            r4 = 1
            goto L20
        L1f:
            r4 = 0
        L20:
            boolean r7 = r0.isShown()
            if (r7 != 0) goto L29
            r4 = r4 | 2
            byte r4 = (byte) r4
        L29:
            android.os.PowerManager r7 = r9.zzzd
            if (r7 == 0) goto L36
            boolean r7 = r7.isScreenOn()
            if (r7 != 0) goto L36
            r4 = r4 | 4
            byte r4 = (byte) r4
        L36:
            com.google.android.gms.internal.ads.zzdx r7 = r9.zzvo
            boolean r7 = r7.zzcl()
            if (r7 != 0) goto L6a
            android.app.KeyguardManager r7 = r9.zzze
            if (r7 == 0) goto L69
            boolean r7 = r7.inKeyguardRestrictedInputMode()
            if (r7 == 0) goto L69
            android.app.Activity r7 = com.google.android.gms.internal.ads.zzee.zzc(r0)
            if (r7 == 0) goto L65
            android.view.Window r7 = r7.getWindow()
            if (r7 != 0) goto L56
            r7 = 0
            goto L5a
        L56:
            android.view.WindowManager$LayoutParams r7 = r7.getAttributes()
        L5a:
            if (r7 == 0) goto L65
            int r7 = r7.flags
            r8 = 524288(0x80000, float:7.34684E-40)
            r7 = r7 & r8
            if (r7 == 0) goto L65
            r7 = 1
            goto L66
        L65:
            r7 = 0
        L66:
            if (r7 == 0) goto L69
            goto L6a
        L69:
            r5 = 0
        L6a:
            if (r5 != 0) goto L6f
            r4 = r4 | 8
            byte r4 = (byte) r4
        L6f:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getGlobalVisibleRect(r5)
            if (r5 != 0) goto L7d
            r4 = r4 | 16
            byte r4 = (byte) r4
        L7d:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getLocalVisibleRect(r5)
            if (r5 != 0) goto L8b
            r4 = r4 | 32
            byte r4 = (byte) r4
        L8b:
            int r0 = r0.getWindowVisibility()
            int r5 = r9.zzzk
            if (r5 == r1) goto L94
            r0 = r5
        L94:
            if (r0 == 0) goto L99
            r0 = r4 | 64
            byte r4 = (byte) r0
        L99:
            byte r0 = r9.zzzj
            if (r0 == r4) goto Lad
            r9.zzzj = r4
            byte r0 = r9.zzzj
            if (r0 != 0) goto La8
            long r0 = android.os.SystemClock.elapsedRealtime()
            goto Lab
        La8:
            long r0 = (long) r0
            long r0 = r2 - r0
        Lab:
            r9.zzzl = r0
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeg.zzct():void");
    }

    private final void zze(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzzg = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzzf == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzzf = new zzei(this);
            this.zzzc.registerReceiver(this.zzzf, intentFilter);
        }
        Application application = this.zzxh;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzzi);
            } catch (Exception unused) {
            }
        }
    }

    private final void zzf(View view) {
        try {
            if (this.zzzg != null) {
                ViewTreeObserver viewTreeObserver = this.zzzg.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzzg = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.zzzf;
        if (broadcastReceiver != null) {
            try {
                this.zzzc.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.zzzf = null;
        }
        Application application = this.zzxh;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzzi);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzct();
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzct();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzct();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzct();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzct();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzzk = -1;
        zze(view);
        zzct();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzzk = -1;
        zzct();
        zzcr();
        zzf(view);
    }

    public final long zzcs() {
        if (this.zzzl <= -2 && this.zzzh.get() == null) {
            this.zzzl = -3L;
        }
        return this.zzzl;
    }

    final void zzd(View view) {
        long j2;
        WeakReference<View> weakReference = this.zzzh;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzf(view2);
        }
        this.zzzh = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                zze(view);
            }
            view.addOnAttachStateChangeListener(this);
            j2 = -2;
        } else {
            j2 = -3;
        }
        this.zzzl = j2;
    }
}
