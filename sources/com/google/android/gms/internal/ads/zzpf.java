package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.ScrollView;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzpf implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long zzbnj = ((Long) zzuv.zzon().zzd(zzza.zzclx)).longValue();
    private final WindowManager zzbnk;

    @VisibleForTesting
    private BroadcastReceiver zzbnl;
    private WeakReference<View> zzbnm;
    private zzpm zzbnn;
    private final Rect zzbnr;
    private final DisplayMetrics zzwl;
    private Application zzxh;
    private final Context zzzc;
    private final PowerManager zzzd;
    private final KeyguardManager zzze;
    private WeakReference<ViewTreeObserver> zzzg;
    private zzawo zzbno = new zzawo(zzbnj);
    private boolean zzbnp = false;
    private int zzzk = -1;
    private final HashSet<zzpj> zzbnq = new HashSet<>();

    public zzpf(Context context, View view) {
        this.zzzc = context.getApplicationContext();
        this.zzbnk = (WindowManager) context.getSystemService("window");
        this.zzzd = (PowerManager) this.zzzc.getSystemService("power");
        this.zzze = (KeyguardManager) context.getSystemService("keyguard");
        Context context2 = this.zzzc;
        if (context2 instanceof Application) {
            this.zzxh = (Application) context2;
            this.zzbnn = new zzpm((Application) context2, this);
        }
        this.zzwl = context.getResources().getDisplayMetrics();
        this.zzbnr = new Rect();
        this.zzbnr.right = this.zzbnk.getDefaultDisplay().getWidth();
        this.zzbnr.bottom = this.zzbnk.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.zzbnm;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzf(view2);
        }
        this.zzbnm = new WeakReference<>(view);
        if (view != null) {
            if (com.google.android.gms.ads.internal.zzq.zzkl().isAttachedToWindow(view)) {
                zze(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final Rect zza(Rect rect) {
        return new Rect(zzbn(rect.left), zzbn(rect.top), zzbn(rect.right), zzbn(rect.bottom));
    }

    private final void zza(Activity activity, int i2) {
        Window window;
        if (this.zzbnm == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = this.zzbnm.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.zzzk = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbm(int i2) {
        WeakReference<View> weakReference;
        boolean z;
        boolean z2;
        if (this.zzbnq.size() == 0 || (weakReference = this.zzbnm) == null) {
            return;
        }
        View view = weakReference.get();
        boolean z3 = i2 == 1;
        boolean z4 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect2);
            boolean localVisibleRect = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e2) {
                zzaxi.zzc("Failure getting view location.", e2);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            z = globalVisibleRect;
            z2 = localVisibleRect;
        } else {
            z = false;
            z2 = false;
        }
        List<Rect> listEmptyList = (!((Boolean) zzuv.zzon().zzd(zzza.zzcma)).booleanValue() || view == null) ? Collections.emptyList() : zzh(view);
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i3 = this.zzzk;
        if (i3 != -1) {
            windowVisibility = i3;
        }
        boolean z5 = !z4 && com.google.android.gms.ads.internal.zzq.zzkj().zza(view, this.zzzd, this.zzze) && z && z2 && windowVisibility == 0;
        if (z3 && !this.zzbno.tryAcquire() && z5 == this.zzbnp) {
            return;
        }
        if (z5 || this.zzbnp || i2 != 1) {
            zzpk zzpkVar = new zzpk(com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime(), this.zzzd.isScreenOn(), view != null && com.google.android.gms.ads.internal.zzq.zzkl().isAttachedToWindow(view), view != null ? view.getWindowVisibility() : 8, zza(this.zzbnr), zza(rect), zza(rect2), z, zza(rect3), z2, zza(rect4), this.zzwl.density, z5, listEmptyList);
            Iterator<zzpj> it = this.zzbnq.iterator();
            while (it.hasNext()) {
                it.next().zza(zzpkVar);
            }
            this.zzbnp = z5;
        }
    }

    private final int zzbn(int i2) {
        return (int) (i2 / this.zzwl.density);
    }

    private final void zzcr() {
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzpi
            private final zzpf zzbnw;

            {
                this.zzbnw = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzbnw.zzlj();
            }
        });
    }

    private final void zze(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzzg = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzbnl == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzbnl = new zzph(this);
            com.google.android.gms.ads.internal.zzq.zzle().zza(this.zzzc, this.zzbnl, intentFilter);
        }
        Application application = this.zzxh;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzbnn);
            } catch (Exception e2) {
                zzaxi.zzc("Error registering activity lifecycle callbacks.", e2);
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
        } catch (Exception e2) {
            zzaxi.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e2);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e3) {
            zzaxi.zzc("Error while unregistering listeners from the ViewTreeObserver.", e3);
        }
        if (this.zzbnl != null) {
            try {
                com.google.android.gms.ads.internal.zzq.zzle().zza(this.zzzc, this.zzbnl);
            } catch (IllegalStateException e4) {
                zzaxi.zzc("Failed trying to unregister the receiver", e4);
            } catch (Exception e5) {
                com.google.android.gms.ads.internal.zzq.zzkn().zza(e5, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzbnl = null;
        }
        Application application = this.zzxh;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzbnn);
            } catch (Exception e6) {
                zzaxi.zzc("Error registering activity lifecycle callbacks.", e6);
            }
        }
    }

    private final List<Rect> zzh(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if ((Build.VERSION.SDK_INT >= 16 ? view2.isScrollContainer() : (view2 instanceof ScrollView) || (view2 instanceof ListView)) && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(zza(rect));
                }
            }
            return arrayList;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzbm(3);
        zzcr();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzbm(3);
        zzcr();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzbm(2);
        zzcr();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzbm(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzzk = -1;
        zze(view);
        zzbm(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzzk = -1;
        zzbm(3);
        zzcr();
        zzf(view);
    }

    public final void zza(zzpj zzpjVar) {
        this.zzbnq.add(zzpjVar);
        zzbm(3);
    }

    public final void zzb(zzpj zzpjVar) {
        this.zzbnq.remove(zzpjVar);
    }

    public final void zzeh(long j2) {
        this.zzbno.zzev(j2);
    }

    public final void zzli() {
        this.zzbno.zzev(zzbnj);
    }

    final /* synthetic */ void zzlj() {
        zzbm(3);
    }
}
