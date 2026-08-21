package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class zzahj implements Runnable {
    private final /* synthetic */ String zzczl;
    private final /* synthetic */ zzahc zzczm;

    zzahj(zzahc zzahcVar, String str) {
        this.zzczm = zzahcVar;
        this.zzczl = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzczm.zzczi.loadData(this.zzczl, "text/html", C.UTF8_NAME);
    }
}
