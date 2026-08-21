package animebestapp.com.b.a;

import animebestapp.com.models.Anime;
import animebestapp.com.models.g;
import g.p.b.f;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedHashMap<Long, Integer> f1458a = new LinkedHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedHashMap<Long, LinkedHashMap<Integer, Long>> f1459b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinkedHashMap<Long, Anime> f1460c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f1461d;

    public final long a(long j2, int i2) {
        Long l;
        LinkedHashMap<Integer, Long> linkedHashMap = this.f1459b.get(Long.valueOf(j2));
        if (linkedHashMap == null || (l = linkedHashMap.get(Integer.valueOf(i2))) == null) {
            return 0L;
        }
        return l.longValue();
    }

    public final LinkedHashMap<Long, Anime> a() {
        return this.f1460c;
    }

    public final void a(long j2, int i2, long j3) {
        LinkedHashMap<Integer, Long> linkedHashMap = this.f1459b.get(Long.valueOf(j2));
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
        }
        linkedHashMap.put(Integer.valueOf(i2), Long.valueOf(j3));
        this.f1459b.put(Long.valueOf(j2), linkedHashMap);
    }

    public final void a(g gVar) {
        this.f1461d = gVar;
    }

    public final void a(LinkedHashMap<Long, Anime> linkedHashMap) {
        f.b(linkedHashMap, "<set-?>");
        this.f1460c = linkedHashMap;
    }

    public final LinkedHashMap<Long, Integer> b() {
        return this.f1458a;
    }

    public final void b(LinkedHashMap<Long, Integer> linkedHashMap) {
        f.b(linkedHashMap, "<set-?>");
        this.f1458a = linkedHashMap;
    }

    public final g c() {
        return this.f1461d;
    }

    public final void c(LinkedHashMap<Long, LinkedHashMap<Integer, Long>> linkedHashMap) {
        f.b(linkedHashMap, "<set-?>");
        this.f1459b = linkedHashMap;
    }
}
