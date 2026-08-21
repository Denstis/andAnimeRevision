package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzatp {
    private long zzdqb = -1;
    private long zzdqc = -1;
    private final /* synthetic */ zzatq zzdqd;

    public zzatp(zzatq zzatqVar) {
        this.zzdqd = zzatqVar;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.zzdqb);
        bundle.putLong("tclose", this.zzdqc);
        return bundle;
    }

    public final long zztu() {
        return this.zzdqc;
    }

    public final void zztv() {
        this.zzdqc = this.zzdqd.zzbmp.elapsedRealtime();
    }

    public final void zztw() {
        this.zzdqb = this.zzdqd.zzbmp.elapsedRealtime();
    }
}
