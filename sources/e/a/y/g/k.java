package e.a.y.g;

import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f4326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f4327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f4328c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f4329d = new ConcurrentHashMap();

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f4330a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f4331b;

        a() {
        }

        void a(Properties properties) {
            if (properties.containsKey("rx2.purge-enabled")) {
                this.f4330a = Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled"));
            } else {
                this.f4330a = true;
            }
            if (this.f4330a && properties.containsKey("rx2.purge-period-seconds")) {
                try {
                    this.f4331b = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
                    return;
                } catch (NumberFormatException unused) {
                }
            }
            this.f4331b = 1;
        }
    }

    static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (ScheduledThreadPoolExecutor scheduledThreadPoolExecutor : new ArrayList(k.f4329d.keySet())) {
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    k.f4329d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        a aVar = new a();
        aVar.a(properties);
        f4326a = aVar.f4330a;
        f4327b = aVar.f4331b;
        a();
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        a(f4326a, scheduledExecutorServiceNewScheduledThreadPool);
        return scheduledExecutorServiceNewScheduledThreadPool;
    }

    public static void a() {
        a(f4326a);
    }

    static void a(boolean z) {
        if (!z) {
            return;
        }
        while (true) {
            ScheduledExecutorService scheduledExecutorService = f4328c.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new g("RxSchedulerPurge"));
            if (f4328c.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                b bVar = new b();
                int i2 = f4327b;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(bVar, i2, i2, TimeUnit.SECONDS);
                return;
            }
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }

    static void a(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f4329d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }
}
