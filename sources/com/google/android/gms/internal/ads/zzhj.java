package com.google.android.gms.internal.ads;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class zzhj {
    private final Handler handler;
    private final zzhg zzahe;

    public zzhj(Handler handler, zzhg zzhgVar) {
        this.handler = zzhgVar != null ? (Handler) zznr.checkNotNull(handler) : null;
        this.zzahe = zzhgVar;
    }

    public final void zzb(int i2, long j2, long j3) {
        if (this.zzahe != null) {
            this.handler.post(new zzhn(this, i2, j2, j3));
        }
    }

    public final void zzb(String str, long j2, long j3) {
        if (this.zzahe != null) {
            this.handler.post(new zzhl(this, str, j2, j3));
        }
    }

    public final void zzc(zzgo zzgoVar) {
        if (this.zzahe != null) {
            this.handler.post(new zzhk(this, zzgoVar));
        }
    }

    public final void zzc(zzil zzilVar) {
        if (this.zzahe != null) {
            this.handler.post(new zzhi(this, zzilVar));
        }
    }

    public final void zzd(zzil zzilVar) {
        if (this.zzahe != null) {
            this.handler.post(new zzhm(this, zzilVar));
        }
    }

    public final void zzr(int i2) {
        if (this.zzahe != null) {
            this.handler.post(new zzhp(this, i2));
        }
    }
}
