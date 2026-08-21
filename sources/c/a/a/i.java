package c.a.a;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.m.e;
import com.bumptech.glide.load.n.t;
import com.bumptech.glide.load.n.v;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c.a.a.q.d f3116h = new c.a.a.q.d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c.a.a.q.c f3117i = new c.a.a.q.c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b.h.n.d<List<Throwable>> f3118j = c.a.a.t.l.a.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f3109a = new p(this.f3118j);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.q.a f3110b = new c.a.a.q.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.a.q.e f3111c = new c.a.a.q.e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c.a.a.q.f f3112d = new c.a.a.q.f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bumptech.glide.load.m.f f3113e = new com.bumptech.glide.load.m.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.bumptech.glide.load.p.h.f f3114f = new com.bumptech.glide.load.p.h.f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c.a.a.q.b f3115g = new c.a.a.q.b();

    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public static final class b extends a {
        public b() {
            super("Failed to find image header parser.");
        }
    }

    public static class c extends a {
        public c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public c(Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }
    }

    public static class d extends a {
        public d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class e extends a {
        public e(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public i() {
        a(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    private <Data, TResource, Transcode> List<com.bumptech.glide.load.n.i<Data, TResource, Transcode>> c(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f3111c.b(cls, cls2)) {
            for (Class cls5 : this.f3114f.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.n.i(cls, cls4, cls5, this.f3111c.a(cls, cls4), this.f3114f.a(cls4, cls5), this.f3118j));
            }
        }
        return arrayList;
    }

    public i a(ImageHeaderParser imageHeaderParser) {
        this.f3115g.a(imageHeaderParser);
        return this;
    }

    public i a(e.a<?> aVar) {
        this.f3113e.a(aVar);
        return this;
    }

    public <Data> i a(Class<Data> cls, com.bumptech.glide.load.d<Data> dVar) {
        this.f3110b.a(cls, dVar);
        return this;
    }

    public <TResource> i a(Class<TResource> cls, com.bumptech.glide.load.k<TResource> kVar) {
        this.f3112d.a(cls, kVar);
        return this;
    }

    public <Data, TResource> i a(Class<Data> cls, Class<TResource> cls2, com.bumptech.glide.load.j<Data, TResource> jVar) {
        a("legacy_append", cls, cls2, jVar);
        return this;
    }

    public <Model, Data> i a(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.f3109a.a(cls, cls2, oVar);
        return this;
    }

    public <TResource, Transcode> i a(Class<TResource> cls, Class<Transcode> cls2, com.bumptech.glide.load.p.h.e<TResource, Transcode> eVar) {
        this.f3114f.a(cls, cls2, eVar);
        return this;
    }

    public <Data, TResource> i a(String str, Class<Data> cls, Class<TResource> cls2, com.bumptech.glide.load.j<Data, TResource> jVar) {
        this.f3111c.a(str, jVar, cls, cls2);
        return this;
    }

    public final i a(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.f3111c.a(arrayList);
        return this;
    }

    public <X> com.bumptech.glide.load.k<X> a(v<X> vVar) {
        com.bumptech.glide.load.k<X> kVarA = this.f3112d.a(vVar.c());
        if (kVarA != null) {
            return kVarA;
        }
        throw new d(vVar.c());
    }

    public <Data, TResource, Transcode> t<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        t<Data, TResource, Transcode> tVarA = this.f3117i.a(cls, cls2, cls3);
        if (this.f3117i.a(tVarA)) {
            return null;
        }
        if (tVarA == null) {
            List<com.bumptech.glide.load.n.i<Data, TResource, Transcode>> listC = c(cls, cls2, cls3);
            tVarA = listC.isEmpty() ? null : new t<>(cls, cls2, cls3, listC, this.f3118j);
            this.f3117i.a(cls, cls2, cls3, tVarA);
        }
        return tVarA;
    }

    public List<ImageHeaderParser> a() {
        List<ImageHeaderParser> listA = this.f3115g.a();
        if (listA.isEmpty()) {
            throw new b();
        }
        return listA;
    }

    public <Model> List<n<Model, ?>> a(Model model) {
        List<n<Model, ?>> listA = this.f3109a.a(model);
        if (listA.isEmpty()) {
            throw new c(model);
        }
        return listA;
    }

    public <X> com.bumptech.glide.load.m.e<X> b(X x) {
        return this.f3113e.a(x);
    }

    public <Model, TResource, Transcode> List<Class<?>> b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> listA = this.f3116h.a(cls, cls2, cls3);
        if (listA == null) {
            listA = new ArrayList<>();
            Iterator<Class<?>> it = this.f3109a.a((Class<?>) cls).iterator();
            while (it.hasNext()) {
                for (Class<?> cls4 : this.f3111c.b(it.next(), cls2)) {
                    if (!this.f3114f.b(cls4, cls3).isEmpty() && !listA.contains(cls4)) {
                        listA.add(cls4);
                    }
                }
            }
            this.f3116h.a(cls, cls2, cls3, Collections.unmodifiableList(listA));
        }
        return listA;
    }

    public boolean b(v<?> vVar) {
        return this.f3112d.a(vVar.c()) != null;
    }

    public <X> com.bumptech.glide.load.d<X> c(X x) {
        com.bumptech.glide.load.d<X> dVarA = this.f3110b.a(x.getClass());
        if (dVarA != null) {
            return dVarA;
        }
        throw new e(x.getClass());
    }
}
