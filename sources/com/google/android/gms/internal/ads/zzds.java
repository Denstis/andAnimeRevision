package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzds implements zzdu {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Bundle zzxg;

    zzds(zzdm zzdmVar, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzxg = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.val$activity, this.zzxg);
    }
}
