package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class zzph extends BroadcastReceiver {
    private final /* synthetic */ zzpf zzbnv;

    zzph(zzpf zzpfVar) {
        this.zzbnv = zzpfVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzbnv.zzbm(3);
    }
}
