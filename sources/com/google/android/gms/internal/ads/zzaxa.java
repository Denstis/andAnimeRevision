package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaxa extends Thread {
    private final /* synthetic */ String zzduo;

    zzaxa(zzawx zzawxVar, String str) {
        this.zzduo = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzaxm().zzei(this.zzduo);
    }
}
