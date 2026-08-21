package animebestapp.com.models;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class f extends LinkedHashMap<String, List<? extends e>> {
    public /* bridge */ List a(String str, List list) {
        return (List) super.getOrDefault(str, list);
    }

    public /* bridge */ Set a() {
        return super.entrySet();
    }

    public /* bridge */ boolean a(String str) {
        return super.containsKey(str);
    }

    public /* bridge */ boolean a(List list) {
        return super.containsValue(list);
    }

    public /* bridge */ List b(String str) {
        return (List) super.get(str);
    }

    public /* bridge */ Set b() {
        return super.keySet();
    }

    public /* bridge */ boolean b(String str, List list) {
        return super.remove(str, list);
    }

    public /* bridge */ int c() {
        return super.size();
    }

    public /* bridge */ List c(String str) {
        return (List) super.remove(str);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return a((String) obj);
        }
        return false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof List) {
            return a((List) obj);
        }
        return false;
    }

    public /* bridge */ Collection d() {
        return super.values();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<String, List<e>>> entrySet() {
        return a();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ List<e> get(Object obj) {
        if (obj instanceof String) {
            return b((String) obj);
        }
        return null;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return obj instanceof String ? a((String) obj, (List) obj2) : obj2;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return b();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ List<e> remove(Object obj) {
        if (obj instanceof String) {
            return c((String) obj);
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof List)) {
            return b((String) obj, (List) obj2);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return c();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<List<e>> values() {
        return d();
    }
}
