package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
final class zzdda<V> implements Runnable {
    private final Future<V> zzgrm;
    private final zzdcz<? super V> zzgrn;

    zzdda(Future<V> future, zzdcz<? super V> zzdczVar) {
        this.zzgrm = future;
        this.zzgrn = zzdczVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzgrn.onSuccess(zzdcy.zzb(this.zzgrm));
        } catch (Error e2) {
            e = e2;
            this.zzgrn.zzb(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.zzgrn.zzb(e);
        } catch (ExecutionException e4) {
            this.zzgrn.zzb(e4.getCause());
        }
    }

    public final String toString() {
        return zzdak.zzx(this).zzy(this.zzgrn).toString();
    }
}
