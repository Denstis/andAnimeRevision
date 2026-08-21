package com.bumptech.glide.load.n;

import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class q extends Exception {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final StackTraceElement[] f3648g = new StackTraceElement[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Throwable> f3649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.bumptech.glide.load.g f3650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bumptech.glide.load.a f3651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Class<?> f3652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f3653f;

    private static final class a implements Appendable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Appendable f3654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3655c = true;

        a(Appendable appendable) {
            this.f3654b = appendable;
        }

        private CharSequence a(CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c2) throws IOException {
            if (this.f3655c) {
                this.f3655c = false;
                this.f3654b.append("  ");
            }
            this.f3655c = c2 == '\n';
            this.f3654b.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence) throws IOException {
            CharSequence charSequenceA = a(charSequence);
            append(charSequenceA, 0, charSequenceA.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(CharSequence charSequence, int i2, int i3) throws IOException {
            CharSequence charSequenceA = a(charSequence);
            boolean z = false;
            if (this.f3655c) {
                this.f3655c = false;
                this.f3654b.append("  ");
            }
            if (charSequenceA.length() > 0 && charSequenceA.charAt(i3 - 1) == '\n') {
                z = true;
            }
            this.f3655c = z;
            this.f3654b.append(charSequenceA, i2, i3);
            return this;
        }
    }

    public q(String str) {
        this(str, (List<Throwable>) Collections.emptyList());
    }

    public q(String str, Throwable th) {
        this(str, (List<Throwable>) Collections.singletonList(th));
    }

    public q(String str, List<Throwable> list) {
        this.f3653f = str;
        setStackTrace(f3648g);
        this.f3649b = list;
    }

    private void a(Appendable appendable) {
        a(this, appendable);
        a(a(), new a(appendable));
    }

    private static void a(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private void a(Throwable th, List<Throwable> list) {
        if (!(th instanceof q)) {
            list.add(th);
            return;
        }
        Iterator<Throwable> it = ((q) th).a().iterator();
        while (it.hasNext()) {
            a(it.next(), list);
        }
    }

    private static void a(List<Throwable> list, Appendable appendable) {
        try {
            b(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void b(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i2);
            if (th instanceof q) {
                ((q) th).a(appendable);
            } else {
                a(th, appendable);
            }
            i2 = i3;
        }
    }

    public List<Throwable> a() {
        return this.f3649b;
    }

    void a(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.a aVar) {
        a(gVar, aVar, null);
    }

    void a(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.a aVar, Class<?> cls) {
        this.f3650c = gVar;
        this.f3651d = aVar;
        this.f3652e = cls;
    }

    public void a(Exception exc) {
    }

    public void a(String str) {
        List<Throwable> listB = b();
        int size = listB.size();
        int i2 = 0;
        while (i2 < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i3 = i2 + 1;
            sb.append(i3);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), listB.get(i2));
            i2 = i3;
        }
    }

    public List<Throwable> b() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f3653f);
        sb.append(this.f3652e != null ? ", " + this.f3652e : "");
        sb.append(this.f3651d != null ? ", " + this.f3651d : "");
        sb.append(this.f3650c != null ? ", " + this.f3650c : "");
        List<Throwable> listB = b();
        if (listB.isEmpty()) {
            return sb.toString();
        }
        if (listB.size() == 1) {
            str = "\nThere was 1 cause:";
        } else {
            sb.append("\nThere were ");
            sb.append(listB.size());
            str = " causes:";
        }
        sb.append(str);
        for (Throwable th : listB) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        a(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        a(printWriter);
    }
}
