package b.h.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.core.content.c.c;
import b.h.l.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class h {

    class a implements c<b.f> {
        a(h hVar) {
        }

        @Override // b.h.h.h.c
        public int a(b.f fVar) {
            return fVar.d();
        }

        @Override // b.h.h.h.c
        public boolean b(b.f fVar) {
            return fVar.e();
        }
    }

    class b implements c<c.C0017c> {
        b(h hVar) {
        }

        @Override // b.h.h.h.c
        public int a(c.C0017c c0017c) {
            return c0017c.e();
        }

        @Override // b.h.h.h.c
        public boolean b(c.C0017c c0017c) {
            return c0017c.f();
        }
    }

    private interface c<T> {
        int a(T t);

        boolean b(T t);
    }

    h() {
    }

    private c.C0017c a(c.b bVar, int i2) {
        return (c.C0017c) a(bVar.a(), i2, new b(this));
    }

    private static <T> T a(T[] tArr, int i2, c<T> cVar) {
        int i3 = (i2 & 1) == 0 ? 400 : 700;
        boolean z = (i2 & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(cVar.a(t2) - i3) * 2) + (cVar.b(t2) == z ? 0 : 1);
            if (t == null || i4 > iAbs) {
                t = t2;
                i4 = iAbs;
            }
        }
        return t;
    }

    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        File fileA = i.a(context);
        if (fileA == null) {
            return null;
        }
        try {
            if (i.a(fileA, resources, i2)) {
                return Typeface.createFromFile(fileA.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileA.delete();
        }
    }

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (fVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(a(fVarArr, i2).c());
        } catch (IOException unused) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface typefaceA = a(context, inputStreamOpenInputStream);
            i.a(inputStreamOpenInputStream);
            return typefaceA;
        } catch (IOException unused2) {
            i.a(inputStreamOpenInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            i.a(inputStream);
            throw th;
        }
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i2) {
        c.C0017c c0017cA = a(bVar, i2);
        if (c0017cA == null) {
            return null;
        }
        return b.h.h.c.a(context, resources, c0017cA.b(), c0017cA.a(), i2);
    }

    protected Typeface a(Context context, InputStream inputStream) {
        File fileA = i.a(context);
        if (fileA == null) {
            return null;
        }
        try {
            if (i.a(fileA, inputStream)) {
                return Typeface.createFromFile(fileA.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileA.delete();
        }
    }

    protected b.f a(b.f[] fVarArr, int i2) {
        return (b.f) a(fVarArr, i2, new a(this));
    }
}
