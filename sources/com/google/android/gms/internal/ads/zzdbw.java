package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdbw<V, X extends Throwable, F, T> extends zzdcv<V> implements Runnable {
    private zzddi<? extends V> zzgpz;
    private Class<X> zzgqa;
    private F zzgqb;

    zzdbw(zzddi<? extends V> zzddiVar, Class<X> cls, F f2) {
        this.zzgpz = (zzddi) zzdaq.checkNotNull(zzddiVar);
        this.zzgqa = (Class) zzdaq.checkNotNull(cls);
        this.zzgqb = (F) zzdaq.checkNotNull(f2);
    }

    static <X extends Throwable, V> zzddi<V> zza(zzddi<? extends V> zzddiVar, Class<X> cls, zzdcj<? super X, ? extends V> zzdcjVar, Executor executor) {
        zzdbz zzdbzVar = new zzdbz(zzddiVar, cls, zzdcjVar);
        zzddiVar.addListener(zzdbzVar, zzddk.zza(executor, zzdbzVar));
        return zzdbzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final void afterDone() {
        maybePropagateCancellationTo(this.zzgpz);
        this.zzgpz = null;
        this.zzgqa = null;
        this.zzgqb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    protected final String pendingToString() {
        String string;
        zzddi<? extends V> zzddiVar = this.zzgpz;
        Class<X> cls = this.zzgqa;
        F f2 = this.zzgqb;
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
        if (cls == null || f2 == null) {
            if (strPendingToString == null) {
                return null;
            }
            String strValueOf2 = String.valueOf(string);
            String strValueOf3 = String.valueOf(strPendingToString);
            return strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
        }
        String strValueOf4 = String.valueOf(cls);
        String strValueOf5 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 29 + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length());
        sb2.append(string);
        sb2.append("exceptionType=[");
        sb2.append(strValueOf4);
        sb2.append("], fallback=[");
        sb2.append(strValueOf5);
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        Object objZzb;
        zzddi<? extends V> zzddiVar = this.zzgpz;
        Class<X> cls = this.zzgqa;
        F f2 = this.zzgqb;
        if (((f2 == null) | (zzddiVar == null) | (cls == null)) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.zzgpz = null;
        try {
            objZzb = zzdcy.zzb(zzddiVar);
            th = null;
        } catch (ExecutionException e2) {
            th = (Throwable) zzdaq.checkNotNull(e2.getCause());
            objZzb = null;
        } catch (Throwable th) {
            th = th;
            objZzb = null;
        }
        if (th == null) {
            set(objZzb);
            return;
        }
        if (!cls.isInstance(th)) {
            setFuture(zzddiVar);
            return;
        }
        try {
            Object objZza = zza(f2, th);
            this.zzgqa = null;
            this.zzgqb = null;
            setResult(objZza);
        } catch (Throwable th2) {
            try {
                setException(th2);
            } finally {
                this.zzgqa = null;
                this.zzgqb = null;
            }
        }
    }

    abstract void setResult(T t);

    abstract T zza(F f2, X x);
}
