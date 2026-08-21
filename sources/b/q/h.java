package b.q;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: classes.dex */
class h<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f2920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathMeasure f2921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f2923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PointF f2924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f2925f;

    h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2923d = new float[2];
        this.f2924e = new PointF();
        this.f2920a = property;
        this.f2921b = new PathMeasure(path, false);
        this.f2922c = this.f2921b.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f2) {
        this.f2925f = f2.floatValue();
        this.f2921b.getPosTan(this.f2922c * f2.floatValue(), this.f2923d, null);
        PointF pointF = this.f2924e;
        float[] fArr = this.f2923d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f2920a.set(t, pointF);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.util.Property
    public Float get(T t) {
        return Float.valueOf(this.f2925f);
    }
}
