package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public final class zzov {
    private final Handler handler;
    private final zzow zzbjf;

    public zzov(Handler handler, zzow zzowVar) {
        this.handler = zzowVar != null ? (Handler) zznr.checkNotNull(handler) : null;
        this.zzbjf = zzowVar;
    }

    public final void zza(int i2, int i3, int i4, float f2) {
        if (this.zzbjf != null) {
            this.handler.post(new zzpc(this, i2, i3, i4, f2));
        }
    }

    public final void zza(Surface surface) {
        if (this.zzbjf != null) {
            this.handler.post(new zzpb(this, surface));
        }
    }

    public final void zzb(String str, long j2, long j3) {
        if (this.zzbjf != null) {
            this.handler.post(new zzox(this, str, j2, j3));
        }
    }

    public final void zzc(zzgo zzgoVar) {
        if (this.zzbjf != null) {
            this.handler.post(new zzpa(this, zzgoVar));
        }
    }

    public final void zzc(zzil zzilVar) {
        if (this.zzbjf != null) {
            this.handler.post(new zzoy(this, zzilVar));
        }
    }

    public final void zzd(zzil zzilVar) {
        if (this.zzbjf != null) {
            this.handler.post(new zzpd(this, zzilVar));
        }
    }

    public final void zze(int i2, long j2) {
        if (this.zzbjf != null) {
            this.handler.post(new zzoz(this, i2, j2));
        }
    }
}
