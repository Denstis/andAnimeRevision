package b.k.a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    public interface a {
    }

    public static abstract class b {
        public abstract void a(i iVar, d dVar);

        public abstract void a(i iVar, d dVar, Context context);

        public abstract void a(i iVar, d dVar, Bundle bundle);

        public abstract void a(i iVar, d dVar, View view, Bundle bundle);

        public abstract void b(i iVar, d dVar);

        public abstract void b(i iVar, d dVar, Context context);

        public abstract void b(i iVar, d dVar, Bundle bundle);

        public abstract void c(i iVar, d dVar);

        public abstract void c(i iVar, d dVar, Bundle bundle);

        public abstract void d(i iVar, d dVar);

        public abstract void d(i iVar, d dVar, Bundle bundle);

        public abstract void e(i iVar, d dVar);

        public abstract void f(i iVar, d dVar);

        public abstract void g(i iVar, d dVar);
    }

    public interface c {
        void a();
    }

    public abstract d a(String str);

    public abstract o a();

    public abstract void a(int i2, int i3);

    public abstract void a(String str, int i2);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract int b();

    public abstract List<d> c();

    public abstract boolean d();

    public abstract void e();

    public abstract boolean f();
}
