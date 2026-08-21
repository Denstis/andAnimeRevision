package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    protected static <T extends c> T a(String str, a aVar) {
        try {
            return (T) Class.forName(str, true, a.class.getClassLoader()).getDeclaredMethod("read", a.class).invoke(null, aVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    private static Class a(Class<? extends c> cls) {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }

    protected static <T extends c> void a(T t, a aVar) {
        try {
            b(t).getDeclaredMethod("write", t.getClass(), a.class).invoke(null, t, aVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (!(e5.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
            }
            throw ((RuntimeException) e5.getCause());
        }
    }

    private static <T extends c> Class b(T t) {
        return a((Class<? extends c>) t.getClass());
    }

    private void c(c cVar) {
        try {
            a(a((Class<? extends c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e2);
        }
    }

    public int a(int i2, int i3) {
        return !a(i3) ? i2 : e();
    }

    public <T extends Parcelable> T a(T t, int i2) {
        return !a(i2) ? t : (T) f();
    }

    public <T extends c> T a(T t, int i2) {
        return !a(i2) ? t : (T) h();
    }

    public String a(String str, int i2) {
        return !a(i2) ? str : g();
    }

    protected abstract void a();

    protected abstract void a(Parcelable parcelable);

    protected void a(c cVar) {
        if (cVar == null) {
            a((String) null);
            return;
        }
        c(cVar);
        a aVarB = b();
        a(cVar, aVarB);
        aVarB.a();
    }

    protected abstract void a(String str);

    public void a(boolean z, boolean z2) {
    }

    protected abstract void a(byte[] bArr);

    protected abstract boolean a(int i2);

    public byte[] a(byte[] bArr, int i2) {
        return !a(i2) ? bArr : d();
    }

    protected abstract a b();

    protected abstract void b(int i2);

    public void b(int i2, int i3) {
        b(i3);
        c(i2);
    }

    public void b(Parcelable parcelable, int i2) {
        b(i2);
        a(parcelable);
    }

    public void b(c cVar, int i2) {
        b(i2);
        a(cVar);
    }

    public void b(String str, int i2) {
        b(i2);
        a(str);
    }

    public void b(byte[] bArr, int i2) {
        b(i2);
        a(bArr);
    }

    protected abstract void c(int i2);

    public boolean c() {
        return false;
    }

    protected abstract byte[] d();

    protected abstract int e();

    protected abstract <T extends Parcelable> T f();

    protected abstract String g();

    protected <T extends c> T h() {
        String strG = g();
        if (strG == null) {
            return null;
        }
        return (T) a(strG, b());
    }
}
