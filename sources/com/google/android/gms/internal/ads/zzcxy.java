package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzcxy<O> {
    private final E zzgll;
    private final String zzglm;
    private final List<zzddi<?>> zzglq;
    final /* synthetic */ zzcxs zzglr;
    private final zzddi<?> zzglu;
    private final zzddi<O> zzglv;

    private zzcxy(zzcxs zzcxsVar, E e2, String str, zzddi<?> zzddiVar, List<zzddi<?>> list, zzddi<O> zzddiVar2) {
        this.zzglr = zzcxsVar;
        this.zzgll = e2;
        this.zzglm = str;
        this.zzglu = zzddiVar;
        this.zzglq = list;
        this.zzglv = zzddiVar2;
    }

    private final <O2> zzcxy<O2> zza(zzdcj<O, O2> zzdcjVar, Executor executor) {
        return new zzcxy<>(this.zzglr, this.zzgll, this.zzglm, this.zzglu, this.zzglq, zzdcy.zzb(this.zzglv, zzdcjVar, executor));
    }

    public final zzcxy<O> zza(long j2, TimeUnit timeUnit) {
        zzcxs zzcxsVar = this.zzglr;
        return new zzcxy<>(zzcxsVar, this.zzgll, this.zzglm, this.zzglu, this.zzglq, zzdcy.zza(this.zzglv, j2, timeUnit, zzcxsVar.zzfcx));
    }

    public final <O2> zzcxy<O2> zza(zzdcj<O, O2> zzdcjVar) {
        return zza(zzdcjVar, this.zzglr.zzfoa);
    }

    public final <T extends Throwable> zzcxy<O> zza(Class<T> cls, final zzcxn<T, O> zzcxnVar) {
        return zza(cls, new zzdcj(zzcxnVar) { // from class: com.google.android.gms.internal.ads.zzcxz
            private final zzcxn zzglt;

            {
                this.zzglt = zzcxnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return zzdcy.zzah(this.zzglt.apply((Throwable) obj));
            }
        });
    }

    public final <T extends Throwable> zzcxy<O> zza(Class<T> cls, zzdcj<T, O> zzdcjVar) {
        zzcxs zzcxsVar = this.zzglr;
        return new zzcxy<>(zzcxsVar, this.zzgll, this.zzglm, this.zzglu, this.zzglq, zzdcy.zzb(this.zzglv, cls, zzdcjVar, zzcxsVar.zzfoa));
    }

    public final zzcxp<E, O> zzant() {
        E e2 = this.zzgll;
        String strZzv = this.zzglm;
        if (strZzv == null) {
            strZzv = this.zzglr.zzv(e2);
        }
        final zzcxp<E, O> zzcxpVar = new zzcxp<>(e2, strZzv, this.zzglv);
        this.zzglr.zzglp.zza(zzcxpVar);
        this.zzglu.addListener(new Runnable(this, zzcxpVar) { // from class: com.google.android.gms.internal.ads.zzcyc
            private final zzcxy zzgly;
            private final zzcxp zzglz;

            {
                this.zzgly = this;
                this.zzglz = zzcxpVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcxy zzcxyVar = this.zzgly;
                zzcxyVar.zzglr.zzglp.zzb(this.zzglz);
            }
        }, zzaxn.zzdwn);
        zzdcy.zza(zzcxpVar, new zzcyb(this, zzcxpVar), zzaxn.zzdwn);
        return zzcxpVar;
    }

    public final <O2> zzcxy<O2> zzb(final zzcxn<O, O2> zzcxnVar) {
        return zza(new zzdcj(zzcxnVar) { // from class: com.google.android.gms.internal.ads.zzcxx
            private final zzcxn zzglt;

            {
                this.zzglt = zzcxnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return zzdcy.zzah(this.zzglt.apply(obj));
            }
        });
    }

    public final <O2> zzcxy<O2> zzb(final zzddi<O2> zzddiVar) {
        return zza(new zzdcj(zzddiVar) { // from class: com.google.android.gms.internal.ads.zzcya
            private final zzddi zzfov;

            {
                this.zzfov = zzddiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfov;
            }
        }, zzaxn.zzdwn);
    }

    public final zzcxy<O> zzgi(String str) {
        return new zzcxy<>(this.zzglr, this.zzgll, str, this.zzglu, this.zzglq, this.zzglv);
    }

    public final zzcxy<O> zzw(E e2) {
        return this.zzglr.zza((Object) e2, (zzddi) zzant());
    }
}
