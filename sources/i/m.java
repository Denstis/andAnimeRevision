package i;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class m implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f5020b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f5021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f5022d;

    m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f5021c = rVar;
    }

    @Override // i.d
    public c a() {
        return this.f5020b;
    }

    @Override // i.d
    public d a(f fVar) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.a(fVar);
        i();
        return this;
    }

    @Override // i.d
    public d a(String str) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.a(str);
        i();
        return this;
    }

    @Override // i.r
    public t b() {
        return this.f5021c.b();
    }

    @Override // i.r
    public void b(c cVar, long j2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.b(cVar, j2);
        i();
    }

    @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f5022d) {
            return;
        }
        try {
            if (this.f5020b.f4994c > 0) {
                this.f5021c.b(this.f5020b, this.f5020b.f4994c);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f5021c.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f5022d = true;
        if (th == null) {
            return;
        }
        u.a(th);
        throw null;
    }

    @Override // i.d
    public d f(long j2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.f(j2);
        i();
        return this;
    }

    @Override // i.d, i.r, java.io.Flushable
    public void flush() {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f5020b;
        long j2 = cVar.f4994c;
        if (j2 > 0) {
            this.f5021c.b(cVar, j2);
        }
        this.f5021c.flush();
    }

    @Override // i.d
    public d g(long j2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.g(j2);
        i();
        return this;
    }

    @Override // i.d
    public d i() {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        long jM = this.f5020b.m();
        if (jM > 0) {
            this.f5021c.b(this.f5020b, jM);
        }
        return this;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f5022d;
    }

    public String toString() {
        return "buffer(" + this.f5021c + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f5020b.write(byteBuffer);
        i();
        return iWrite;
    }

    @Override // i.d
    public d write(byte[] bArr) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.write(bArr);
        i();
        return this;
    }

    @Override // i.d
    public d write(byte[] bArr, int i2, int i3) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.write(bArr, i2, i3);
        i();
        return this;
    }

    @Override // i.d
    public d writeByte(int i2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.writeByte(i2);
        i();
        return this;
    }

    @Override // i.d
    public d writeInt(int i2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.writeInt(i2);
        i();
        return this;
    }

    @Override // i.d
    public d writeShort(int i2) {
        if (this.f5022d) {
            throw new IllegalStateException("closed");
        }
        this.f5020b.writeShort(i2);
        i();
        return this;
    }
}
