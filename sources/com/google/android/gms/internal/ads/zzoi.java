package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
final class zzoi implements ThreadFactory {
    private final /* synthetic */ String zzbgy;

    zzoi(String str) {
        this.zzbgy = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zzbgy);
    }
}
