package g.m;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class l extends k {
    public static final <T> int a(List<? extends T> list) {
        g.p.b.f.b(list, "receiver$0");
        return list.size() - 1;
    }

    public static <T> ArrayList<T> a(T... tArr) {
        g.p.b.f.b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList<>() : new ArrayList<>(new c(tArr, true));
    }

    public static <T> List<T> a() {
        return v.f4381b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> b(List<? extends T> list) {
        g.p.b.f.b(list, "receiver$0");
        int size = list.size();
        return size != 0 ? size != 1 ? list : k.a(list.get(0)) : a();
    }

    public static <T> List<T> b(T... tArr) {
        g.p.b.f.b(tArr, "elements");
        return tArr.length > 0 ? g.a(tArr) : a();
    }

    public static void b() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static <T> List<T> c(T... tArr) {
        g.p.b.f.b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new c(tArr, true));
    }
}
