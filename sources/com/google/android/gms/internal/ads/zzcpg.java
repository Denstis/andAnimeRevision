package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzcrr;

/* JADX INFO: loaded from: classes.dex */
final class zzcpg<S extends zzcrr<?>> {
    private final Clock zzbmp;
    public final zzddi<S> zzgfb;
    private final long zzgfc;

    public zzcpg(zzddi<S> zzddiVar, long j2, Clock clock) {
        this.zzgfb = zzddiVar;
        this.zzbmp = clock;
        this.zzgfc = clock.elapsedRealtime() + j2;
    }

    public final boolean hasExpired() {
        return this.zzgfc < this.zzbmp.elapsedRealtime();
    }
}
