package i;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f5038d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f5041c;

    final class a extends t {
        a() {
        }

        @Override // i.t
        public t a(long j2) {
            return this;
        }

        @Override // i.t
        public t a(long j2, TimeUnit timeUnit) {
            return this;
        }

        @Override // i.t
        public void e() {
        }
    }

    public t a() {
        this.f5039a = false;
        return this;
    }

    public t a(long j2) {
        this.f5039a = true;
        this.f5040b = j2;
        return this;
    }

    public t a(long j2, TimeUnit timeUnit) {
        if (j2 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f5041c = timeUnit.toNanos(j2);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j2);
    }

    public t b() {
        this.f5041c = 0L;
        return this;
    }

    public long c() {
        if (this.f5039a) {
            return this.f5040b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f5039a;
    }

    public void e() throws InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f5039a && this.f5040b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public long f() {
        return this.f5041c;
    }
}
