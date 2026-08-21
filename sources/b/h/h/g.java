package b.h.h;

import android.graphics.Typeface;
import com.google.android.exoplayer2.C;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class g extends f {
    @Override // b.h.h.f
    protected Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f2462a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f2468g.invoke(null, objNewInstance, C.SANS_SERIF_NAME, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // b.h.h.f
    protected Method d(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
