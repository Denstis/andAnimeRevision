package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import b.k.a.e;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class LifecycleActivity {
    private final Object zzbd;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.zzbd = activity;
    }

    @KeepForSdk
    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public Activity asActivity() {
        return (Activity) this.zzbd;
    }

    @KeepForSdk
    public e asFragmentActivity() {
        return (e) this.zzbd;
    }

    @KeepForSdk
    public Object asObject() {
        return this.zzbd;
    }

    @KeepForSdk
    public boolean isChimera() {
        return false;
    }

    @KeepForSdk
    public boolean isSupport() {
        return this.zzbd instanceof e;
    }

    public final boolean zzh() {
        return this.zzbd instanceof Activity;
    }
}
