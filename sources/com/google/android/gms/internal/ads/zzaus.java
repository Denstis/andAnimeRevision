package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class zzaus extends BroadcastReceiver {
    private final /* synthetic */ zzaul zzdta;

    private zzaus(zzaul zzaulVar) {
        this.zzdta = zzaulVar;
    }

    /* synthetic */ zzaus(zzaul zzaulVar, zzauo zzauoVar) {
        this(zzaulVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzdta.zzyf = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.zzdta.zzyf = false;
        }
    }
}
