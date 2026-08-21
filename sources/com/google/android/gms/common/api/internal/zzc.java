package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import b.e.a;
import b.k.a.d;
import b.k.a.e;
import b.k.a.o;
import com.google.android.gms.internal.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzc extends d implements LifecycleFragment {
    private static WeakHashMap<e, WeakReference<zzc>> zzbe = new WeakHashMap<>();
    private Map<String, LifecycleCallback> zzbf = new a();
    private int zzbg = 0;
    private Bundle zzbh;

    public static zzc zza(e eVar) {
        zzc zzcVar;
        WeakReference<zzc> weakReference = zzbe.get(eVar);
        if (weakReference != null && (zzcVar = weakReference.get()) != null) {
            return zzcVar;
        }
        try {
            zzc zzcVar2 = (zzc) eVar.p().a("SupportLifecycleFragmentImpl");
            if (zzcVar2 == null || zzcVar2.isRemoving()) {
                zzcVar2 = new zzc();
                o oVarA = eVar.p().a();
                oVarA.a(zzcVar2, "SupportLifecycleFragmentImpl");
                oVarA.b();
            }
            zzbe.put(eVar, new WeakReference<>(zzcVar2));
            return zzcVar2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        if (this.zzbf.containsKey(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
            sb.append("LifecycleCallback with tag ");
            sb.append(str);
            sb.append(" already added to this fragment.");
            throw new IllegalArgumentException(sb.toString());
        }
        this.zzbf.put(str, lifecycleCallback);
        if (this.zzbg > 0) {
            new zze(Looper.getMainLooper()).post(new zzd(this, lifecycleCallback, str));
        }
    }

    @Override // b.k.a.d
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzbf.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final /* synthetic */ Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzbg > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzbg >= 2;
    }

    @Override // b.k.a.d
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().onActivityResult(i2, i3, intent);
        }
    }

    @Override // b.k.a.d
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzbg = 1;
        this.zzbh = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.zzbf.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // b.k.a.d
    public final void onDestroy() {
        super.onDestroy();
        this.zzbg = 5;
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }

    @Override // b.k.a.d
    public final void onResume() {
        super.onResume();
        this.zzbg = 3;
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().onResume();
        }
    }

    @Override // b.k.a.d
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.zzbf.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // b.k.a.d
    public final void onStart() {
        super.onStart();
        this.zzbg = 2;
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().onStart();
        }
    }

    @Override // b.k.a.d
    public final void onStop() {
        super.onStop();
        this.zzbg = 4;
        Iterator<LifecycleCallback> it = this.zzbf.values().iterator();
        while (it.hasNext()) {
            it.next().onStop();
        }
    }
}
