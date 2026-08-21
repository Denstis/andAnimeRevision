package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f782b = {0, 4, 8};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SparseIntArray f783c = new SparseIntArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<Integer, C0015b> f784a = new HashMap<>();

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.b$b, reason: collision with other inner class name */
    private static class C0015b {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public float Q;
        public float R;
        public int S;
        public int T;
        public float U;
        public boolean V;
        public float W;
        public float X;
        public float Y;
        public float Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f785a;
        public float a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f786b;
        public float b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f787c;
        public float c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f788d;
        public float d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f789e;
        public float e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f790f;
        public float f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f791g;
        public float g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f792h;
        public boolean h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f793i;
        public boolean i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f794j;
        public int j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f795k;
        public int k0;
        public int l;
        public int l0;
        public int m;
        public int m0;
        public int n;
        public int n0;
        public int o;
        public int o0;
        public int p;
        public float p0;
        public int q;
        public float q0;
        public int r;
        public boolean r0;
        public int s;
        public int s0;
        public int t;
        public int t0;
        public float u;
        public int[] u0;
        public float v;
        public String v0;
        public String w;
        public int x;
        public int y;
        public float z;

        private C0015b() {
            this.f785a = false;
            this.f789e = -1;
            this.f790f = -1;
            this.f791g = -1.0f;
            this.f792h = -1;
            this.f793i = -1;
            this.f794j = -1;
            this.f795k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = 0.5f;
            this.v = 0.5f;
            this.w = null;
            this.x = -1;
            this.y = 0;
            this.z = 0.0f;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = -1;
            this.I = -1;
            this.J = 0;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = 0.0f;
            this.R = 0.0f;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = false;
            this.W = 0.0f;
            this.X = 0.0f;
            this.Y = 0.0f;
            this.Z = 0.0f;
            this.a0 = 1.0f;
            this.b0 = 1.0f;
            this.c0 = Float.NaN;
            this.d0 = Float.NaN;
            this.e0 = 0.0f;
            this.f0 = 0.0f;
            this.g0 = 0.0f;
            this.h0 = false;
            this.i0 = false;
            this.j0 = 0;
            this.k0 = 0;
            this.l0 = -1;
            this.m0 = -1;
            this.n0 = -1;
            this.o0 = -1;
            this.p0 = 1.0f;
            this.q0 = 1.0f;
            this.r0 = false;
            this.s0 = -1;
            this.t0 = -1;
        }

        private void a(int i2, ConstraintLayout.a aVar) {
            this.f788d = i2;
            this.f792h = aVar.f767d;
            this.f793i = aVar.f768e;
            this.f794j = aVar.f769f;
            this.f795k = aVar.f770g;
            this.l = aVar.f771h;
            this.m = aVar.f772i;
            this.n = aVar.f773j;
            this.o = aVar.f774k;
            this.p = aVar.l;
            this.q = aVar.p;
            this.r = aVar.q;
            this.s = aVar.r;
            this.t = aVar.s;
            this.u = aVar.z;
            this.v = aVar.A;
            this.w = aVar.B;
            this.x = aVar.m;
            this.y = aVar.n;
            this.z = aVar.o;
            this.A = aVar.P;
            this.B = aVar.Q;
            this.C = aVar.R;
            this.f791g = aVar.f766c;
            this.f789e = aVar.f764a;
            this.f790f = aVar.f765b;
            this.f786b = ((ViewGroup.MarginLayoutParams) aVar).width;
            this.f787c = ((ViewGroup.MarginLayoutParams) aVar).height;
            this.D = ((ViewGroup.MarginLayoutParams) aVar).leftMargin;
            this.E = ((ViewGroup.MarginLayoutParams) aVar).rightMargin;
            this.F = ((ViewGroup.MarginLayoutParams) aVar).topMargin;
            this.G = ((ViewGroup.MarginLayoutParams) aVar).bottomMargin;
            this.Q = aVar.E;
            this.R = aVar.D;
            this.T = aVar.G;
            this.S = aVar.F;
            boolean z = aVar.S;
            this.h0 = z;
            this.i0 = aVar.T;
            this.j0 = aVar.H;
            this.k0 = aVar.I;
            this.h0 = z;
            this.l0 = aVar.L;
            this.m0 = aVar.M;
            this.n0 = aVar.J;
            this.o0 = aVar.K;
            this.p0 = aVar.N;
            this.q0 = aVar.O;
            if (Build.VERSION.SDK_INT >= 17) {
                this.H = aVar.getMarginEnd();
                this.I = aVar.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i2, c.a aVar) {
            a(i2, (ConstraintLayout.a) aVar);
            this.U = aVar.m0;
            this.X = aVar.p0;
            this.Y = aVar.q0;
            this.Z = aVar.r0;
            this.a0 = aVar.s0;
            this.b0 = aVar.t0;
            this.c0 = aVar.u0;
            this.d0 = aVar.v0;
            this.e0 = aVar.w0;
            this.f0 = aVar.x0;
            this.g0 = aVar.y0;
            this.W = aVar.o0;
            this.V = aVar.n0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(androidx.constraintlayout.widget.a aVar, int i2, c.a aVar2) {
            a(i2, aVar2);
            if (aVar instanceof Barrier) {
                this.t0 = 1;
                Barrier barrier = (Barrier) aVar;
                this.s0 = barrier.getType();
                this.u0 = barrier.getReferencedIds();
            }
        }

        public void a(ConstraintLayout.a aVar) {
            aVar.f767d = this.f792h;
            aVar.f768e = this.f793i;
            aVar.f769f = this.f794j;
            aVar.f770g = this.f795k;
            aVar.f771h = this.l;
            aVar.f772i = this.m;
            aVar.f773j = this.n;
            aVar.f774k = this.o;
            aVar.l = this.p;
            aVar.p = this.q;
            aVar.q = this.r;
            aVar.r = this.s;
            aVar.s = this.t;
            ((ViewGroup.MarginLayoutParams) aVar).leftMargin = this.D;
            ((ViewGroup.MarginLayoutParams) aVar).rightMargin = this.E;
            ((ViewGroup.MarginLayoutParams) aVar).topMargin = this.F;
            ((ViewGroup.MarginLayoutParams) aVar).bottomMargin = this.G;
            aVar.x = this.P;
            aVar.y = this.O;
            aVar.z = this.u;
            aVar.A = this.v;
            aVar.m = this.x;
            aVar.n = this.y;
            aVar.o = this.z;
            aVar.B = this.w;
            aVar.P = this.A;
            aVar.Q = this.B;
            aVar.E = this.Q;
            aVar.D = this.R;
            aVar.G = this.T;
            aVar.F = this.S;
            aVar.S = this.h0;
            aVar.T = this.i0;
            aVar.H = this.j0;
            aVar.I = this.k0;
            aVar.L = this.l0;
            aVar.M = this.m0;
            aVar.J = this.n0;
            aVar.K = this.o0;
            aVar.N = this.p0;
            aVar.O = this.q0;
            aVar.R = this.C;
            aVar.f766c = this.f791g;
            aVar.f764a = this.f789e;
            aVar.f765b = this.f790f;
            ((ViewGroup.MarginLayoutParams) aVar).width = this.f786b;
            ((ViewGroup.MarginLayoutParams) aVar).height = this.f787c;
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.setMarginStart(this.I);
                aVar.setMarginEnd(this.H);
            }
            aVar.a();
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public C0015b m0clone() {
            C0015b c0015b = new C0015b();
            c0015b.f785a = this.f785a;
            c0015b.f786b = this.f786b;
            c0015b.f787c = this.f787c;
            c0015b.f789e = this.f789e;
            c0015b.f790f = this.f790f;
            c0015b.f791g = this.f791g;
            c0015b.f792h = this.f792h;
            c0015b.f793i = this.f793i;
            c0015b.f794j = this.f794j;
            c0015b.f795k = this.f795k;
            c0015b.l = this.l;
            c0015b.m = this.m;
            c0015b.n = this.n;
            c0015b.o = this.o;
            c0015b.p = this.p;
            c0015b.q = this.q;
            c0015b.r = this.r;
            c0015b.s = this.s;
            c0015b.t = this.t;
            c0015b.u = this.u;
            c0015b.v = this.v;
            c0015b.w = this.w;
            c0015b.A = this.A;
            c0015b.B = this.B;
            c0015b.u = this.u;
            c0015b.u = this.u;
            c0015b.u = this.u;
            c0015b.u = this.u;
            c0015b.u = this.u;
            c0015b.C = this.C;
            c0015b.D = this.D;
            c0015b.E = this.E;
            c0015b.F = this.F;
            c0015b.G = this.G;
            c0015b.H = this.H;
            c0015b.I = this.I;
            c0015b.J = this.J;
            c0015b.K = this.K;
            c0015b.L = this.L;
            c0015b.M = this.M;
            c0015b.N = this.N;
            c0015b.O = this.O;
            c0015b.P = this.P;
            c0015b.Q = this.Q;
            c0015b.R = this.R;
            c0015b.S = this.S;
            c0015b.T = this.T;
            c0015b.U = this.U;
            c0015b.V = this.V;
            c0015b.W = this.W;
            c0015b.X = this.X;
            c0015b.Y = this.Y;
            c0015b.Z = this.Z;
            c0015b.a0 = this.a0;
            c0015b.b0 = this.b0;
            c0015b.c0 = this.c0;
            c0015b.d0 = this.d0;
            c0015b.e0 = this.e0;
            c0015b.f0 = this.f0;
            c0015b.g0 = this.g0;
            c0015b.h0 = this.h0;
            c0015b.i0 = this.i0;
            c0015b.j0 = this.j0;
            c0015b.k0 = this.k0;
            c0015b.l0 = this.l0;
            c0015b.m0 = this.m0;
            c0015b.n0 = this.n0;
            c0015b.o0 = this.o0;
            c0015b.p0 = this.p0;
            c0015b.q0 = this.q0;
            c0015b.s0 = this.s0;
            c0015b.t0 = this.t0;
            int[] iArr = this.u0;
            if (iArr != null) {
                c0015b.u0 = Arrays.copyOf(iArr, iArr.length);
            }
            c0015b.x = this.x;
            c0015b.y = this.y;
            c0015b.z = this.z;
            c0015b.r0 = this.r0;
            return c0015b;
        }
    }

    static {
        f783c.append(g.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        f783c.append(g.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        f783c.append(g.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        f783c.append(g.ConstraintSet_layout_constraintRight_toRightOf, 30);
        f783c.append(g.ConstraintSet_layout_constraintTop_toTopOf, 36);
        f783c.append(g.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        f783c.append(g.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        f783c.append(g.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        f783c.append(g.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        f783c.append(g.ConstraintSet_layout_editor_absoluteX, 6);
        f783c.append(g.ConstraintSet_layout_editor_absoluteY, 7);
        f783c.append(g.ConstraintSet_layout_constraintGuide_begin, 17);
        f783c.append(g.ConstraintSet_layout_constraintGuide_end, 18);
        f783c.append(g.ConstraintSet_layout_constraintGuide_percent, 19);
        f783c.append(g.ConstraintSet_android_orientation, 27);
        f783c.append(g.ConstraintSet_layout_constraintStart_toEndOf, 32);
        f783c.append(g.ConstraintSet_layout_constraintStart_toStartOf, 33);
        f783c.append(g.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        f783c.append(g.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        f783c.append(g.ConstraintSet_layout_goneMarginLeft, 13);
        f783c.append(g.ConstraintSet_layout_goneMarginTop, 16);
        f783c.append(g.ConstraintSet_layout_goneMarginRight, 14);
        f783c.append(g.ConstraintSet_layout_goneMarginBottom, 11);
        f783c.append(g.ConstraintSet_layout_goneMarginStart, 15);
        f783c.append(g.ConstraintSet_layout_goneMarginEnd, 12);
        f783c.append(g.ConstraintSet_layout_constraintVertical_weight, 40);
        f783c.append(g.ConstraintSet_layout_constraintHorizontal_weight, 39);
        f783c.append(g.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        f783c.append(g.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        f783c.append(g.ConstraintSet_layout_constraintHorizontal_bias, 20);
        f783c.append(g.ConstraintSet_layout_constraintVertical_bias, 37);
        f783c.append(g.ConstraintSet_layout_constraintDimensionRatio, 5);
        f783c.append(g.ConstraintSet_layout_constraintLeft_creator, 75);
        f783c.append(g.ConstraintSet_layout_constraintTop_creator, 75);
        f783c.append(g.ConstraintSet_layout_constraintRight_creator, 75);
        f783c.append(g.ConstraintSet_layout_constraintBottom_creator, 75);
        f783c.append(g.ConstraintSet_layout_constraintBaseline_creator, 75);
        f783c.append(g.ConstraintSet_android_layout_marginLeft, 24);
        f783c.append(g.ConstraintSet_android_layout_marginRight, 28);
        f783c.append(g.ConstraintSet_android_layout_marginStart, 31);
        f783c.append(g.ConstraintSet_android_layout_marginEnd, 8);
        f783c.append(g.ConstraintSet_android_layout_marginTop, 34);
        f783c.append(g.ConstraintSet_android_layout_marginBottom, 2);
        f783c.append(g.ConstraintSet_android_layout_width, 23);
        f783c.append(g.ConstraintSet_android_layout_height, 21);
        f783c.append(g.ConstraintSet_android_visibility, 22);
        f783c.append(g.ConstraintSet_android_alpha, 43);
        f783c.append(g.ConstraintSet_android_elevation, 44);
        f783c.append(g.ConstraintSet_android_rotationX, 45);
        f783c.append(g.ConstraintSet_android_rotationY, 46);
        f783c.append(g.ConstraintSet_android_rotation, 60);
        f783c.append(g.ConstraintSet_android_scaleX, 47);
        f783c.append(g.ConstraintSet_android_scaleY, 48);
        f783c.append(g.ConstraintSet_android_transformPivotX, 49);
        f783c.append(g.ConstraintSet_android_transformPivotY, 50);
        f783c.append(g.ConstraintSet_android_translationX, 51);
        f783c.append(g.ConstraintSet_android_translationY, 52);
        f783c.append(g.ConstraintSet_android_translationZ, 53);
        f783c.append(g.ConstraintSet_layout_constraintWidth_default, 54);
        f783c.append(g.ConstraintSet_layout_constraintHeight_default, 55);
        f783c.append(g.ConstraintSet_layout_constraintWidth_max, 56);
        f783c.append(g.ConstraintSet_layout_constraintHeight_max, 57);
        f783c.append(g.ConstraintSet_layout_constraintWidth_min, 58);
        f783c.append(g.ConstraintSet_layout_constraintHeight_min, 59);
        f783c.append(g.ConstraintSet_layout_constraintCircle, 61);
        f783c.append(g.ConstraintSet_layout_constraintCircleRadius, 62);
        f783c.append(g.ConstraintSet_layout_constraintCircleAngle, 63);
        f783c.append(g.ConstraintSet_android_id, 38);
        f783c.append(g.ConstraintSet_layout_constraintWidth_percent, 69);
        f783c.append(g.ConstraintSet_layout_constraintHeight_percent, 70);
        f783c.append(g.ConstraintSet_chainUseRtl, 71);
        f783c.append(g.ConstraintSet_barrierDirection, 72);
        f783c.append(g.ConstraintSet_constraint_referenced_ids, 73);
        f783c.append(g.ConstraintSet_barrierAllowsGoneWidgets, 74);
    }

    private static int a(TypedArray typedArray, int i2, int i3) {
        int resourceId = typedArray.getResourceId(i2, i3);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    private C0015b a(Context context, AttributeSet attributeSet) {
        C0015b c0015b = new C0015b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.ConstraintSet);
        a(c0015b, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return c0015b;
    }

    private void a(C0015b c0015b, TypedArray typedArray) {
        StringBuilder sb;
        String str;
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            int i3 = f783c.get(index);
            switch (i3) {
                case 1:
                    c0015b.p = a(typedArray, index, c0015b.p);
                    break;
                case 2:
                    c0015b.G = typedArray.getDimensionPixelSize(index, c0015b.G);
                    break;
                case 3:
                    c0015b.o = a(typedArray, index, c0015b.o);
                    break;
                case 4:
                    c0015b.n = a(typedArray, index, c0015b.n);
                    break;
                case 5:
                    c0015b.w = typedArray.getString(index);
                    break;
                case 6:
                    c0015b.A = typedArray.getDimensionPixelOffset(index, c0015b.A);
                    break;
                case 7:
                    c0015b.B = typedArray.getDimensionPixelOffset(index, c0015b.B);
                    break;
                case 8:
                    c0015b.H = typedArray.getDimensionPixelSize(index, c0015b.H);
                    break;
                case 9:
                    c0015b.t = a(typedArray, index, c0015b.t);
                    break;
                case 10:
                    c0015b.s = a(typedArray, index, c0015b.s);
                    break;
                case 11:
                    c0015b.N = typedArray.getDimensionPixelSize(index, c0015b.N);
                    break;
                case 12:
                    c0015b.O = typedArray.getDimensionPixelSize(index, c0015b.O);
                    break;
                case 13:
                    c0015b.K = typedArray.getDimensionPixelSize(index, c0015b.K);
                    break;
                case 14:
                    c0015b.M = typedArray.getDimensionPixelSize(index, c0015b.M);
                    break;
                case 15:
                    c0015b.P = typedArray.getDimensionPixelSize(index, c0015b.P);
                    break;
                case 16:
                    c0015b.L = typedArray.getDimensionPixelSize(index, c0015b.L);
                    break;
                case 17:
                    c0015b.f789e = typedArray.getDimensionPixelOffset(index, c0015b.f789e);
                    break;
                case 18:
                    c0015b.f790f = typedArray.getDimensionPixelOffset(index, c0015b.f790f);
                    break;
                case 19:
                    c0015b.f791g = typedArray.getFloat(index, c0015b.f791g);
                    break;
                case 20:
                    c0015b.u = typedArray.getFloat(index, c0015b.u);
                    break;
                case 21:
                    c0015b.f787c = typedArray.getLayoutDimension(index, c0015b.f787c);
                    break;
                case 22:
                    c0015b.J = typedArray.getInt(index, c0015b.J);
                    c0015b.J = f782b[c0015b.J];
                    break;
                case 23:
                    c0015b.f786b = typedArray.getLayoutDimension(index, c0015b.f786b);
                    break;
                case 24:
                    c0015b.D = typedArray.getDimensionPixelSize(index, c0015b.D);
                    break;
                case 25:
                    c0015b.f792h = a(typedArray, index, c0015b.f792h);
                    break;
                case 26:
                    c0015b.f793i = a(typedArray, index, c0015b.f793i);
                    break;
                case 27:
                    c0015b.C = typedArray.getInt(index, c0015b.C);
                    break;
                case 28:
                    c0015b.E = typedArray.getDimensionPixelSize(index, c0015b.E);
                    break;
                case 29:
                    c0015b.f794j = a(typedArray, index, c0015b.f794j);
                    break;
                case 30:
                    c0015b.f795k = a(typedArray, index, c0015b.f795k);
                    break;
                case 31:
                    c0015b.I = typedArray.getDimensionPixelSize(index, c0015b.I);
                    break;
                case 32:
                    c0015b.q = a(typedArray, index, c0015b.q);
                    break;
                case 33:
                    c0015b.r = a(typedArray, index, c0015b.r);
                    break;
                case 34:
                    c0015b.F = typedArray.getDimensionPixelSize(index, c0015b.F);
                    break;
                case 35:
                    c0015b.m = a(typedArray, index, c0015b.m);
                    break;
                case 36:
                    c0015b.l = a(typedArray, index, c0015b.l);
                    break;
                case 37:
                    c0015b.v = typedArray.getFloat(index, c0015b.v);
                    break;
                case 38:
                    c0015b.f788d = typedArray.getResourceId(index, c0015b.f788d);
                    break;
                case 39:
                    c0015b.R = typedArray.getFloat(index, c0015b.R);
                    break;
                case 40:
                    c0015b.Q = typedArray.getFloat(index, c0015b.Q);
                    break;
                case 41:
                    c0015b.S = typedArray.getInt(index, c0015b.S);
                    break;
                case 42:
                    c0015b.T = typedArray.getInt(index, c0015b.T);
                    break;
                case 43:
                    c0015b.U = typedArray.getFloat(index, c0015b.U);
                    break;
                case 44:
                    c0015b.V = true;
                    c0015b.W = typedArray.getDimension(index, c0015b.W);
                    break;
                case 45:
                    c0015b.Y = typedArray.getFloat(index, c0015b.Y);
                    break;
                case 46:
                    c0015b.Z = typedArray.getFloat(index, c0015b.Z);
                    break;
                case 47:
                    c0015b.a0 = typedArray.getFloat(index, c0015b.a0);
                    break;
                case 48:
                    c0015b.b0 = typedArray.getFloat(index, c0015b.b0);
                    break;
                case 49:
                    c0015b.c0 = typedArray.getFloat(index, c0015b.c0);
                    break;
                case 50:
                    c0015b.d0 = typedArray.getFloat(index, c0015b.d0);
                    break;
                case 51:
                    c0015b.e0 = typedArray.getDimension(index, c0015b.e0);
                    break;
                case 52:
                    c0015b.f0 = typedArray.getDimension(index, c0015b.f0);
                    break;
                case 53:
                    c0015b.g0 = typedArray.getDimension(index, c0015b.g0);
                    break;
                default:
                    switch (i3) {
                        case 60:
                            c0015b.X = typedArray.getFloat(index, c0015b.X);
                            break;
                        case 61:
                            c0015b.x = a(typedArray, index, c0015b.x);
                            break;
                        case 62:
                            c0015b.y = typedArray.getDimensionPixelSize(index, c0015b.y);
                            break;
                        case 63:
                            c0015b.z = typedArray.getFloat(index, c0015b.z);
                            break;
                        default:
                            switch (i3) {
                                case 69:
                                    c0015b.p0 = typedArray.getFloat(index, 1.0f);
                                    continue;
                                case 70:
                                    c0015b.q0 = typedArray.getFloat(index, 1.0f);
                                    continue;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    continue;
                                case 72:
                                    c0015b.s0 = typedArray.getInt(index, c0015b.s0);
                                    continue;
                                case 73:
                                    c0015b.v0 = typedArray.getString(index);
                                    continue;
                                case 74:
                                    c0015b.r0 = typedArray.getBoolean(index, c0015b.r0);
                                    continue;
                                case 75:
                                    sb = new StringBuilder();
                                    str = "unused attribute 0x";
                                    break;
                                default:
                                    sb = new StringBuilder();
                                    str = "Unknown attribute 0x";
                                    break;
                            }
                            sb.append(str);
                            sb.append(Integer.toHexString(index));
                            sb.append("   ");
                            sb.append(f783c.get(index));
                            Log.w("ConstraintSet", sb.toString());
                            break;
                    }
                    break;
            }
        }
    }

    private int[] a(View view, String str) {
        int iIntValue;
        Object objA;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < strArrSplit.length) {
            String strTrim = strArrSplit[i2].trim();
            try {
                iIntValue = f.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, TtmlNode.ATTR_ID, context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (objA = ((ConstraintLayout) view.getParent()).a(0, strTrim)) != null && (objA instanceof Integer)) {
                iIntValue = ((Integer) objA).intValue();
            }
            iArr[i3] = iIntValue;
            i2++;
            i3++;
        }
        return i3 != strArrSplit.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    public void a(Context context, int i2) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0015b c0015bA = a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        c0015bA.f785a = true;
                    }
                    this.f784a.put(Integer.valueOf(c0015bA.f788d), c0015bA);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f784a.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (this.f784a.containsKey(Integer.valueOf(id))) {
                hashSet.remove(Integer.valueOf(id));
                C0015b c0015b = this.f784a.get(Integer.valueOf(id));
                if (childAt instanceof Barrier) {
                    c0015b.t0 = 1;
                }
                int i3 = c0015b.t0;
                if (i3 != -1 && i3 == 1) {
                    Barrier barrier = (Barrier) childAt;
                    barrier.setId(id);
                    barrier.setType(c0015b.s0);
                    barrier.setAllowsGoneWidget(c0015b.r0);
                    int[] iArr = c0015b.u0;
                    if (iArr != null) {
                        barrier.setReferencedIds(iArr);
                    } else {
                        String str = c0015b.v0;
                        if (str != null) {
                            c0015b.u0 = a(barrier, str);
                            barrier.setReferencedIds(c0015b.u0);
                        }
                    }
                }
                ConstraintLayout.a aVar = (ConstraintLayout.a) childAt.getLayoutParams();
                c0015b.a(aVar);
                childAt.setLayoutParams(aVar);
                childAt.setVisibility(c0015b.J);
                if (Build.VERSION.SDK_INT >= 17) {
                    childAt.setAlpha(c0015b.U);
                    childAt.setRotation(c0015b.X);
                    childAt.setRotationX(c0015b.Y);
                    childAt.setRotationY(c0015b.Z);
                    childAt.setScaleX(c0015b.a0);
                    childAt.setScaleY(c0015b.b0);
                    if (!Float.isNaN(c0015b.c0)) {
                        childAt.setPivotX(c0015b.c0);
                    }
                    if (!Float.isNaN(c0015b.d0)) {
                        childAt.setPivotY(c0015b.d0);
                    }
                    childAt.setTranslationX(c0015b.e0);
                    childAt.setTranslationY(c0015b.f0);
                    if (Build.VERSION.SDK_INT >= 21) {
                        childAt.setTranslationZ(c0015b.g0);
                        if (c0015b.V) {
                            childAt.setElevation(c0015b.W);
                        }
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            C0015b c0015b2 = this.f784a.get(num);
            int i4 = c0015b2.t0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = c0015b2.u0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c0015b2.v0;
                    if (str2 != null) {
                        c0015b2.u0 = a(barrier2, str2);
                        barrier2.setReferencedIds(c0015b2.u0);
                    }
                }
                barrier2.setType(c0015b2.s0);
                ConstraintLayout.a aVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.a();
                c0015b2.a(aVarGenerateDefaultLayoutParams);
                constraintLayout.addView(barrier2, aVarGenerateDefaultLayoutParams);
            }
            if (c0015b2.f785a) {
                View dVar = new d(constraintLayout.getContext());
                dVar.setId(num.intValue());
                ConstraintLayout.a aVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c0015b2.a(aVarGenerateDefaultLayoutParams2);
                constraintLayout.addView(dVar, aVarGenerateDefaultLayoutParams2);
            }
        }
    }

    public void a(c cVar) {
        int childCount = cVar.getChildCount();
        this.f784a.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = cVar.getChildAt(i2);
            c.a aVar = (c.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f784a.containsKey(Integer.valueOf(id))) {
                this.f784a.put(Integer.valueOf(id), new C0015b());
            }
            C0015b c0015b = this.f784a.get(Integer.valueOf(id));
            if (childAt instanceof androidx.constraintlayout.widget.a) {
                c0015b.a((androidx.constraintlayout.widget.a) childAt, id, aVar);
            }
            c0015b.a(id, aVar);
        }
    }
}
