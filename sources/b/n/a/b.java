package b.n.a;

import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.g;
import androidx.lifecycle.l;
import androidx.lifecycle.m;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import b.e.h;
import b.n.b.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class b extends b.n.a.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f2831c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f2832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f2833b;

    public static class a<D> extends l<D> implements a.InterfaceC0118a<D> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final int f2834j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final Bundle f2835k;
        private final b.n.b.a<D> l;
        private g m;
        private C0117b<D> n;
        private b.n.b.a<D> o;

        b.n.b.a<D> a(boolean z) {
            if (b.f2831c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.l.a();
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        protected void a() {
            if (b.f2831c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.l.c();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void a(m<? super D> mVar) {
            super.a((m) mVar);
            this.m = null;
            this.n = null;
        }

        @Override // androidx.lifecycle.l, androidx.lifecycle.LiveData
        public void a(D d2) {
            super.a(d2);
            b.n.b.a<D> aVar = this.o;
            if (aVar == null) {
                return;
            }
            aVar.b();
            throw null;
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f2834j);
            printWriter.print(" mArgs=");
            printWriter.println(this.f2835k);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.l);
            this.l.a(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        protected void b() {
            if (b.f2831c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.l.d();
            throw null;
        }

        void c() {
            g gVar = this.m;
            C0117b<D> c0117b = this.n;
            if (gVar == null || c0117b == null) {
                return;
            }
            super.a((m) c0117b);
            a(gVar, c0117b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f2834j);
            sb.append(" : ");
            b.h.n.a.a(this.l, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: b.n.a.b$b, reason: collision with other inner class name */
    static class C0117b<D> implements m<D> {
    }

    static class c extends p {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final q.a f2836b = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private h<a> f2837a = new h<>();

        static class a implements q.a {
            a() {
            }

            @Override // androidx.lifecycle.q.a
            public <T extends p> T a(Class<T> cls) {
                return new c();
            }
        }

        c() {
        }

        static c a(r rVar) {
            return (c) new q(rVar, f2836b).a(c.class);
        }

        @Override // androidx.lifecycle.p
        protected void a() {
            super.a();
            if (this.f2837a.b() <= 0) {
                this.f2837a.a();
            } else {
                this.f2837a.f(0).a(true);
                throw null;
            }
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f2837a.b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f2837a.b() <= 0) {
                    return;
                }
                a aVarF = this.f2837a.f(0);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f2837a.d(0));
                printWriter.print(": ");
                printWriter.println(aVarF.toString());
                aVarF.a(str2, fileDescriptor, printWriter, strArr);
                throw null;
            }
        }

        void b() {
            int iB = this.f2837a.b();
            for (int i2 = 0; i2 < iB; i2++) {
                this.f2837a.f(i2).c();
            }
        }
    }

    b(g gVar, r rVar) {
        this.f2832a = gVar;
        this.f2833b = c.a(rVar);
    }

    @Override // b.n.a.a
    public void a() {
        this.f2833b.b();
    }

    @Override // b.n.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f2833b.a(str, fileDescriptor, printWriter, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        b.h.n.a.a(this.f2832a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
