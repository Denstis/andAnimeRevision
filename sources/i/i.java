package i;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class i extends t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f5004e;

    public i(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5004e = tVar;
    }

    public final i a(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5004e = tVar;
        return this;
    }

    @Override // i.t
    public t a() {
        return this.f5004e.a();
    }

    @Override // i.t
    public t a(long j2) {
        return this.f5004e.a(j2);
    }

    @Override // i.t
    public t a(long j2, TimeUnit timeUnit) {
        return this.f5004e.a(j2, timeUnit);
    }

    @Override // i.t
    public t b() {
        return this.f5004e.b();
    }

    @Override // i.t
    public long c() {
        return this.f5004e.c();
    }

    @Override // i.t
    public boolean d() {
        return this.f5004e.d();
    }

    @Override // i.t
    public void e() throws InterruptedIOException {
        this.f5004e.e();
    }

    public final t g() {
        return this.f5004e;
    }
}
