package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class zzdac extends Handler {
    private static volatile zzdaf zzgok;

    public zzdac() {
    }

    public zzdac(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zzb(message);
    }

    protected void zzb(Message message) {
        super.dispatchMessage(message);
    }
}
