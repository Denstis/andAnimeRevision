package k;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public interface c<R, T> {

    public static abstract class a {
        protected static Class<?> a(Type type) {
            return p.c(type);
        }

        protected static Type a(int i2, ParameterizedType parameterizedType) {
            return p.a(i2, parameterizedType);
        }

        public abstract c<?, ?> a(Type type, Annotation[] annotationArr, n nVar);
    }

    T a(b<R> bVar);

    Type a();
}
