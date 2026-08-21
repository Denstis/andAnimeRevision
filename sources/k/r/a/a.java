package k.r.a;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import h.b0;
import h.d0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import k.e;
import k.n;

/* JADX INFO: loaded from: classes.dex */
public final class a extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f5187a;

    private a(Gson gson) {
        this.f5187a = gson;
    }

    public static a a(Gson gson) {
        if (gson != null) {
            return new a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // k.e.a
    public e<d0, ?> a(Type type, Annotation[] annotationArr, n nVar) {
        return new c(this.f5187a, this.f5187a.getAdapter(TypeToken.get(type)));
    }

    @Override // k.e.a
    public e<?, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, n nVar) {
        return new b(this.f5187a, this.f5187a.getAdapter(TypeToken.get(type)));
    }
}
