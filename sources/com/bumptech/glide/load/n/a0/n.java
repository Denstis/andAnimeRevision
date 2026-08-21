package com.bumptech.glide.load.n.a0;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class n implements l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Bitmap.Config[] f3469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Bitmap.Config[] f3470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Bitmap.Config[] f3471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Bitmap.Config[] f3472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Bitmap.Config[] f3473h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f3474a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h<b, Bitmap> f3475b = new h<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f3476c = new HashMap();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3477a = new int[Bitmap.Config.values().length];

        static {
            try {
                f3477a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3477a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3477a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3477a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static final class b implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f3478a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3479b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bitmap.Config f3480c;

        public b(c cVar) {
            this.f3478a = cVar;
        }

        @Override // com.bumptech.glide.load.n.a0.m
        public void a() {
            this.f3478a.a(this);
        }

        public void a(int i2, Bitmap.Config config) {
            this.f3479b = i2;
            this.f3480c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f3479b == bVar.f3479b && c.a.a.t.k.b(this.f3480c, bVar.f3480c);
        }

        public int hashCode() {
            int i2 = this.f3479b * 31;
            Bitmap.Config config = this.f3480c;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return n.b(this.f3479b, this.f3480c);
        }
    }

    static class c extends d<b> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.n.a0.d
        public b a() {
            return new b(this);
        }

        public b a(int i2, Bitmap.Config config) {
            b bVarB = b();
            bVarB.a(i2, config);
            return bVarB;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, configArr.length + 1);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f3469d = configArr;
        f3470e = f3469d;
        f3471f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f3472g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f3473h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    private b a(int i2, Bitmap.Config config) {
        b bVarA = this.f3474a.a(i2, config);
        for (Bitmap.Config config2 : a(config)) {
            Integer numCeilingKey = b(config2).ceilingKey(Integer.valueOf(i2));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i2 * 8) {
                if (numCeilingKey.intValue() == i2) {
                    if (config2 == null) {
                        if (config == null) {
                            return bVarA;
                        }
                    } else if (config2.equals(config)) {
                        return bVarA;
                    }
                }
                this.f3474a.a(bVarA);
                return this.f3474a.a(numCeilingKey.intValue(), config2);
            }
        }
        return bVarA;
    }

    private void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapB = b(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapB.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapB.remove(num);
                return;
            } else {
                navigableMapB.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + c(bitmap) + ", this: " + this);
    }

    private static Bitmap.Config[] a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f3470e;
        }
        int i2 = a.f3477a[config.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? new Bitmap.Config[]{config} : f3473h : f3472g : f3471f : f3469d;
    }

    static String b(int i2, Bitmap.Config config) {
        return "[" + i2 + "](" + config + ")";
    }

    private NavigableMap<Integer, Integer> b(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f3476c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f3476c.put(config, treeMap);
        return treeMap;
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public Bitmap a() {
        Bitmap bitmapA = this.f3475b.a();
        if (bitmapA != null) {
            a(Integer.valueOf(c.a.a.t.k.a(bitmapA)), bitmapA);
        }
        return bitmapA;
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        b bVarA = a(c.a.a.t.k.a(i2, i3, config), config);
        Bitmap bitmapA = this.f3475b.a(bVarA);
        if (bitmapA != null) {
            a(Integer.valueOf(bVarA.f3479b), bitmapA);
            bitmapA.reconfigure(i2, i3, config);
        }
        return bitmapA;
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public void a(Bitmap bitmap) {
        b bVarA = this.f3474a.a(c.a.a.t.k.a(bitmap), bitmap.getConfig());
        this.f3475b.a(bVarA, bitmap);
        NavigableMap<Integer, Integer> navigableMapB = b(bitmap.getConfig());
        Integer num = (Integer) navigableMapB.get(Integer.valueOf(bVarA.f3479b));
        navigableMapB.put(Integer.valueOf(bVarA.f3479b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public int b(Bitmap bitmap) {
        return c.a.a.t.k.a(bitmap);
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public String b(int i2, int i3, Bitmap.Config config) {
        return b(c.a.a.t.k.a(i2, i3, config), config);
    }

    @Override // com.bumptech.glide.load.n.a0.l
    public String c(Bitmap bitmap) {
        return b(c.a.a.t.k.a(bitmap), bitmap.getConfig());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f3475b);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f3476c.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f3476c.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
