package c.a.a;

import c.a.a.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class l<CHILD extends l<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.a.a.r.k.c<? super TranscodeType> f3134b = c.a.a.r.k.a.a();

    final c.a.a.r.k.c<? super TranscodeType> a() {
        return this.f3134b;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final CHILD m5clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
