package com.google.firebase.iid;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzd implements ThreadFactory {
    static final ThreadFactory zza = new zzd();

    private zzd() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return zza.zza(runnable);
    }
}
