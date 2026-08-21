package h.h0.i;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import h.h0.i.d;
import i.s;
import i.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
final class h implements Closeable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Logger f4758f = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i.e f4759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f4760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d.a f4762e;

    static final class a implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i.e f4763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f4764c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        byte f4765d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f4766e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f4767f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        short f4768g;

        a(i.e eVar) {
            this.f4763b = eVar;
        }

        private void i() throws IOException {
            int i2 = this.f4766e;
            int iA = h.a(this.f4763b);
            this.f4767f = iA;
            this.f4764c = iA;
            byte b2 = (byte) (this.f4763b.readByte() & 255);
            this.f4765d = (byte) (this.f4763b.readByte() & 255);
            if (h.f4758f.isLoggable(Level.FINE)) {
                h.f4758f.fine(e.a(true, this.f4766e, this.f4764c, b2, this.f4765d));
            }
            this.f4766e = this.f4763b.readInt() & Integer.MAX_VALUE;
            if (b2 != 9) {
                e.b("%s != TYPE_CONTINUATION", Byte.valueOf(b2));
                throw null;
            }
            if (this.f4766e == i2) {
                return;
            }
            e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }

        @Override // i.s
        public long a(i.c cVar, long j2) throws IOException {
            while (true) {
                int i2 = this.f4767f;
                if (i2 != 0) {
                    long jA = this.f4763b.a(cVar, Math.min(j2, i2));
                    if (jA == -1) {
                        return -1L;
                    }
                    this.f4767f = (int) (((long) this.f4767f) - jA);
                    return jA;
                }
                this.f4763b.skip(this.f4768g);
                this.f4768g = (short) 0;
                if ((this.f4765d & 4) != 0) {
                    return -1L;
                }
                i();
            }
        }

        @Override // i.s
        public t b() {
            return this.f4763b.b();
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    interface b {
        void a();

        void a(int i2, int i3, int i4, boolean z);

        void a(int i2, int i3, List<c> list);

        void a(int i2, long j2);

        void a(int i2, h.h0.i.b bVar);

        void a(int i2, h.h0.i.b bVar, i.f fVar);

        void a(boolean z, int i2, int i3);

        void a(boolean z, int i2, int i3, List<c> list);

        void a(boolean z, int i2, i.e eVar, int i3);

        void a(boolean z, m mVar);
    }

    h(i.e eVar, boolean z) {
        this.f4759b = eVar;
        this.f4761d = z;
        this.f4760c = new a(this.f4759b);
        this.f4762e = new d.a(MpegAudioHeader.MAX_FRAME_SIZE_BYTES, this.f4760c);
    }

    static int a(int i2, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i2--;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    static int a(i.e eVar) {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    private List<c> a(int i2, short s, byte b2, int i3) throws IOException {
        a aVar = this.f4760c;
        aVar.f4767f = i2;
        aVar.f4764c = i2;
        aVar.f4768g = s;
        aVar.f4765d = b2;
        aVar.f4766e = i3;
        this.f4762e.c();
        return this.f4762e.a();
    }

    private void a(b bVar, int i2) {
        int i3 = this.f4759b.readInt();
        bVar.a(i2, i3 & Integer.MAX_VALUE, (this.f4759b.readByte() & 255) + 1, (Integer.MIN_VALUE & i3) != 0);
    }

    private void a(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i3 == 0) {
            e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
            throw null;
        }
        boolean z = (b2 & 1) != 0;
        if ((b2 & 32) != 0) {
            e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        short s = (b2 & 8) != 0 ? (short) (this.f4759b.readByte() & 255) : (short) 0;
        bVar.a(z, i3, this.f4759b, a(i2, b2, s));
        this.f4759b.skip(s);
    }

    private void b(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i2 < 8) {
            e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i2));
            throw null;
        }
        if (i3 != 0) {
            e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
        int i4 = this.f4759b.readInt();
        int i5 = this.f4759b.readInt();
        int i6 = i2 - 8;
        h.h0.i.b bVarA = h.h0.i.b.a(i5);
        if (bVarA == null) {
            e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i5));
            throw null;
        }
        i.f fVarB = i.f.f4998f;
        if (i6 > 0) {
            fVarB = this.f4759b.b(i6);
        }
        bVar.a(i4, bVarA, fVarB);
    }

    private void c(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i3 == 0) {
            e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }
        boolean z = (b2 & 1) != 0;
        short s = (b2 & 8) != 0 ? (short) (this.f4759b.readByte() & 255) : (short) 0;
        if ((b2 & 32) != 0) {
            a(bVar, i3);
            i2 -= 5;
        }
        bVar.a(z, i3, -1, a(a(i2, b2, s), s, b2, i3));
    }

    private void d(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i2 != 8) {
            e.b("TYPE_PING length != 8: %s", Integer.valueOf(i2));
            throw null;
        }
        if (i3 != 0) {
            e.b("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
        bVar.a((b2 & 1) != 0, this.f4759b.readInt(), this.f4759b.readInt());
    }

    private void e(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i2 != 5) {
            e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i2));
            throw null;
        }
        if (i3 != 0) {
            a(bVar, i3);
        } else {
            e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    private void f(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i3 == 0) {
            e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s = (b2 & 8) != 0 ? (short) (this.f4759b.readByte() & 255) : (short) 0;
        bVar.a(i3, this.f4759b.readInt() & Integer.MAX_VALUE, a(a(i2 - 4, b2, s), s, b2, i3));
    }

    private void g(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i2 != 4) {
            e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i2));
            throw null;
        }
        if (i3 == 0) {
            e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
        int i4 = this.f4759b.readInt();
        h.h0.i.b bVarA = h.h0.i.b.a(i4);
        if (bVarA != null) {
            bVar.a(i3, bVarA);
        } else {
            e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i4));
            throw null;
        }
    }

    private void h(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i3 != 0) {
            e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b2 & 1) != 0) {
            if (i2 == 0) {
                bVar.a();
                return;
            } else {
                e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        }
        if (i2 % 6 != 0) {
            e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i2));
            throw null;
        }
        m mVar = new m();
        for (int i4 = 0; i4 < i2; i4 += 6) {
            int i5 = this.f4759b.readShort() & 65535;
            int i6 = this.f4759b.readInt();
            switch (i5) {
                case 2:
                    if (i6 != 0 && i6 != 1) {
                        e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                    break;
                    break;
                case 3:
                    i5 = 4;
                    break;
                case 4:
                    i5 = 7;
                    if (i6 < 0) {
                        e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                    break;
                    break;
                case 5:
                    if (i6 < 16384 || i6 > 16777215) {
                        e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i6));
                        throw null;
                    }
                    break;
                    break;
            }
            mVar.a(i5, i6);
        }
        bVar.a(false, mVar);
    }

    private void i(b bVar, int i2, byte b2, int i3) throws IOException {
        if (i2 != 4) {
            e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i2));
            throw null;
        }
        long j2 = ((long) this.f4759b.readInt()) & 2147483647L;
        if (j2 != 0) {
            bVar.a(i3, j2);
        } else {
            e.b("windowSizeIncrement was 0", Long.valueOf(j2));
            throw null;
        }
    }

    public void a(b bVar) throws IOException {
        if (this.f4761d) {
            if (a(true, bVar)) {
                return;
            }
            e.b("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        i.f fVarB = this.f4759b.b(e.f4689a.e());
        if (f4758f.isLoggable(Level.FINE)) {
            f4758f.fine(h.h0.c.a("<< CONNECTION %s", fVarB.b()));
        }
        if (e.f4689a.equals(fVarB)) {
            return;
        }
        e.b("Expected a connection header but was %s", fVarB.h());
        throw null;
    }

    public boolean a(boolean z, b bVar) throws IOException {
        try {
            this.f4759b.e(9L);
            int iA = a(this.f4759b);
            if (iA < 0 || iA > 16384) {
                e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
                throw null;
            }
            byte b2 = (byte) (this.f4759b.readByte() & 255);
            if (z && b2 != 4) {
                e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(b2));
                throw null;
            }
            byte b3 = (byte) (this.f4759b.readByte() & 255);
            int i2 = this.f4759b.readInt() & Integer.MAX_VALUE;
            if (f4758f.isLoggable(Level.FINE)) {
                f4758f.fine(e.a(true, i2, iA, b2, b3));
            }
            switch (b2) {
                case 0:
                    a(bVar, iA, b3, i2);
                    return true;
                case 1:
                    c(bVar, iA, b3, i2);
                    return true;
                case 2:
                    e(bVar, iA, b3, i2);
                    return true;
                case 3:
                    g(bVar, iA, b3, i2);
                    return true;
                case 4:
                    h(bVar, iA, b3, i2);
                    return true;
                case 5:
                    f(bVar, iA, b3, i2);
                    return true;
                case 6:
                    d(bVar, iA, b3, i2);
                    return true;
                case 7:
                    b(bVar, iA, b3, i2);
                    return true;
                case 8:
                    i(bVar, iA, b3, i2);
                    return true;
                default:
                    this.f4759b.skip(iA);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4759b.close();
    }
}
