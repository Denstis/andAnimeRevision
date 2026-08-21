package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class zzdav {
    private static final Object zzgov;
    private static final Method zzgow;
    private static final Method zzgox;

    static {
        Object objZzaog = zzaog();
        zzgov = objZzaog;
        zzgow = objZzaog == null ? null : zza("getStackTraceElement", Throwable.class, Integer.TYPE);
        zzgox = zzgov != null ? zzaoh() : null;
    }

    private static Method zza(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Object zzaog() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e2) {
            throw e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method zzaoh() {
        try {
            Method methodZza = zza("getStackTraceDepth", Throwable.class);
            if (methodZza == null) {
                return null;
            }
            methodZza.invoke(zzaog(), new Throwable());
            return methodZza;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    public static void zzf(Throwable th) {
        zzdaq.checkNotNull(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @Deprecated
    public static RuntimeException zzg(Throwable th) {
        zzf(th);
        throw new RuntimeException(th);
    }
}
