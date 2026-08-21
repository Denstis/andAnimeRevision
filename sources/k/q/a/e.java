package k.q.a;

import k.m;

/* JADX INFO: loaded from: classes.dex */
public final class e<T> {
    private e(m<T> mVar, Throwable th) {
    }

    public static <T> e<T> a(Throwable th) {
        if (th != null) {
            return new e<>(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> e<T> a(m<T> mVar) {
        if (mVar != null) {
            return new e<>(mVar, null);
        }
        throw new NullPointerException("response == null");
    }
}
