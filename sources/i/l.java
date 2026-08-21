package i;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f5014a = Logger.getLogger(l.class.getName());

    final class a implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t f5015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ OutputStream f5016c;

        a(t tVar, OutputStream outputStream) {
            this.f5015b = tVar;
            this.f5016c = outputStream;
        }

        @Override // i.r
        public t b() {
            return this.f5015b;
        }

        @Override // i.r
        public void b(i.c cVar, long j2) throws IOException {
            u.a(cVar.f4994c, 0L, j2);
            while (j2 > 0) {
                this.f5015b.e();
                o oVar = cVar.f4993b;
                int iMin = (int) Math.min(j2, oVar.f5029c - oVar.f5028b);
                this.f5016c.write(oVar.f5027a, oVar.f5028b, iMin);
                oVar.f5028b += iMin;
                long j3 = iMin;
                j2 -= j3;
                cVar.f4994c -= j3;
                if (oVar.f5028b == oVar.f5029c) {
                    cVar.f4993b = oVar.b();
                    p.a(oVar);
                }
            }
        }

        @Override // i.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f5016c.close();
        }

        @Override // i.r, java.io.Flushable
        public void flush() throws IOException {
            this.f5016c.flush();
        }

        public String toString() {
            return "sink(" + this.f5016c + ")";
        }
    }

    final class b implements s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t f5017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InputStream f5018c;

        b(t tVar, InputStream inputStream) {
            this.f5017b = tVar;
            this.f5018c = inputStream;
        }

        @Override // i.s
        public long a(i.c cVar, long j2) throws IOException {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            }
            if (j2 == 0) {
                return 0L;
            }
            try {
                this.f5017b.e();
                o oVarB = cVar.b(1);
                int i2 = this.f5018c.read(oVarB.f5027a, oVarB.f5029c, (int) Math.min(j2, 8192 - oVarB.f5029c));
                if (i2 == -1) {
                    return -1L;
                }
                oVarB.f5029c += i2;
                long j3 = i2;
                cVar.f4994c += j3;
                return j3;
            } catch (AssertionError e2) {
                if (l.a(e2)) {
                    throw new IOException(e2);
                }
                throw e2;
            }
        }

        @Override // i.s
        public t b() {
            return this.f5017b;
        }

        @Override // i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f5018c.close();
        }

        public String toString() {
            return "source(" + this.f5018c + ")";
        }
    }

    final class c extends i.a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ Socket f5019k;

        c(Socket socket) {
            this.f5019k = socket;
        }

        @Override // i.a
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // i.a
        protected void i() {
            Level level;
            StringBuilder sb;
            Logger logger;
            Throwable th;
            try {
                this.f5019k.close();
            } catch (AssertionError e2) {
                if (!l.a(e2)) {
                    throw e2;
                }
                Logger logger2 = l.f5014a;
                level = Level.WARNING;
                sb = new StringBuilder();
                th = e2;
                logger = logger2;
                sb.append("Failed to close timed out socket ");
                sb.append(this.f5019k);
                logger.log(level, sb.toString(), th);
            } catch (Exception e3) {
                Logger logger3 = l.f5014a;
                level = Level.WARNING;
                sb = new StringBuilder();
                th = e3;
                logger = logger3;
                sb.append("Failed to close timed out socket ");
                sb.append(this.f5019k);
                logger.log(level, sb.toString(), th);
            }
        }
    }

    private l() {
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    private static r a(OutputStream outputStream, t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (tVar != null) {
            return new a(tVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static r a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        i.a aVarC = c(socket);
        return aVarC.a(a(socket.getOutputStream(), aVarC));
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    private static s a(InputStream inputStream, t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (tVar != null) {
            return new b(tVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static s b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        i.a aVarC = c(socket);
        return aVarC.a(a(socket.getInputStream(), aVarC));
    }

    private static i.a c(Socket socket) {
        return new c(socket);
    }
}
