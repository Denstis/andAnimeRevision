package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdcf {
    private static final Logger zzgqc = Logger.getLogger(zzdcf.class.getName());
    private static final zza zzgqw;
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    static abstract class zza {
        private zza() {
        }

        abstract void zza(zzdcf zzdcfVar, Set<Throwable> set, Set<Throwable> set2);

        abstract int zzd(zzdcf zzdcfVar);
    }

    static final class zzb extends zza {
        private zzb() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdcf.zza
        final void zza(zzdcf zzdcfVar, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (zzdcfVar) {
                if (zzdcfVar.seenExceptions == null) {
                    zzdcfVar.seenExceptions = set2;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdcf.zza
        final int zzd(zzdcf zzdcfVar) {
            int i2;
            synchronized (zzdcfVar) {
                zzdcf.zzb(zzdcfVar);
                i2 = zzdcfVar.remaining;
            }
            return i2;
        }
    }

    static final class zzc extends zza {
        private final AtomicReferenceFieldUpdater<zzdcf, Set<Throwable>> zzgra;
        private final AtomicIntegerFieldUpdater<zzdcf> zzgrb;

        zzc(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.zzgra = atomicReferenceFieldUpdater;
            this.zzgrb = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.zzdcf.zza
        final void zza(zzdcf zzdcfVar, Set<Throwable> set, Set<Throwable> set2) {
            this.zzgra.compareAndSet(zzdcfVar, null, set2);
        }

        @Override // com.google.android.gms.internal.ads.zzdcf.zza
        final int zzd(zzdcf zzdcfVar) {
            return this.zzgrb.decrementAndGet(zzdcfVar);
        }
    }

    static {
        zza zzbVar;
        Throwable th;
        try {
            zzbVar = new zzc(AtomicReferenceFieldUpdater.newUpdater(zzdcf.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzdcf.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            zzbVar = new zzb();
            th = th2;
        }
        zzgqw = zzbVar;
        if (th != null) {
            zzgqc.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    zzdcf(int i2) {
        this.remaining = i2;
    }

    static /* synthetic */ int zzb(zzdcf zzdcfVar) {
        int i2 = zzdcfVar.remaining;
        zzdcfVar.remaining = i2 - 1;
        return i2;
    }

    final Set<Throwable> zzape() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set<Throwable> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        zzg(setNewSetFromMap);
        zzgqw.zza(this, null, setNewSetFromMap);
        return this.seenExceptions;
    }

    final int zzapf() {
        return zzgqw.zzd(this);
    }

    abstract void zzg(Set<Throwable> set);
}
