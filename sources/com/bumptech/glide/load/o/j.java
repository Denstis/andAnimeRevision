package com.bumptech.glide.load.o;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, List<i>> f3721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Map<String, String> f3722c;

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f3723b = b();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Map<String, List<i>> f3724c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, List<i>> f3725a = f3724c;

        static {
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(f3723b)) {
                map.put("User-Agent", Collections.singletonList(new b(f3723b)));
            }
            f3724c = Collections.unmodifiableMap(map);
        }

        static String b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = property.charAt(i2);
                if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                    cCharAt = '?';
                }
                sb.append(cCharAt);
            }
            return sb.toString();
        }

        public j a() {
            return new j(this.f3725a);
        }
    }

    static final class b implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3726a;

        b(String str) {
            this.f3726a = str;
        }

        @Override // com.bumptech.glide.load.o.i
        public String a() {
            return this.f3726a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f3726a.equals(((b) obj).f3726a);
            }
            return false;
        }

        public int hashCode() {
            return this.f3726a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f3726a + "'}";
        }
    }

    j(Map<String, List<i>> map) {
        this.f3721b = Collections.unmodifiableMap(map);
    }

    private String a(List<i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strA = list.get(i2).a();
            if (!TextUtils.isEmpty(strA)) {
                sb.append(strA);
                if (i2 != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    private Map<String, String> b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f3721b.entrySet()) {
            String strA = a(entry.getValue());
            if (!TextUtils.isEmpty(strA)) {
                map.put(entry.getKey(), strA);
            }
        }
        return map;
    }

    @Override // com.bumptech.glide.load.o.h
    public Map<String, String> a() {
        if (this.f3722c == null) {
            synchronized (this) {
                if (this.f3722c == null) {
                    this.f3722c = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f3722c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f3721b.equals(((j) obj).f3721b);
        }
        return false;
    }

    public int hashCode() {
        return this.f3721b.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f3721b + '}';
    }
}
