package com.google.firebase.iid;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzc implements Executor {
    static final Executor zza = new zzc();

    private zzc() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
