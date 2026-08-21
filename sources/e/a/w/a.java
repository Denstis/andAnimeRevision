package e.a.w;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Throwable> f4127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Throwable f4129d;

    /* JADX INFO: renamed from: e.a.w.a$a, reason: collision with other inner class name */
    static final class C0178a extends RuntimeException {
        C0178a() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    static abstract class b {
        b() {
        }

        abstract void a(Object obj);
    }

    static final class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final PrintStream f4130a;

        c(PrintStream printStream) {
            this.f4130a = printStream;
        }

        @Override // e.a.w.a.b
        void a(Object obj) {
            this.f4130a.println(obj);
        }
    }

    static final class d extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final PrintWriter f4131a;

        d(PrintWriter printWriter) {
            this.f4131a = printWriter;
        }

        @Override // e.a.w.a.b
        void a(Object obj) {
            this.f4131a.println(obj);
        }
    }

    public a(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Object obj : iterable) {
                if (obj instanceof a) {
                    linkedHashSet.addAll(((a) obj).a());
                } else {
                    linkedHashSet.add(obj == null ? new NullPointerException("Throwable was null!") : obj);
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            throw new IllegalArgumentException("errors is empty");
        }
        arrayList.addAll(linkedHashSet);
        this.f4127b = Collections.unmodifiableList(arrayList);
        this.f4128c = this.f4127b.size() + " exceptions occurred. ";
    }

    public a(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void a(b bVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i2 = 1;
        for (Throwable th : this.f4127b) {
            sb.append("  ComposedException ");
            sb.append(i2);
            sb.append(" :\n");
            a(sb, th, "\t");
            i2++;
        }
        bVar.a(sb.toString());
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private List<Throwable> b(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    Throwable a(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || this.f4129d == cause) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    public List<Throwable> a() {
        return this.f4127b;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.f4129d == null) {
            C0178a c0178a = new C0178a();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.f4127b.iterator();
            Throwable thA = c0178a;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th : b(next)) {
                        if (hashSet.contains(th)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th);
                        }
                    }
                    try {
                        thA.initCause(next);
                    } catch (Throwable unused) {
                    }
                    thA = a(thA);
                }
            }
            this.f4129d = c0178a;
        }
        return this.f4129d;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f4128c;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        a(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        a(new d(printWriter));
    }
}
