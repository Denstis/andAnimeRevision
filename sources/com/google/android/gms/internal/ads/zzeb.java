package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzeb implements Runnable {
    private final /* synthetic */ zzdx zzyj;

    zzeb(zzdx zzdxVar) {
        this.zzyj = zzdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzza.initialize(this.zzyj.zzlk);
    }
}
