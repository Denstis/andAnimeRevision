package b.r.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import b.h.h.b;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class i extends b.r.a.a.h {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f3015k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f3016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuffColorFilter f3017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorFilter f3018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f3021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Matrix f3022i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f3023j;

    private static class b extends f {
        public b() {
        }

        public b(b bVar) {
            super(bVar);
        }

        private void a(TypedArray typedArray) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f3044b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f3043a = b.h.h.b.a(string2);
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.content.c.g.a(xmlPullParser, "pathData")) {
                TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2991d);
                a(typedArrayA);
                typedArrayA.recycle();
            }
        }

        @Override // b.r.a.a.i.f
        public boolean b() {
            return true;
        }
    }

    private static class c extends f {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int[] f3024d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.core.content.c.b f3025e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f3026f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        androidx.core.content.c.b f3027g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float f3028h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f3029i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f3030j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f3031k;
        float l;
        float m;
        Paint.Cap n;
        Paint.Join o;
        float p;

        public c() {
            this.f3026f = 0.0f;
            this.f3028h = 1.0f;
            this.f3029i = 0;
            this.f3030j = 1.0f;
            this.f3031k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
        }

        public c(c cVar) {
            super(cVar);
            this.f3026f = 0.0f;
            this.f3028h = 1.0f;
            this.f3029i = 0;
            this.f3030j = 1.0f;
            this.f3031k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
            this.f3024d = cVar.f3024d;
            this.f3025e = cVar.f3025e;
            this.f3026f = cVar.f3026f;
            this.f3028h = cVar.f3028h;
            this.f3027g = cVar.f3027g;
            this.f3029i = cVar.f3029i;
            this.f3030j = cVar.f3030j;
            this.f3031k = cVar.f3031k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }

        private Paint.Cap a(int i2, Paint.Cap cap) {
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        private Paint.Join a(int i2, Paint.Join join) {
            return i2 != 0 ? i2 != 1 ? i2 != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f3024d = null;
            if (androidx.core.content.c.g.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f3044b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f3043a = b.h.h.b.a(string2);
                }
                this.f3027g = androidx.core.content.c.g.a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f3030j = androidx.core.content.c.g.a(typedArray, xmlPullParser, "fillAlpha", 12, this.f3030j);
                this.n = a(androidx.core.content.c.g.b(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.n);
                this.o = a(androidx.core.content.c.g.b(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.o);
                this.p = androidx.core.content.c.g.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.p);
                this.f3025e = androidx.core.content.c.g.a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f3028h = androidx.core.content.c.g.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f3028h);
                this.f3026f = androidx.core.content.c.g.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f3026f);
                this.l = androidx.core.content.c.g.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.l);
                this.m = androidx.core.content.c.g.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.m);
                this.f3031k = androidx.core.content.c.g.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f3031k);
                this.f3029i = androidx.core.content.c.g.b(typedArray, xmlPullParser, "fillType", 13, this.f3029i);
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2990c);
            a(typedArrayA, xmlPullParser, theme);
            typedArrayA.recycle();
        }

        @Override // b.r.a.a.i.e
        public boolean a() {
            return this.f3027g.d() || this.f3025e.d();
        }

        @Override // b.r.a.a.i.e
        public boolean a(int[] iArr) {
            return this.f3025e.a(iArr) | this.f3027g.a(iArr);
        }

        float getFillAlpha() {
            return this.f3030j;
        }

        int getFillColor() {
            return this.f3027g.a();
        }

        float getStrokeAlpha() {
            return this.f3028h;
        }

        int getStrokeColor() {
            return this.f3025e.a();
        }

        float getStrokeWidth() {
            return this.f3026f;
        }

        float getTrimPathEnd() {
            return this.l;
        }

        float getTrimPathOffset() {
            return this.m;
        }

        float getTrimPathStart() {
            return this.f3031k;
        }

        void setFillAlpha(float f2) {
            this.f3030j = f2;
        }

        void setFillColor(int i2) {
            this.f3027g.a(i2);
        }

        void setStrokeAlpha(float f2) {
            this.f3028h = f2;
        }

        void setStrokeColor(int i2) {
            this.f3025e.a(i2);
        }

        void setStrokeWidth(float f2) {
            this.f3026f = f2;
        }

        void setTrimPathEnd(float f2) {
            this.l = f2;
        }

        void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        void setTrimPathStart(float f2) {
            this.f3031k = f2;
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f3032a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<e> f3033b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f3034c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f3035d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f3036e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f3037f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f3038g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f3039h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f3040i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final Matrix f3041j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f3042k;
        private int[] l;
        private String m;

        public d() {
            super();
            this.f3032a = new Matrix();
            this.f3033b = new ArrayList<>();
            this.f3034c = 0.0f;
            this.f3035d = 0.0f;
            this.f3036e = 0.0f;
            this.f3037f = 1.0f;
            this.f3038g = 1.0f;
            this.f3039h = 0.0f;
            this.f3040i = 0.0f;
            this.f3041j = new Matrix();
            this.m = null;
        }

        public d(d dVar, b.e.a<String, Object> aVar) {
            f bVar;
            super();
            this.f3032a = new Matrix();
            this.f3033b = new ArrayList<>();
            this.f3034c = 0.0f;
            this.f3035d = 0.0f;
            this.f3036e = 0.0f;
            this.f3037f = 1.0f;
            this.f3038g = 1.0f;
            this.f3039h = 0.0f;
            this.f3040i = 0.0f;
            this.f3041j = new Matrix();
            this.m = null;
            this.f3034c = dVar.f3034c;
            this.f3035d = dVar.f3035d;
            this.f3036e = dVar.f3036e;
            this.f3037f = dVar.f3037f;
            this.f3038g = dVar.f3038g;
            this.f3039h = dVar.f3039h;
            this.f3040i = dVar.f3040i;
            this.l = dVar.l;
            this.m = dVar.m;
            this.f3042k = dVar.f3042k;
            String str = this.m;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f3041j.set(dVar.f3041j);
            ArrayList<e> arrayList = dVar.f3033b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                e eVar = arrayList.get(i2);
                if (eVar instanceof d) {
                    this.f3033b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.f3033b.add(bVar);
                    String str2 = bVar.f3044b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.f3034c = androidx.core.content.c.g.a(typedArray, xmlPullParser, "rotation", 5, this.f3034c);
            this.f3035d = typedArray.getFloat(1, this.f3035d);
            this.f3036e = typedArray.getFloat(2, this.f3036e);
            this.f3037f = androidx.core.content.c.g.a(typedArray, xmlPullParser, "scaleX", 3, this.f3037f);
            this.f3038g = androidx.core.content.c.g.a(typedArray, xmlPullParser, "scaleY", 4, this.f3038g);
            this.f3039h = androidx.core.content.c.g.a(typedArray, xmlPullParser, "translateX", 6, this.f3039h);
            this.f3040i = androidx.core.content.c.g.a(typedArray, xmlPullParser, "translateY", 7, this.f3040i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            b();
        }

        private void b() {
            this.f3041j.reset();
            this.f3041j.postTranslate(-this.f3035d, -this.f3036e);
            this.f3041j.postScale(this.f3037f, this.f3038g);
            this.f3041j.postRotate(this.f3034c, 0.0f, 0.0f);
            this.f3041j.postTranslate(this.f3039h + this.f3035d, this.f3040i + this.f3036e);
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2989b);
            a(typedArrayA, xmlPullParser);
            typedArrayA.recycle();
        }

        @Override // b.r.a.a.i.e
        public boolean a() {
            for (int i2 = 0; i2 < this.f3033b.size(); i2++) {
                if (this.f3033b.get(i2).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // b.r.a.a.i.e
        public boolean a(int[] iArr) {
            boolean zA = false;
            for (int i2 = 0; i2 < this.f3033b.size(); i2++) {
                zA |= this.f3033b.get(i2).a(iArr);
            }
            return zA;
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.f3041j;
        }

        public float getPivotX() {
            return this.f3035d;
        }

        public float getPivotY() {
            return this.f3036e;
        }

        public float getRotation() {
            return this.f3034c;
        }

        public float getScaleX() {
            return this.f3037f;
        }

        public float getScaleY() {
            return this.f3038g;
        }

        public float getTranslateX() {
            return this.f3039h;
        }

        public float getTranslateY() {
            return this.f3040i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f3035d) {
                this.f3035d = f2;
                b();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f3036e) {
                this.f3036e = f2;
                b();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f3034c) {
                this.f3034c = f2;
                b();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f3037f) {
                this.f3037f = f2;
                b();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f3038g) {
                this.f3038g = f2;
                b();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f3039h) {
                this.f3039h = f2;
                b();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.f3040i) {
                this.f3040i = f2;
                b();
            }
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean a(int[] iArr) {
            return false;
        }
    }

    private static abstract class f extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected b.C0099b[] f3043a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f3044b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3045c;

        public f() {
            super();
            this.f3043a = null;
        }

        public f(f fVar) {
            super();
            this.f3043a = null;
            this.f3044b = fVar.f3044b;
            this.f3045c = fVar.f3045c;
            this.f3043a = b.h.h.b.a(fVar.f3043a);
        }

        public void a(Path path) {
            path.reset();
            b.C0099b[] c0099bArr = this.f3043a;
            if (c0099bArr != null) {
                b.C0099b.a(c0099bArr, path);
            }
        }

        public boolean b() {
            return false;
        }

        public b.C0099b[] getPathData() {
            return this.f3043a;
        }

        public String getPathName() {
            return this.f3044b;
        }

        public void setPathData(b.C0099b[] c0099bArr) {
            if (b.h.h.b.a(this.f3043a, c0099bArr)) {
                b.h.h.b.b(this.f3043a, c0099bArr);
            } else {
                this.f3043a = b.h.h.b.a(c0099bArr);
            }
        }
    }

    private static class g {
        private static final Matrix q = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Path f3046a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Path f3047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Matrix f3048c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f3049d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f3050e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private PathMeasure f3051f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f3052g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final d f3053h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float f3054i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f3055j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f3056k;
        float l;
        int m;
        String n;
        Boolean o;
        final b.e.a<String, Object> p;

        public g() {
            this.f3048c = new Matrix();
            this.f3054i = 0.0f;
            this.f3055j = 0.0f;
            this.f3056k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new b.e.a<>();
            this.f3053h = new d();
            this.f3046a = new Path();
            this.f3047b = new Path();
        }

        public g(g gVar) {
            this.f3048c = new Matrix();
            this.f3054i = 0.0f;
            this.f3055j = 0.0f;
            this.f3056k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new b.e.a<>();
            this.f3053h = new d(gVar.f3053h, this.p);
            this.f3046a = new Path(gVar.f3046a);
            this.f3047b = new Path(gVar.f3047b);
            this.f3054i = gVar.f3054i;
            this.f3055j = gVar.f3055j;
            this.f3056k = gVar.f3056k;
            this.l = gVar.l;
            this.f3052g = gVar.f3052g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                this.p.put(str, this);
            }
            this.o = gVar.o;
        }

        private static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        private void a(d dVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            dVar.f3032a.set(matrix);
            dVar.f3032a.preConcat(dVar.f3041j);
            canvas.save();
            for (int i4 = 0; i4 < dVar.f3033b.size(); i4++) {
                e eVar = dVar.f3033b.get(i4);
                if (eVar instanceof d) {
                    a((d) eVar, dVar.f3032a, canvas, i2, i3, colorFilter);
                } else if (eVar instanceof f) {
                    a(dVar, (f) eVar, canvas, i2, i3, colorFilter);
                }
            }
            canvas.restore();
        }

        private void a(d dVar, f fVar, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            float f2 = i2 / this.f3056k;
            float f3 = i3 / this.l;
            float fMin = Math.min(f2, f3);
            Matrix matrix = dVar.f3032a;
            this.f3048c.set(matrix);
            this.f3048c.postScale(f2, f3);
            float fA = a(matrix);
            if (fA == 0.0f) {
                return;
            }
            fVar.a(this.f3046a);
            Path path = this.f3046a;
            this.f3047b.reset();
            if (fVar.b()) {
                this.f3047b.addPath(path, this.f3048c);
                canvas.clipPath(this.f3047b);
                return;
            }
            c cVar = (c) fVar;
            if (cVar.f3031k != 0.0f || cVar.l != 1.0f) {
                float f4 = cVar.f3031k;
                float f5 = cVar.m;
                float f6 = (f4 + f5) % 1.0f;
                float f7 = (cVar.l + f5) % 1.0f;
                if (this.f3051f == null) {
                    this.f3051f = new PathMeasure();
                }
                this.f3051f.setPath(this.f3046a, false);
                float length = this.f3051f.getLength();
                float f8 = f6 * length;
                float f9 = f7 * length;
                path.reset();
                if (f8 > f9) {
                    this.f3051f.getSegment(f8, length, path, true);
                    this.f3051f.getSegment(0.0f, f9, path, true);
                } else {
                    this.f3051f.getSegment(f8, f9, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f3047b.addPath(path, this.f3048c);
            if (cVar.f3027g.e()) {
                androidx.core.content.c.b bVar = cVar.f3027g;
                if (this.f3050e == null) {
                    this.f3050e = new Paint(1);
                    this.f3050e.setStyle(Paint.Style.FILL);
                }
                Paint paint = this.f3050e;
                if (bVar.c()) {
                    Shader shaderB = bVar.b();
                    shaderB.setLocalMatrix(this.f3048c);
                    paint.setShader(shaderB);
                    paint.setAlpha(Math.round(cVar.f3030j * 255.0f));
                } else {
                    paint.setColor(i.a(bVar.a(), cVar.f3030j));
                }
                paint.setColorFilter(colorFilter);
                this.f3047b.setFillType(cVar.f3029i == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f3047b, paint);
            }
            if (cVar.f3025e.e()) {
                androidx.core.content.c.b bVar2 = cVar.f3025e;
                if (this.f3049d == null) {
                    this.f3049d = new Paint(1);
                    this.f3049d.setStyle(Paint.Style.STROKE);
                }
                Paint paint2 = this.f3049d;
                Paint.Join join = cVar.o;
                if (join != null) {
                    paint2.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.n;
                if (cap != null) {
                    paint2.setStrokeCap(cap);
                }
                paint2.setStrokeMiter(cVar.p);
                if (bVar2.c()) {
                    Shader shaderB2 = bVar2.b();
                    shaderB2.setLocalMatrix(this.f3048c);
                    paint2.setShader(shaderB2);
                    paint2.setAlpha(Math.round(cVar.f3028h * 255.0f));
                } else {
                    paint2.setColor(i.a(bVar2.a(), cVar.f3028h));
                }
                paint2.setColorFilter(colorFilter);
                paint2.setStrokeWidth(cVar.f3026f * fMin * fA);
                canvas.drawPath(this.f3047b, paint2);
            }
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            a(this.f3053h, q, canvas, i2, i3, colorFilter);
        }

        public boolean a() {
            if (this.o == null) {
                this.o = Boolean.valueOf(this.f3053h.a());
            }
            return this.o.booleanValue();
        }

        public boolean a(int[] iArr) {
            return this.f3053h.a(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.m = i2;
        }
    }

    private static class h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f3058b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f3059c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f3060d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f3061e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Bitmap f3062f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f3063g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f3064h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f3065i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f3066j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f3067k;
        Paint l;

        public h() {
            this.f3059c = null;
            this.f3060d = i.f3015k;
            this.f3058b = new g();
        }

        public h(h hVar) {
            this.f3059c = null;
            this.f3060d = i.f3015k;
            if (hVar != null) {
                this.f3057a = hVar.f3057a;
                this.f3058b = new g(hVar.f3058b);
                Paint paint = hVar.f3058b.f3050e;
                if (paint != null) {
                    this.f3058b.f3050e = new Paint(paint);
                }
                Paint paint2 = hVar.f3058b.f3049d;
                if (paint2 != null) {
                    this.f3058b.f3049d = new Paint(paint2);
                }
                this.f3059c = hVar.f3059c;
                this.f3060d = hVar.f3060d;
                this.f3061e = hVar.f3061e;
            }
        }

        public Paint a(ColorFilter colorFilter) {
            if (!b() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                this.l = new Paint();
                this.l.setFilterBitmap(true);
            }
            this.l.setAlpha(this.f3058b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f3062f, (Rect) null, rect, a(colorFilter));
        }

        public boolean a() {
            return !this.f3067k && this.f3063g == this.f3059c && this.f3064h == this.f3060d && this.f3066j == this.f3061e && this.f3065i == this.f3058b.getRootAlpha();
        }

        public boolean a(int i2, int i3) {
            return i2 == this.f3062f.getWidth() && i3 == this.f3062f.getHeight();
        }

        public boolean a(int[] iArr) {
            boolean zA = this.f3058b.a(iArr);
            this.f3067k |= zA;
            return zA;
        }

        public void b(int i2, int i3) {
            if (this.f3062f == null || !a(i2, i3)) {
                this.f3062f = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                this.f3067k = true;
            }
        }

        public boolean b() {
            return this.f3058b.getRootAlpha() < 255;
        }

        public void c(int i2, int i3) {
            this.f3062f.eraseColor(0);
            this.f3058b.a(new Canvas(this.f3062f), i2, i3, (ColorFilter) null);
        }

        public boolean c() {
            return this.f3058b.a();
        }

        public void d() {
            this.f3063g = this.f3059c;
            this.f3064h = this.f3060d;
            this.f3065i = this.f3058b.getRootAlpha();
            this.f3066j = this.f3061e;
            this.f3067k = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3057a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }
    }

    /* JADX INFO: renamed from: b.r.a.a.i$i, reason: collision with other inner class name */
    private static class C0126i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f3068a;

        public C0126i(Drawable.ConstantState constantState) {
            this.f3068a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f3068a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3068a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.f3014b = (VectorDrawable) this.f3068a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f3014b = (VectorDrawable) this.f3068a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f3014b = (VectorDrawable) this.f3068a.newDrawable(resources, theme);
            return iVar;
        }
    }

    i() {
        this.f3020g = true;
        this.f3021h = new float[9];
        this.f3022i = new Matrix();
        this.f3023j = new Rect();
        this.f3016c = new h();
    }

    i(h hVar) {
        this.f3020g = true;
        this.f3021h = new float[9];
        this.f3022i = new Matrix();
        this.f3023j = new Rect();
        this.f3016c = hVar;
        this.f3017d = a(this.f3017d, hVar.f3059c, hVar.f3060d);
    }

    static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (Color.alpha(i2) * f2)) << 24);
    }

    private static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static i a(Resources resources, int i2, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f3014b = androidx.core.content.c.f.a(resources, i2, theme);
            new C0126i(iVar.f3014b.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(resources, (XmlPullParser) xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i2;
        int i3;
        f fVar;
        h hVar = this.f3016c;
        g gVar = hVar.f3058b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f3053h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3033b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    fVar = cVar;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3033b.add(bVar);
                    String pathName = bVar.getPathName();
                    fVar = bVar;
                    if (pathName != null) {
                        gVar.p.put(bVar.getPathName(), bVar);
                        fVar = bVar;
                    }
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3033b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.p.put(dVar2.getGroupName(), dVar2);
                    }
                    i2 = hVar.f3057a;
                    i3 = dVar2.f3042k;
                    hVar.f3057a = i3 | i2;
                }
                i2 = hVar.f3057a;
                i3 = fVar.f3045c;
                hVar.f3057a = i3 | i2;
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser) throws XmlPullParserException {
        h hVar = this.f3016c;
        g gVar = hVar.f3058b;
        hVar.f3060d = a(androidx.core.content.c.g.b(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            hVar.f3059c = colorStateList;
        }
        hVar.f3061e = androidx.core.content.c.g.a(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f3061e);
        gVar.f3056k = androidx.core.content.c.g.a(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f3056k);
        gVar.l = androidx.core.content.c.g.a(typedArray, xmlPullParser, "viewportHeight", 8, gVar.l);
        if (gVar.f3056k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (gVar.l <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.f3054i = typedArray.getDimension(3, gVar.f3054i);
        gVar.f3055j = typedArray.getDimension(2, gVar.f3055j);
        if (gVar.f3054i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (gVar.f3055j <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(androidx.core.content.c.g.a(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.n = string;
            gVar.p.put(string, gVar);
        }
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.e(this) == 1;
    }

    public static i createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    Object a(String str) {
        return this.f3016c.f3058b.p.get(str);
    }

    void a(boolean z) {
        this.f3020g = z;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f3014b;
        if (drawable == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.a(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f3023j);
        if (this.f3023j.width() <= 0 || this.f3023j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f3018e;
        if (colorFilter == null) {
            colorFilter = this.f3017d;
        }
        canvas.getMatrix(this.f3022i);
        this.f3022i.getValues(this.f3021h);
        float fAbs = Math.abs(this.f3021h[0]);
        float fAbs2 = Math.abs(this.f3021h[4]);
        float fAbs3 = Math.abs(this.f3021h[1]);
        float fAbs4 = Math.abs(this.f3021h[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(2048, (int) (this.f3023j.width() * fAbs));
        int iMin2 = Math.min(2048, (int) (this.f3023j.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f3023j;
        canvas.translate(rect.left, rect.top);
        if (a()) {
            canvas.translate(this.f3023j.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f3023j.offsetTo(0, 0);
        this.f3016c.b(iMin, iMin2);
        if (!this.f3020g) {
            this.f3016c.c(iMin, iMin2);
        } else if (!this.f3016c.a()) {
            this.f3016c.c(iMin, iMin2);
            this.f3016c.d();
        }
        this.f3016c.a(canvas, colorFilter, this.f3023j);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f3014b;
        return drawable != null ? androidx.core.graphics.drawable.a.c(drawable) : this.f3016c.f3058b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f3016c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f3014b;
        if (drawable != null && Build.VERSION.SDK_INT >= 24) {
            return new C0126i(drawable.getConstantState());
        }
        this.f3016c.f3057a = getChangingConfigurations();
        return this.f3016c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f3016c.f3058b.f3055j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f3016c.f3058b.f3054i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f3016c;
        hVar.f3058b = new g();
        TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2988a);
        a(typedArrayA, xmlPullParser);
        typedArrayA.recycle();
        hVar.f3057a = getChangingConfigurations();
        hVar.f3067k = true;
        a(resources, xmlPullParser, attributeSet, theme);
        this.f3017d = a(this.f3017d, hVar.f3059c, hVar.f3060d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f3014b;
        return drawable != null ? androidx.core.graphics.drawable.a.f(drawable) : this.f3016c.f3061e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((hVar = this.f3016c) != null && (hVar.c() || ((colorStateList = this.f3016c.f3059c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f3019f && super.mutate() == this) {
            this.f3016c = new h(this.f3016c);
            this.f3019f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.f3016c;
        ColorStateList colorStateList = hVar.f3059c;
        if (colorStateList != null && (mode = hVar.f3060d) != null) {
            this.f3017d = a(this.f3017d, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!hVar.c() || !hVar.a(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f3016c.f3058b.getRootAlpha() != i2) {
            this.f3016c.f3058b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, z);
        } else {
            this.f3016c.f3061e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f3018e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.b(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            return;
        }
        h hVar = this.f3016c;
        if (hVar.f3059c != colorStateList) {
            hVar.f3059c = colorStateList;
            this.f3017d = a(this.f3017d, colorStateList, hVar.f3060d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
            return;
        }
        h hVar = this.f3016c;
        if (hVar.f3060d != mode) {
            hVar.f3060d = mode;
            this.f3017d = a(this.f3017d, hVar.f3059c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
