package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public class zzdby<V> extends zzdea implements zzddi<V> {
    private static final Object NULL;
    private static final zza zzgqd;
    private volatile zzd listeners;
    private volatile Object value;
    private volatile zzk waiters;
    private static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger zzgqc = Logger.getLogger(zzdby.class.getName());

    static abstract class zza {
        private zza() {
        }

        abstract void zza(zzk zzkVar, zzk zzkVar2);

        abstract void zza(zzk zzkVar, Thread thread);

        abstract boolean zza(zzdby<?> zzdbyVar, zzd zzdVar, zzd zzdVar2);

        abstract boolean zza(zzdby<?> zzdbyVar, zzk zzkVar, zzk zzkVar2);

        abstract boolean zza(zzdby<?> zzdbyVar, Object obj, Object obj2);
    }

    static final class zzb {
        static final zzb zzgqe = new zzb(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzdby.zzb.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable exception;

        zzb(Throwable th) {
            this.exception = (Throwable) zzdaq.checkNotNull(th);
        }
    }

    static final class zzc {
        static final zzc zzgqf;
        static final zzc zzgqg;
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (zzdby.GENERATE_CANCELLATION_CAUSES) {
                zzgqg = null;
                zzgqf = null;
            } else {
                zzgqg = new zzc(false, null);
                zzgqf = new zzc(true, null);
            }
        }

        zzc(boolean z, Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    static final class zzd {
        static final zzd zzgqh = new zzd(null, null);
        final Executor executor;
        zzd next;
        final Runnable task;

        zzd(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    static final class zze<V> implements Runnable {
        final zzddi<? extends V> future;
        final zzdby<V> zzgqi;

        zze(zzdby<V> zzdbyVar, zzddi<? extends V> zzddiVar) {
            this.zzgqi = zzdbyVar;
            this.future = zzddiVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzdby) this.zzgqi).value != this) {
                return;
            }
            if (zzdby.zzgqd.zza((zzdby<?>) this.zzgqi, (Object) this, zzdby.getFutureValue(this.future))) {
                zzdby.zza((zzdby<?>) this.zzgqi);
            }
        }
    }

    static final class zzf extends zza {
        final AtomicReferenceFieldUpdater<zzdby, zzd> listenersUpdater;
        final AtomicReferenceFieldUpdater<zzdby, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<zzk, zzk> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<zzk, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<zzdby, zzk> waitersUpdater;

        zzf(AtomicReferenceFieldUpdater<zzk, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<zzk, zzk> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzdby, zzk> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzdby, zzd> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzdby, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, zzk zzkVar2) {
            this.waiterNextUpdater.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, Thread thread) {
            this.waiterThreadUpdater.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzd zzdVar, zzd zzdVar2) {
            return this.listenersUpdater.compareAndSet(zzdbyVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzk zzkVar, zzk zzkVar2) {
            return this.waitersUpdater.compareAndSet(zzdbyVar, zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(zzdbyVar, obj, obj2);
        }
    }

    interface zzg<V> extends zzddi<V> {
    }

    static final class zzh extends zza {
        private zzh() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzd zzdVar, zzd zzdVar2) {
            synchronized (zzdbyVar) {
                if (((zzdby) zzdbyVar).listeners != zzdVar) {
                    return false;
                }
                ((zzdby) zzdbyVar).listeners = zzdVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzk zzkVar, zzk zzkVar2) {
            synchronized (zzdbyVar) {
                if (((zzdby) zzdbyVar).waiters != zzkVar) {
                    return false;
                }
                ((zzdby) zzdbyVar).waiters = zzkVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, Object obj, Object obj2) {
            synchronized (zzdbyVar) {
                if (((zzdby) zzdbyVar).value != obj) {
                    return false;
                }
                ((zzdby) zzdbyVar).value = obj2;
                return true;
            }
        }
    }

    static final class zzi extends zza {
        static final Unsafe zzgqj;
        static final long zzgqk;
        static final long zzgql;
        static final long zzgqm;
        static final long zzgqn;
        static final long zzgqo;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzdby.zzi.1
                    @Override // java.security.PrivilegedExceptionAction
                    public /* synthetic */ Unsafe run() throws IllegalAccessException {
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            }
            try {
                zzgql = unsafe.objectFieldOffset(zzdby.class.getDeclaredField("waiters"));
                zzgqk = unsafe.objectFieldOffset(zzdby.class.getDeclaredField("listeners"));
                zzgqm = unsafe.objectFieldOffset(zzdby.class.getDeclaredField("value"));
                zzgqn = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                zzgqo = unsafe.objectFieldOffset(zzk.class.getDeclaredField("next"));
                zzgqj = unsafe;
            } catch (Exception e3) {
                zzdav.zzf(e3);
                throw new RuntimeException(e3);
            }
        }

        private zzi() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, zzk zzkVar2) {
            zzgqj.putObject(zzkVar, zzgqo, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final void zza(zzk zzkVar, Thread thread) {
            zzgqj.putObject(zzkVar, zzgqn, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzd zzdVar, zzd zzdVar2) {
            return zzgqj.compareAndSwapObject(zzdbyVar, zzgqk, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, zzk zzkVar, zzk zzkVar2) {
            return zzgqj.compareAndSwapObject(zzdbyVar, zzgql, zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdby.zza
        final boolean zza(zzdby<?> zzdbyVar, Object obj, Object obj2) {
            return zzgqj.compareAndSwapObject(zzdbyVar, zzgqm, obj, obj2);
        }
    }

    static abstract class zzj<V> extends zzdby<V> implements zzg<V> {
        zzj() {
        }

        @Override // com.google.android.gms.internal.ads.zzdby, java.util.concurrent.Future
        public final V get(long j2, TimeUnit timeUnit) {
            return (V) super.get(j2, timeUnit);
        }
    }

    static final class zzk {
        static final zzk zzgqp = new zzk(false);
        volatile zzk next;
        volatile Thread thread;

        zzk() {
            zzdby.zzgqd.zza(this, Thread.currentThread());
        }

        private zzk(boolean z) {
        }

        final void zzb(zzk zzkVar) {
            zzdby.zzgqd.zza(this, zzkVar);
        }
    }

    static {
        Throwable th;
        Throwable th2;
        zza zzhVar;
        try {
            zzhVar = new zzi();
            th = null;
            th2 = null;
        } catch (Throwable th3) {
            try {
                th = null;
                th2 = th3;
                zzhVar = new zzf(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zzdby.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzdby.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzdby.class, Object.class, "value"));
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                zzhVar = new zzh();
            }
        }
        zzgqd = zzhVar;
        if (th != null) {
            zzgqc.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzgqc.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    protected zzdby() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object getFutureValue(zzddi<?> zzddiVar) {
        Throwable thZza;
        if (zzddiVar instanceof zzg) {
            Object obj = ((zzdby) zzddiVar).value;
            if (!(obj instanceof zzc)) {
                return obj;
            }
            zzc zzcVar = (zzc) obj;
            if (!zzcVar.wasInterrupted) {
                return obj;
            }
            Throwable th = zzcVar.cause;
            return th != null ? new zzc(false, th) : zzc.zzgqg;
        }
        if ((zzddiVar instanceof zzdea) && (thZza = zzded.zza((zzdea) zzddiVar)) != null) {
            return new zzb(thZza);
        }
        boolean zIsCancelled = zzddiVar.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            return zzc.zzgqg;
        }
        try {
            Object objZza = zza(zzddiVar);
            if (!zIsCancelled) {
                return objZza == null ? NULL : objZza;
            }
            String strValueOf = String.valueOf(zzddiVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(strValueOf);
            return new zzc(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new zzc(false, e2);
            }
            String strValueOf2 = String.valueOf(zzddiVar);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 77);
            sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb2.append(strValueOf2);
            return new zzb(new IllegalArgumentException(sb2.toString(), e2));
        } catch (ExecutionException e3) {
            if (!zIsCancelled) {
                return new zzb(e3.getCause());
            }
            String strValueOf3 = String.valueOf(zzddiVar);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf3).length() + 84);
            sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb3.append(strValueOf3);
            return new zzc(false, new IllegalArgumentException(sb3.toString(), e3));
        } catch (Throwable th2) {
            return new zzb(th2);
        }
    }

    private static <V> V zza(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private final void zza(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 == zzk.zzgqp) {
                return;
            }
            zzk zzkVar3 = null;
            while (zzkVar2 != null) {
                zzk zzkVar4 = zzkVar2.next;
                if (zzkVar2.thread != null) {
                    zzkVar3 = zzkVar2;
                } else if (zzkVar3 != null) {
                    zzkVar3.next = zzkVar4;
                    if (zzkVar3.thread == null) {
                        break;
                    }
                } else if (zzgqd.zza((zzdby<?>) this, zzkVar2, zzkVar4)) {
                }
                zzkVar2 = zzkVar4;
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void zza(zzdby<?> zzdbyVar) {
        zzd zzdVar;
        zzd zzdVar2;
        zzd zzdVar3 = null;
        while (true) {
            zzk zzkVar = ((zzdby) zzdbyVar).waiters;
            if (zzgqd.zza(zzdbyVar, zzkVar, zzk.zzgqp)) {
                while (zzkVar != null) {
                    Thread thread = zzkVar.thread;
                    if (thread != null) {
                        zzkVar.thread = null;
                        LockSupport.unpark(thread);
                    }
                    zzkVar = zzkVar.next;
                }
                zzdbyVar.afterDone();
                do {
                    zzdVar = ((zzdby) zzdbyVar).listeners;
                } while (!zzgqd.zza(zzdbyVar, zzdVar, zzd.zzgqh));
                while (true) {
                    zzdVar2 = zzdVar3;
                    zzdVar3 = zzdVar;
                    if (zzdVar3 == null) {
                        break;
                    }
                    zzdVar = zzdVar3.next;
                    zzdVar3.next = zzdVar2;
                }
                while (zzdVar2 != null) {
                    zzdVar3 = zzdVar2.next;
                    Runnable runnable = zzdVar2.task;
                    if (runnable instanceof zze) {
                        zze zzeVar = (zze) runnable;
                        zzdbyVar = zzeVar.zzgqi;
                        if (((zzdby) zzdbyVar).value == zzeVar) {
                            if (!zzgqd.zza((zzdby<?>) zzdbyVar, (Object) zzeVar, getFutureValue(zzeVar.future))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        zza(runnable, zzdVar2.executor);
                    }
                    zzdVar2 = zzdVar3;
                }
                return;
            }
        }
    }

    private static void zza(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = zzgqc;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 57 + String.valueOf(strValueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(strValueOf);
            sb.append(" with executor ");
            sb.append(strValueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e2);
        }
    }

    private final void zza(StringBuilder sb) {
        String str = "]";
        try {
            Object objZza = zza(this);
            sb.append("SUCCESS, result=[");
            sb.append(zzag(objZza));
            sb.append("]");
        } catch (CancellationException unused) {
            str = "CANCELLED";
            sb.append(str);
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            str = " thrown from get()]";
            sb.append(str);
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static V zzaf(Object obj) throws ExecutionException {
        if (obj instanceof zzc) {
            Throwable th = ((zzc) obj).cause;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzb) {
            throw new ExecutionException(((zzb) obj).exception);
        }
        if (obj == NULL) {
            return null;
        }
        return obj;
    }

    private final String zzag(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public void addListener(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzdaq.checkNotNull(runnable, "Runnable was null.");
        zzdaq.checkNotNull(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listeners) != zzd.zzgqh) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (zzgqd.zza((zzdby<?>) this, zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.listeners;
                }
            } while (zzdVar != zzd.zzgqh);
        }
        zza(runnable, executor);
    }

    protected void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof zze)) {
            return false;
        }
        zzc zzcVar = GENERATE_CANCELLATION_CAUSES ? new zzc(z, new CancellationException("Future.cancel() was called.")) : z ? zzc.zzgqf : zzc.zzgqg;
        boolean z2 = false;
        Object obj2 = obj;
        zzdby<V> zzdbyVar = this;
        while (true) {
            if (zzgqd.zza((zzdby<?>) zzdbyVar, obj2, (Object) zzcVar)) {
                zza((zzdby<?>) zzdbyVar);
                if (!(obj2 instanceof zze)) {
                    return true;
                }
                zzddi<? extends V> zzddiVar = ((zze) obj2).future;
                if (!(zzddiVar instanceof zzg)) {
                    zzddiVar.cancel(z);
                    return true;
                }
                zzdbyVar = (zzdby) zzddiVar;
                obj2 = zzdbyVar.value;
                if (!(obj2 == null) && !(obj2 instanceof zze)) {
                    return true;
                }
                z2 = true;
            } else {
                obj2 = zzdbyVar.value;
                if (!(obj2 instanceof zze)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && (!(obj2 instanceof zze))) {
            return (V) zzaf(obj2);
        }
        zzk zzkVar = this.waiters;
        if (zzkVar != zzk.zzgqp) {
            zzk zzkVar2 = new zzk();
            do {
                zzkVar2.zzb(zzkVar);
                if (zzgqd.zza((zzdby<?>) this, zzkVar, zzkVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            zza(zzkVar2);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & (!(obj instanceof zze))));
                    return (V) zzaf(obj);
                }
                zzkVar = this.waiters;
            } while (zzkVar != zzk.zzgqp);
        }
        return (V) zzaf(this.value);
    }

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof zze))) {
            return (V) zzaf(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            zzk zzkVar = this.waiters;
            if (zzkVar != zzk.zzgqp) {
                zzk zzkVar2 = new zzk();
                do {
                    zzkVar2.zzb(zzkVar);
                    if (zzgqd.zza((zzdby<?>) this, zzkVar, zzkVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                zza(zzkVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof zze))) {
                                return (V) zzaf(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        zza(zzkVar2);
                    } else {
                        zzkVar = this.waiters;
                    }
                } while (zzkVar != zzk.zzgqp);
            }
            return (V) zzaf(this.value);
        }
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null) && (!(obj3 instanceof zze))) {
                return (V) zzaf(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
        String lowerCase2 = timeUnit.toString().toLowerCase(Locale.ROOT);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
        sb.append("Waited ");
        sb.append(j2);
        sb.append(" ");
        sb.append(lowerCase2);
        String string2 = sb.toString();
        if (nanos + 1000 < 0) {
            String strConcat = String.valueOf(string2).concat(" (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strValueOf = String.valueOf(strConcat);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 21 + String.valueOf(lowerCase).length());
                sb2.append(strValueOf);
                sb2.append(jConvert);
                sb2.append(" ");
                sb2.append(lowerCase);
                String string3 = sb2.toString();
                if (z) {
                    string3 = String.valueOf(string3).concat(",");
                }
                strConcat = String.valueOf(string3).concat(" ");
            }
            if (z) {
                String strValueOf2 = String.valueOf(strConcat);
                StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf2).length() + 33);
                sb3.append(strValueOf2);
                sb3.append(nanos2);
                sb3.append(" nanoseconds ");
                strConcat = sb3.toString();
            }
            string2 = String.valueOf(strConcat).concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(String.valueOf(string2).concat(" but future completed as timeout expired"));
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(string2).length() + 5 + String.valueOf(string).length());
        sb4.append(string2);
        sb4.append(" for ");
        sb4.append(string);
        throw new TimeoutException(sb4.toString());
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzc;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof zze)) & (this.value != null);
    }

    final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String pendingToString() {
        Object obj = this.value;
        if (obj instanceof zze) {
            String strZzag = zzag(((zze) obj).future);
            StringBuilder sb = new StringBuilder(String.valueOf(strZzag).length() + 12);
            sb.append("setFuture=[");
            sb.append(strZzag);
            sb.append("]");
            return sb.toString();
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb2 = new StringBuilder(41);
        sb2.append("remaining delay=[");
        sb2.append(delay);
        sb2.append(" ms]");
        return sb2.toString();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected boolean set(V v) {
        if (v == null) {
            v = (V) NULL;
        }
        if (!zzgqd.zza((zzdby<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        zza((zzdby<?>) this);
        return true;
    }

    protected boolean setException(Throwable th) {
        if (!zzgqd.zza((zzdby<?>) this, (Object) null, (Object) new zzb((Throwable) zzdaq.checkNotNull(th)))) {
            return false;
        }
        zza((zzdby<?>) this);
        return true;
    }

    protected final boolean setFuture(zzddi<? extends V> zzddiVar) {
        zzb zzbVar;
        zzdaq.checkNotNull(zzddiVar);
        Object obj = this.value;
        if (obj == null) {
            if (zzddiVar.isDone()) {
                if (!zzgqd.zza((zzdby<?>) this, (Object) null, getFutureValue(zzddiVar))) {
                    return false;
                }
                zza((zzdby<?>) this);
                return true;
            }
            zze zzeVar = new zze(this, zzddiVar);
            if (zzgqd.zza((zzdby<?>) this, (Object) null, (Object) zzeVar)) {
                try {
                    zzddiVar.addListener(zzeVar, zzdcq.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzbVar = new zzb(th);
                    } catch (Throwable unused) {
                        zzbVar = zzb.zzgqe;
                    }
                    zzgqd.zza((zzdby<?>) this, (Object) zzeVar, (Object) zzbVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zzc) {
            zzddiVar.cancel(((zzc) obj).wasInterrupted);
        }
        return false;
    }

    public String toString() {
        String string;
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (!isCancelled()) {
            if (isDone()) {
                zza(sb);
            } else {
                try {
                    string = pendingToString();
                } catch (RuntimeException e2) {
                    String strValueOf = String.valueOf(e2.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 38);
                    sb2.append("Exception thrown from implementation: ");
                    sb2.append(strValueOf);
                    string = sb2.toString();
                }
                if (string == null || string.isEmpty()) {
                    str = isDone() ? "CANCELLED" : "PENDING";
                    zza(sb);
                } else {
                    sb.append("PENDING, info=[");
                    sb.append(string);
                    sb.append("]");
                }
            }
            sb.append("]");
            return sb.toString();
        }
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }

    protected final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof zzc) && ((zzc) obj).wasInterrupted;
    }

    @Override // com.google.android.gms.internal.ads.zzdea
    protected final Throwable zzaow() {
        if (!(this instanceof zzg)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof zzb) {
            return ((zzb) obj).exception;
        }
        return null;
    }
}
