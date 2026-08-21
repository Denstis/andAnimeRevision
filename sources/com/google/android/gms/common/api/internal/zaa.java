package com.google.android.gms.common.api.internal;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zaa extends ActivityLifecycleObserver {
    private final WeakReference<C0151zaa> zacl;

    /* JADX INFO: renamed from: com.google.android.gms.common.api.internal.zaa$zaa, reason: collision with other inner class name */
    static class C0151zaa extends LifecycleCallback {
        private List<Runnable> zacm;

        private C0151zaa(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.zacm = new ArrayList();
            this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static C0151zaa zaa(Activity activity) {
            C0151zaa c0151zaa;
            synchronized (activity) {
                LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
                c0151zaa = (C0151zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", C0151zaa.class);
                if (c0151zaa == null) {
                    c0151zaa = new C0151zaa(fragment);
                }
            }
            return c0151zaa;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized void zaa(Runnable runnable) {
            this.zacm.add(runnable);
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.zacm;
                this.zacm = new ArrayList();
            }
            Iterator<Runnable> it = list.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }
    }

    public zaa(Activity activity) {
        this(C0151zaa.zaa(activity));
    }

    private zaa(C0151zaa c0151zaa) {
        this.zacl = new WeakReference<>(c0151zaa);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C0151zaa c0151zaa = this.zacl.get();
        if (c0151zaa == null) {
            throw new IllegalStateException("The target activity has already been GC'd");
        }
        c0151zaa.zaa(runnable);
        return this;
    }
}
