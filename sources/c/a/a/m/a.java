package c.a.a.m;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f3135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f3136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f3137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f3138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f3140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f3141h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Writer f3143j;
    private int l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f3142i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LinkedHashMap<String, d> f3144k = new LinkedHashMap<>(0, 0.75f, true);
    private long m = 0;
    final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
    private final Callable<Void> o = new CallableC0127a();

    /* JADX INFO: renamed from: c.a.a.m.a$a, reason: collision with other inner class name */
    class CallableC0127a implements Callable<Void> {
        CallableC0127a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (a.this) {
                if (a.this.f3143j == null) {
                    return null;
                }
                a.this.p();
                if (a.this.l()) {
                    a.this.o();
                    a.this.l = 0;
                }
                return null;
            }
        }
    }

    private static final class b implements ThreadFactory {
        private b() {
        }

        /* synthetic */ b(CallableC0127a callableC0127a) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f3146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean[] f3147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3148c;

        private c(d dVar) {
            this.f3146a = dVar;
            this.f3147b = dVar.f3154e ? null : new boolean[a.this.f3141h];
        }

        /* synthetic */ c(a aVar, d dVar, CallableC0127a callableC0127a) {
            this(dVar);
        }

        public File a(int i2) {
            File fileB;
            synchronized (a.this) {
                if (this.f3146a.f3155f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f3146a.f3154e) {
                    this.f3147b[i2] = true;
                }
                fileB = this.f3146a.b(i2);
                if (!a.this.f3135b.exists()) {
                    a.this.f3135b.mkdirs();
                }
            }
            return fileB;
        }

        public void a() {
            a.this.a(this, false);
        }

        public void b() {
            if (this.f3148c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void c() {
            a.this.a(this, true);
            this.f3148c = true;
        }
    }

    private final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f3151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        File[] f3152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        File[] f3153d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3154e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c f3155f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f3156g;

        private d(String str) {
            this.f3150a = str;
            this.f3151b = new long[a.this.f3141h];
            this.f3152c = new File[a.this.f3141h];
            this.f3153d = new File[a.this.f3141h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < a.this.f3141h; i2++) {
                sb.append(i2);
                this.f3152c[i2] = new File(a.this.f3135b, sb.toString());
                sb.append(".tmp");
                this.f3153d[i2] = new File(a.this.f3135b, sb.toString());
                sb.setLength(length);
            }
        }

        /* synthetic */ d(a aVar, String str, CallableC0127a callableC0127a) {
            this(str);
        }

        private IOException a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String[] strArr) throws IOException {
            if (strArr.length != a.this.f3141h) {
                a(strArr);
                throw null;
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                try {
                    this.f3151b[i2] = Long.parseLong(strArr[i2]);
                } catch (NumberFormatException unused) {
                    a(strArr);
                    throw null;
                }
            }
        }

        public File a(int i2) {
            return this.f3152c[i2];
        }

        public String a() {
            StringBuilder sb = new StringBuilder();
            for (long j2 : this.f3151b) {
                sb.append(' ');
                sb.append(j2);
            }
            return sb.toString();
        }

        public File b(int i2) {
            return this.f3153d[i2];
        }
    }

    public final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File[] f3158a;

        private e(a aVar, String str, long j2, File[] fileArr, long[] jArr) {
            this.f3158a = fileArr;
        }

        /* synthetic */ e(a aVar, String str, long j2, File[] fileArr, long[] jArr, CallableC0127a callableC0127a) {
            this(aVar, str, j2, fileArr, jArr);
        }

        public File a(int i2) {
            return this.f3158a[i2];
        }
    }

    private a(File file, int i2, int i3, long j2) {
        this.f3135b = file;
        this.f3139f = i2;
        this.f3136c = new File(file, "journal");
        this.f3137d = new File(file, "journal.tmp");
        this.f3138e = new File(file, "journal.bkp");
        this.f3141h = i3;
        this.f3140g = j2;
    }

    private synchronized c a(String str, long j2) {
        k();
        d dVar = this.f3144k.get(str);
        CallableC0127a callableC0127a = null;
        if (j2 != -1 && (dVar == null || dVar.f3156g != j2)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(this, str, callableC0127a);
            this.f3144k.put(str, dVar);
        } else if (dVar.f3155f != null) {
            return null;
        }
        c cVar = new c(this, dVar, callableC0127a);
        dVar.f3155f = cVar;
        this.f3143j.append((CharSequence) "DIRTY");
        this.f3143j.append(' ');
        this.f3143j.append((CharSequence) str);
        this.f3143j.append('\n');
        this.f3143j.flush();
        return cVar;
    }

    public static a a(File file, int i2, int i3, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        a aVar = new a(file, i2, i3, j2);
        if (aVar.f3136c.exists()) {
            try {
                aVar.n();
                aVar.m();
                return aVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.j();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i2, i3, j2);
        aVar2.o();
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(c cVar, boolean z) {
        d dVar = cVar.f3146a;
        if (dVar.f3155f != cVar) {
            throw new IllegalStateException();
        }
        if (z && !dVar.f3154e) {
            for (int i2 = 0; i2 < this.f3141h; i2++) {
                if (!cVar.f3147b[i2]) {
                    cVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                }
                if (!dVar.b(i2).exists()) {
                    cVar.a();
                    return;
                }
            }
        }
        for (int i3 = 0; i3 < this.f3141h; i3++) {
            File fileB = dVar.b(i3);
            if (!z) {
                a(fileB);
            } else if (fileB.exists()) {
                File fileA = dVar.a(i3);
                fileB.renameTo(fileA);
                long j2 = dVar.f3151b[i3];
                long length = fileA.length();
                dVar.f3151b[i3] = length;
                this.f3142i = (this.f3142i - j2) + length;
            }
        }
        this.l++;
        dVar.f3155f = null;
        if (dVar.f3154e || z) {
            dVar.f3154e = true;
            this.f3143j.append((CharSequence) "CLEAN");
            this.f3143j.append(' ');
            this.f3143j.append((CharSequence) dVar.f3150a);
            this.f3143j.append((CharSequence) dVar.a());
            this.f3143j.append('\n');
            if (z) {
                long j3 = this.m;
                this.m = 1 + j3;
                dVar.f3156g = j3;
            }
        } else {
            this.f3144k.remove(dVar.f3150a);
            this.f3143j.append((CharSequence) "REMOVE");
            this.f3143j.append(' ');
            this.f3143j.append((CharSequence) dVar.f3150a);
            this.f3143j.append('\n');
        }
        this.f3143j.flush();
        if (this.f3142i > this.f3140g || l()) {
            this.n.submit(this.o);
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void e(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i2 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i2);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i2);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f3144k.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf2);
        }
        d dVar = this.f3144k.get(strSubstring);
        CallableC0127a callableC0127a = null;
        if (dVar == null) {
            dVar = new d(this, strSubstring, callableC0127a);
            this.f3144k.put(strSubstring, dVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            dVar.f3154e = true;
            dVar.f3155f = null;
            dVar.b(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            dVar.f3155f = new c(this, dVar, callableC0127a);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private void k() {
        if (this.f3143j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        int i2 = this.l;
        return i2 >= 2000 && i2 >= this.f3144k.size();
    }

    private void m() throws IOException {
        a(this.f3137d);
        Iterator<d> it = this.f3144k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i2 = 0;
            if (next.f3155f == null) {
                while (i2 < this.f3141h) {
                    this.f3142i += next.f3151b[i2];
                    i2++;
                }
            } else {
                next.f3155f = null;
                while (i2 < this.f3141h) {
                    a(next.a(i2));
                    a(next.b(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    private void n() {
        c.a.a.m.b bVar = new c.a.a.m.b(new FileInputStream(this.f3136c), c.a.a.m.c.f3165a);
        try {
            String strK = bVar.k();
            String strK2 = bVar.k();
            String strK3 = bVar.k();
            String strK4 = bVar.k();
            String strK5 = bVar.k();
            if (!"libcore.io.DiskLruCache".equals(strK) || !"1".equals(strK2) || !Integer.toString(this.f3139f).equals(strK3) || !Integer.toString(this.f3141h).equals(strK4) || !"".equals(strK5)) {
                throw new IOException("unexpected journal header: [" + strK + ", " + strK2 + ", " + strK4 + ", " + strK5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    e(bVar.k());
                    i2++;
                } catch (EOFException unused) {
                    this.l = i2 - this.f3144k.size();
                    if (bVar.j()) {
                        o();
                    } else {
                        this.f3143j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3136c, true), c.a.a.m.c.f3165a));
                    }
                    c.a.a.m.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            c.a.a.m.c.a(bVar);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o() {
        if (this.f3143j != null) {
            this.f3143j.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3137d), c.a.a.m.c.f3165a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3139f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3141h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.f3144k.values()) {
                bufferedWriter.write(dVar.f3155f != null ? "DIRTY " + dVar.f3150a + '\n' : "CLEAN " + dVar.f3150a + dVar.a() + '\n');
            }
            bufferedWriter.close();
            if (this.f3136c.exists()) {
                a(this.f3136c, this.f3138e, true);
            }
            a(this.f3137d, this.f3136c, false);
            this.f3138e.delete();
            this.f3143j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3136c, true), c.a.a.m.c.f3165a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        while (this.f3142i > this.f3140g) {
            d(this.f3144k.entrySet().iterator().next().getKey());
        }
    }

    public c b(String str) {
        return a(str, -1L);
    }

    public synchronized e c(String str) {
        k();
        d dVar = this.f3144k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f3154e) {
            return null;
        }
        for (File file : dVar.f3152c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.l++;
        this.f3143j.append((CharSequence) "READ");
        this.f3143j.append(' ');
        this.f3143j.append((CharSequence) str);
        this.f3143j.append('\n');
        if (l()) {
            this.n.submit(this.o);
        }
        return new e(this, str, dVar.f3156g, dVar.f3152c, dVar.f3151b, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.f3143j == null) {
            return;
        }
        for (d dVar : new ArrayList(this.f3144k.values())) {
            if (dVar.f3155f != null) {
                dVar.f3155f.a();
            }
        }
        p();
        this.f3143j.close();
        this.f3143j = null;
    }

    public synchronized boolean d(String str) {
        k();
        d dVar = this.f3144k.get(str);
        if (dVar != null && dVar.f3155f == null) {
            for (int i2 = 0; i2 < this.f3141h; i2++) {
                File fileA = dVar.a(i2);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                this.f3142i -= dVar.f3151b[i2];
                dVar.f3151b[i2] = 0;
            }
            this.l++;
            this.f3143j.append((CharSequence) "REMOVE");
            this.f3143j.append(' ');
            this.f3143j.append((CharSequence) str);
            this.f3143j.append('\n');
            this.f3144k.remove(str);
            if (l()) {
                this.n.submit(this.o);
            }
            return true;
        }
        return false;
    }

    public void j() throws IOException {
        close();
        c.a.a.m.c.a(this.f3135b);
    }
}
