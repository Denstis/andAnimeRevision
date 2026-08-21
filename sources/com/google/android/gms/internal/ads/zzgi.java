package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class zzgi extends Handler {
    private final /* synthetic */ zzgj zzaco;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgi(zzgj zzgjVar, Looper looper) {
        super(looper);
        this.zzaco = zzgjVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzaco.zza(message);
    }
}
