package h.h0.f;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f4576c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOException f4577b;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            declaredMethod = null;
        }
        f4576c = declaredMethod;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f4577b = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        Method method = f4576c;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public IOException a() {
        return this.f4577b;
    }

    public void a(IOException iOException) {
        a(iOException, this.f4577b);
        this.f4577b = iOException;
    }
}
