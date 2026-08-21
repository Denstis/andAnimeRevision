package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzzd implements Callable<Void> {
    private final /* synthetic */ Context val$context;

    zzzd(Context context) {
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        zzuv.zzon().initialize(this.val$context);
        return null;
    }
}
