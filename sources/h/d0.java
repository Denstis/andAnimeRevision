package h;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class d0 implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Reader f4490b;

    final class a extends d0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ v f4491c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f4492d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ i.e f4493e;

        a(v vVar, long j2, i.e eVar) {
            this.f4491c = vVar;
            this.f4492d = j2;
            this.f4493e = eVar;
        }

        @Override // h.d0
        public long k() {
            return this.f4492d;
        }

        @Override // h.d0
        public v l() {
            return this.f4491c;
        }

        @Override // h.d0
        public i.e m() {
            return this.f4493e;
        }
    }

    static final class b extends Reader {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i.e f4494b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Charset f4495c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f4496d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Reader f4497e;

        b(i.e eVar, Charset charset) {
            this.f4494b = eVar;
            this.f4495c = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f4496d = true;
            Reader reader = this.f4497e;
            if (reader != null) {
                reader.close();
            } else {
                this.f4494b.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i3) throws IOException {
            if (this.f4496d) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.f4497e;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.f4494b.h(), h.h0.c.a(this.f4494b, this.f4495c));
                this.f4497e = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i2, i3);
        }
    }

    public static d0 a(v vVar, long j2, i.e eVar) {
        if (eVar != null) {
            return new a(vVar, j2, eVar);
        }
        throw new NullPointerException("source == null");
    }

    public static d0 a(v vVar, byte[] bArr) {
        i.c cVar = new i.c();
        cVar.write(bArr);
        return a(vVar, bArr.length, cVar);
    }

    private Charset o() {
        v vVarL = l();
        return vVarL != null ? vVarL.a(h.h0.c.f4537i) : h.h0.c.f4537i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        h.h0.c.a(m());
    }

    public final Reader j() {
        Reader reader = this.f4490b;
        if (reader != null) {
            return reader;
        }
        b bVar = new b(m(), o());
        this.f4490b = bVar;
        return bVar;
    }

    public abstract long k();

    public abstract v l();

    public abstract i.e m();

    public final String n() {
        i.e eVarM = m();
        try {
            return eVarM.a(h.h0.c.a(eVarM, o()));
        } finally {
            h.h0.c.a(eVarM);
        }
    }
}
