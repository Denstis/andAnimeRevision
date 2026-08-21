package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class zzawt extends BroadcastReceiver {
    private final /* synthetic */ zzawu zzdvf;

    zzawt(zzawu zzawuVar) {
        this.zzdvf = zzawuVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzdvf.zzc(context, intent);
    }
}
