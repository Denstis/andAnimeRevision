package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class zzcje<T> implements zzdcz<T> {
    private final /* synthetic */ String zzfze;
    private final /* synthetic */ long zzfzf;
    private final /* synthetic */ zzcjf zzfzg;

    zzcje(zzcjf zzcjfVar, String str, long j2) {
        this.zzfzg = zzcjfVar;
        this.zzfze = str;
        this.zzfzf = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void onSuccess(T t) {
        this.zzfzg.zza(this.zzfze, 0, this.zzfzg.zzbmp.elapsedRealtime() - this.zzfzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        long jElapsedRealtime = this.zzfzg.zzbmp.elapsedRealtime();
        int i2 = 3;
        if (th instanceof TimeoutException) {
            i2 = 2;
        } else if (!(th instanceof zzciv)) {
            i2 = th instanceof CancellationException ? 4 : ((th instanceof zzccu) && ((zzccu) th).getErrorCode() == 3) ? 1 : 6;
        }
        this.zzfzg.zza(this.zzfze, i2, jElapsedRealtime - this.zzfzf);
    }
}
