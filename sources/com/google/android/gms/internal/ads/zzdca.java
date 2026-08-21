package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdca<I, O, F, T> extends zzdcv<O> implements Runnable {
    private zzddi<? extends I> zzgpz;
    private F zzgqq;

    zzdca(zzddi<? extends I> zzddiVar, F f2) {
        this.zzgpz = (zzddi) zzdaq.checkNotNull(zzddiVar);
        this.zzgqq = (F) zzdaq.checkNotNull(f2);
    }

    static <I, O> zzddi<O> zza(zzddi<I> zzddiVar, zzdal<? super I, ? extends O> zzdalVar, Executor executor) {
        zzdaq.checkNotNull(zzdalVar);
        zzdcc zzdccVar = new zzdcc(zzddiVar, zzdalVar);
        zzddiVar.addListener(zzdccVar, zzddk.zza(executor, zzdccVar));
        return zzdccVar;
    }

    static <I, O> zzddi<O> zza(zzddi<I> zzddiVar, zzdcj<? super I, ? extends O> zzdcjVar, Executor executor) {
        zzdaq.checkNotNull(executor);
        zzdcd zzdcdVar = new zzdcd(zzddiVar, zzdcjVar);
        zzddiVar.addListener(zzdcdVar, zzddk.zza(executor, zzdcdVar));
        return zzdcdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final void afterDone() {
        maybePropagateCancellationTo(this.zzgpz);
        this.zzgpz = null;
        this.zzgqq = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final String pendingToString() {
        String string;
        zzddi<? extends I> zzddiVar = this.zzgpz;
        F f2 = this.zzgqq;
        String strPendingToString = super.pendingToString();
        if (zzddiVar != null) {
            String strValueOf = String.valueOf(zzddiVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(strValueOf);
            sb.append("], ");
            string = sb.toString();
        } else {
            string = "";
        }
        if (f2 == null) {
            if (strPendingToString == null) {
                return null;
            }
            String strValueOf2 = String.valueOf(string);
            String strValueOf3 = String.valueOf(strPendingToString);
            return strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
        }
        String strValueOf4 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 11 + String.valueOf(strValueOf4).length());
        sb2.append(string);
        sb2.append("function=[");
        sb2.append(strValueOf4);
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzddi<? extends I> zzddiVar = this.zzgpz;
        F f2 = this.zzgqq;
        if ((isCancelled() | (zzddiVar == null)) || (f2 == null)) {
            return;
        }
        this.zzgpz = null;
        if (zzddiVar.isCancelled()) {
            setFuture(zzddiVar);
            return;
        }
        try {
            try {
                Object objZzc = zzc(f2, zzdcy.zzb(zzddiVar));
                this.zzgqq = null;
                setResult(objZzc);
            } catch (Throwable th) {
                try {
                    setException(th);
                } finally {
                    this.zzgqq = null;
                }
            }
        } catch (Error e2) {
            setException(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            setException(e3);
        } catch (ExecutionException e4) {
            setException(e4.getCause());
        }
    }

    abstract void setResult(T t);

    abstract T zzc(F f2, I i2);
}
