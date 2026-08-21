package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class zzbov implements Runnable {
    private final WeakReference<zzbou> zzfhf;

    private zzbov(zzbou zzbouVar) {
        this.zzfhf = new WeakReference<>(zzbouVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbou zzbouVar = this.zzfhf.get();
        if (zzbouVar != null) {
            zzbouVar.zzagb();
        }
    }
}
