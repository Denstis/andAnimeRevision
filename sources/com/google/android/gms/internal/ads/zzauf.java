package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final class zzauf extends zzdac {
    public zzauf(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AdMobHandler.handleMessage");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdac
    protected final void zzb(Message message) {
        try {
            super.zzb(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzq.zzkj();
            zzaul.zza(com.google.android.gms.ads.internal.zzq.zzkn().getApplicationContext(), th);
            throw th;
        }
    }
}
