package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzaze {
    private long zzdyz;
    private final long zzdyy = TimeUnit.MILLISECONDS.toNanos(((Long) zzuv.zzon().zzd(zzza.zzchq)).longValue());
    private boolean zzdza = true;

    zzaze() {
    }

    public final void zza(SurfaceTexture surfaceTexture, zzayr zzayrVar) {
        if (zzayrVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.zzdza || Math.abs(timestamp - this.zzdyz) >= this.zzdyy) {
            this.zzdza = false;
            this.zzdyz = timestamp;
            zzaul.zzdsu.post(new zzazd(this, zzayrVar));
        }
    }

    public final void zzww() {
        this.zzdza = true;
    }
}
