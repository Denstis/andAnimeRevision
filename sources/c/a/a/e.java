package c.a.a;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e extends ContextWrapper {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final l<?, ?> f3090j = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f3092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.a.r.j.e f3093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.a.a.r.f f3094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<c.a.a.r.e<Object>> f3095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, l<?, ?>> f3096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bumptech.glide.load.n.k f3097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f3098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f3099i;

    public e(Context context, com.bumptech.glide.load.n.a0.b bVar, i iVar, c.a.a.r.j.e eVar, c.a.a.r.f fVar, Map<Class<?>, l<?, ?>> map, List<c.a.a.r.e<Object>> list, com.bumptech.glide.load.n.k kVar, boolean z, int i2) {
        super(context.getApplicationContext());
        this.f3091a = bVar;
        this.f3092b = iVar;
        this.f3093c = eVar;
        this.f3094d = fVar;
        this.f3095e = list;
        this.f3096f = map;
        this.f3097g = kVar;
        this.f3098h = z;
        this.f3099i = i2;
    }

    public <T> l<?, T> a(Class<T> cls) {
        l<?, T> lVar = (l) this.f3096f.get(cls);
        if (lVar == null) {
            for (Map.Entry<Class<?>, l<?, ?>> entry : this.f3096f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    lVar = (l) entry.getValue();
                }
            }
        }
        return lVar == null ? (l<?, T>) f3090j : lVar;
    }

    public <X> c.a.a.r.j.i<ImageView, X> a(ImageView imageView, Class<X> cls) {
        return this.f3093c.a(imageView, cls);
    }

    public com.bumptech.glide.load.n.a0.b a() {
        return this.f3091a;
    }

    public List<c.a.a.r.e<Object>> b() {
        return this.f3095e;
    }

    public c.a.a.r.f c() {
        return this.f3094d;
    }

    public com.bumptech.glide.load.n.k d() {
        return this.f3097g;
    }

    public int e() {
        return this.f3099i;
    }

    public i f() {
        return this.f3092b;
    }

    public boolean g() {
        return this.f3098h;
    }
}
