package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
final class zzbz extends ContentObserver {
    private final /* synthetic */ zzbx zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbz(zzbx zzbxVar, Handler handler) {
        super(null);
        this.zza = zzbxVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zza.zzb();
    }
}
