package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class zabb extends com.google.android.gms.internal.base.zap {
    private final /* synthetic */ zaaw zahh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zabb(zaaw zaawVar, Looper looper) {
        super(looper);
        this.zahh = zaawVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            this.zahh.zaav();
            return;
        }
        if (i2 == 2) {
            this.zahh.resume();
            return;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("Unknown message id: ");
        sb.append(i2);
        Log.w("GoogleApiClientImpl", sb.toString());
    }
}
