package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import b.f.a.j.f;
import b.f.a.j.i;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SparseArray<View> f754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<androidx.constraintlayout.widget.a> f755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<b.f.a.j.f> f756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b.f.a.j.g f757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f759g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f763k;
    private b l;
    private int m;
    private HashMap<String, Integer> n;
    private int o;
    private int p;
    private b.f.a.f q;

    public static class a extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        boolean U;
        boolean V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f764a;
        int a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f765b;
        int b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f766c;
        int c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f767d;
        int d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f768e;
        int e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f769f;
        int f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f770g;
        float g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f771h;
        int h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f772i;
        int i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f773j;
        float j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f774k;
        b.f.a.j.f k0;
        public int l;
        public boolean l0;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a, reason: collision with other inner class name */
        private static class C0014a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f775a = new SparseIntArray();

            static {
                f775a.append(g.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f775a.append(g.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f775a.append(g.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f775a.append(g.ConstraintLayout_Layout_android_orientation, 1);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f775a.append(g.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f775a.append(g.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f775a.append(g.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f775a.append(g.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public a(int i2, int i3) {
            super(i2, i3);
            this.f764a = -1;
            this.f765b = -1;
            this.f766c = -1.0f;
            this.f767d = -1;
            this.f768e = -1;
            this.f769f = -1;
            this.f770g = -1;
            this.f771h = -1;
            this.f772i = -1;
            this.f773j = -1;
            this.f774k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new b.f.a.j.f();
            this.l0 = false;
        }

        public a(Context context, AttributeSet attributeSet) {
            String str;
            int i2;
            super(context, attributeSet);
            this.f764a = -1;
            this.f765b = -1;
            this.f766c = -1.0f;
            this.f767d = -1;
            this.f768e = -1;
            this.f769f = -1;
            this.f770g = -1;
            this.f771h = -1;
            this.f772i = -1;
            this.f773j = -1;
            this.f774k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new b.f.a.j.f();
            this.l0 = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                switch (C0014a.f775a.get(index)) {
                    case 0:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    default:
                        break;
                    case 1:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        continue;
                        break;
                    case 2:
                        this.m = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                        if (this.m == -1) {
                            this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 3:
                        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        continue;
                        break;
                    case 4:
                        this.o = typedArrayObtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        float f2 = this.o;
                        if (f2 < 0.0f) {
                            this.o = (360.0f - f2) % 360.0f;
                        } else {
                            continue;
                        }
                        break;
                    case 5:
                        this.f764a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f764a);
                        continue;
                        break;
                    case 6:
                        this.f765b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f765b);
                        continue;
                        break;
                    case 7:
                        this.f766c = typedArrayObtainStyledAttributes.getFloat(index, this.f766c);
                        continue;
                        break;
                    case 8:
                        this.f767d = typedArrayObtainStyledAttributes.getResourceId(index, this.f767d);
                        if (this.f767d == -1) {
                            this.f767d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 9:
                        this.f768e = typedArrayObtainStyledAttributes.getResourceId(index, this.f768e);
                        if (this.f768e == -1) {
                            this.f768e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 10:
                        this.f769f = typedArrayObtainStyledAttributes.getResourceId(index, this.f769f);
                        if (this.f769f == -1) {
                            this.f769f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 11:
                        this.f770g = typedArrayObtainStyledAttributes.getResourceId(index, this.f770g);
                        if (this.f770g == -1) {
                            this.f770g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 12:
                        this.f771h = typedArrayObtainStyledAttributes.getResourceId(index, this.f771h);
                        if (this.f771h == -1) {
                            this.f771h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 13:
                        this.f772i = typedArrayObtainStyledAttributes.getResourceId(index, this.f772i);
                        if (this.f772i == -1) {
                            this.f772i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 14:
                        this.f773j = typedArrayObtainStyledAttributes.getResourceId(index, this.f773j);
                        if (this.f773j == -1) {
                            this.f773j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 15:
                        this.f774k = typedArrayObtainStyledAttributes.getResourceId(index, this.f774k);
                        if (this.f774k == -1) {
                            this.f774k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 16:
                        this.l = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        if (this.l == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 17:
                        this.p = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                        if (this.p == -1) {
                            this.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 18:
                        this.q = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
                        if (this.q == -1) {
                            this.q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 19:
                        this.r = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
                        if (this.r == -1) {
                            this.r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 20:
                        this.s = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        if (this.s == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                        break;
                    case 21:
                        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        continue;
                        break;
                    case 22:
                        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        continue;
                        break;
                    case 23:
                        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        continue;
                        break;
                    case 24:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        continue;
                        break;
                    case 25:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        continue;
                        break;
                    case 26:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        continue;
                        break;
                    case 27:
                        this.S = typedArrayObtainStyledAttributes.getBoolean(index, this.S);
                        continue;
                        break;
                    case 28:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        continue;
                        break;
                    case 29:
                        this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                        continue;
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        continue;
                        break;
                    case 31:
                        this.H = typedArrayObtainStyledAttributes.getInt(index, 0);
                        if (this.H == 1) {
                            str = "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.";
                        }
                        break;
                    case 32:
                        this.I = typedArrayObtainStyledAttributes.getInt(index, 0);
                        if (this.I == 1) {
                            str = "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.";
                        }
                        break;
                    case 33:
                        try {
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            continue;
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            continue;
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                            }
                        }
                        break;
                    case 35:
                        this.N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.N));
                        continue;
                        break;
                    case 36:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            continue;
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            continue;
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                            }
                        }
                        break;
                    case 38:
                        this.O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        continue;
                        break;
                    case 44:
                        this.B = typedArrayObtainStyledAttributes.getString(index);
                        this.C = -1;
                        String str2 = this.B;
                        if (str2 != null) {
                            int length = str2.length();
                            int iIndexOf = this.B.indexOf(44);
                            if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                i2 = 0;
                            } else {
                                String strSubstring = this.B.substring(0, iIndexOf);
                                if (strSubstring.equalsIgnoreCase("W")) {
                                    this.C = 0;
                                } else if (strSubstring.equalsIgnoreCase("H")) {
                                    this.C = 1;
                                }
                                i2 = iIndexOf + 1;
                            }
                            int iIndexOf2 = this.B.indexOf(58);
                            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                String strSubstring2 = this.B.substring(i2);
                                if (strSubstring2.length() > 0) {
                                    Float.parseFloat(strSubstring2);
                                }
                            } else {
                                String strSubstring3 = this.B.substring(i2, iIndexOf2);
                                String strSubstring4 = this.B.substring(iIndexOf2 + 1);
                                if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                    try {
                                        float f3 = Float.parseFloat(strSubstring3);
                                        float f4 = Float.parseFloat(strSubstring4);
                                        if (f3 > 0.0f && f4 > 0.0f) {
                                            if (this.C == 1) {
                                                Math.abs(f4 / f3);
                                            } else {
                                                Math.abs(f3 / f4);
                                            }
                                        }
                                    } catch (NumberFormatException unused5) {
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                        break;
                    case 45:
                        this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                        continue;
                        break;
                    case 46:
                        this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                        continue;
                        break;
                    case 47:
                        this.F = typedArrayObtainStyledAttributes.getInt(index, 0);
                        continue;
                        break;
                    case 48:
                        this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                        continue;
                        break;
                    case 49:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                        continue;
                        break;
                    case 50:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                        continue;
                        break;
                }
                Log.e("ConstraintLayout", str);
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f764a = -1;
            this.f765b = -1;
            this.f766c = -1.0f;
            this.f767d = -1;
            this.f768e = -1;
            this.f769f = -1;
            this.f770g = -1;
            this.f771h = -1;
            this.f772i = -1;
            this.f773j = -1;
            this.f774k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = 0.0f;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = true;
            this.V = true;
            this.W = false;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = -1;
            this.b0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = 0.5f;
            this.k0 = new b.f.a.j.f();
            this.l0 = false;
        }

        public void a() {
            this.X = false;
            this.U = true;
            this.V = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.S) {
                this.U = false;
                this.H = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).width == 0 || ((ViewGroup.MarginLayoutParams) this).width == -1) {
                this.U = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == 0 || ((ViewGroup.MarginLayoutParams) this).height == -1) {
                this.V = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.f766c == -1.0f && this.f764a == -1 && this.f765b == -1) {
                return;
            }
            this.X = true;
            this.U = true;
            this.V = true;
            if (!(this.k0 instanceof i)) {
                this.k0 = new i();
            }
            ((i) this.k0).v(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00d8  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void resolveLayoutDirection(int r7) {
            /*
                Method dump skipped, instruction units count: 261
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.f754b = new SparseArray<>();
        this.f755c = new ArrayList<>(4);
        this.f756d = new ArrayList<>(100);
        this.f757e = new b.f.a.j.g();
        this.f758f = 0;
        this.f759g = 0;
        this.f760h = Integer.MAX_VALUE;
        this.f761i = Integer.MAX_VALUE;
        this.f762j = true;
        this.f763k = 7;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        a((AttributeSet) null);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f754b = new SparseArray<>();
        this.f755c = new ArrayList<>(4);
        this.f756d = new ArrayList<>(100);
        this.f757e = new b.f.a.j.g();
        this.f758f = 0;
        this.f759g = 0;
        this.f760h = Integer.MAX_VALUE;
        this.f761i = Integer.MAX_VALUE;
        this.f762j = true;
        this.f763k = 7;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        a(attributeSet);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f754b = new SparseArray<>();
        this.f755c = new ArrayList<>(4);
        this.f756d = new ArrayList<>(100);
        this.f757e = new b.f.a.j.g();
        this.f758f = 0;
        this.f759g = 0;
        this.f760h = Integer.MAX_VALUE;
        this.f761i = Integer.MAX_VALUE;
        this.f762j = true;
        this.f763k = 7;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        a(attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03a3  */
    /* JADX WARN: Type inference failed for: r26v0, types: [android.view.ViewGroup, androidx.constraintlayout.widget.ConstraintLayout] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a() {
        /*
            Method dump skipped, instruction units count: 981
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a():void");
    }

    private void a(int i2, int i3) {
        boolean z;
        boolean z2;
        int baseline;
        int childMeasureSpec;
        int childMeasureSpec2;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                b.f.a.j.f fVar = aVar.k0;
                if (!aVar.X && !aVar.Y) {
                    fVar.n(childAt.getVisibility());
                    int measuredWidth = ((ViewGroup.MarginLayoutParams) aVar).width;
                    int measuredHeight = ((ViewGroup.MarginLayoutParams) aVar).height;
                    boolean z3 = aVar.U;
                    if (z3 || aVar.V || (!z3 && aVar.H == 1) || ((ViewGroup.MarginLayoutParams) aVar).width == -1 || (!aVar.V && (aVar.I == 1 || ((ViewGroup.MarginLayoutParams) aVar).height == -1))) {
                        if (measuredWidth == 0) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, -2);
                            z = true;
                        } else if (measuredWidth == -1) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, -1);
                            z = false;
                        } else {
                            z = measuredWidth == -2;
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingLeft, measuredWidth);
                        }
                        if (measuredHeight == 0) {
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, -2);
                            z2 = true;
                        } else if (measuredHeight == -1) {
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, -1);
                            z2 = false;
                        } else {
                            z2 = measuredHeight == -2;
                            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, paddingTop, measuredHeight);
                        }
                        childAt.measure(childMeasureSpec, childMeasureSpec2);
                        b.f.a.f fVar2 = this.q;
                        if (fVar2 != null) {
                            fVar2.f2331a++;
                        }
                        fVar.b(measuredWidth == -2);
                        fVar.a(measuredHeight == -2);
                        measuredWidth = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                    } else {
                        z = false;
                        z2 = false;
                    }
                    fVar.o(measuredWidth);
                    fVar.g(measuredHeight);
                    if (z) {
                        fVar.q(measuredWidth);
                    }
                    if (z2) {
                        fVar.p(measuredHeight);
                    }
                    if (aVar.W && (baseline = childAt.getBaseline()) != -1) {
                        fVar.f(baseline);
                    }
                }
            }
        }
    }

    private void a(AttributeSet attributeSet) {
        this.f757e.a(this);
        this.f754b.put(getId(), this);
        this.l = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == g.ConstraintLayout_Layout_android_minWidth) {
                    this.f758f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f758f);
                } else if (index == g.ConstraintLayout_Layout_android_minHeight) {
                    this.f759g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f759g);
                } else if (index == g.ConstraintLayout_Layout_android_maxWidth) {
                    this.f760h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f760h);
                } else if (index == g.ConstraintLayout_Layout_android_maxHeight) {
                    this.f761i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f761i);
                } else if (index == g.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f763k = typedArrayObtainStyledAttributes.getInt(index, this.f763k);
                } else if (index == g.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.l = new b();
                        this.l.a(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.l = null;
                    }
                    this.m = resourceId;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f757e.u(this.f763k);
    }

    private final b.f.a.j.f b(int i2) {
        if (i2 == 0) {
            return this.f757e;
        }
        View viewFindViewById = this.f754b.get(i2);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i2)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f757e;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((a) viewFindViewById.getLayoutParams()).k0;
    }

    private void b() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            if (getChildAt(i2).isLayoutRequested()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            this.f756d.clear();
            a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 729
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(int, int):void");
    }

    private void c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof e) {
                ((e) childAt).a(this);
            }
        }
        int size = this.f755c.size();
        if (size > 0) {
            for (int i3 = 0; i3 < size; i3++) {
                this.f755c.get(i3).b(this);
            }
        }
    }

    private void c(int i2, int i3) {
        int iMin;
        f.b bVar;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        f.b bVar2 = f.b.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                bVar = f.b.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                bVar = bVar2;
            } else {
                iMin = Math.min(this.f760h, size) - paddingLeft;
                bVar = bVar2;
            }
            iMin = 0;
        } else {
            iMin = size;
            bVar = f.b.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                bVar2 = f.b.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.f761i, size2) - paddingTop;
            }
            size2 = 0;
        } else {
            bVar2 = f.b.WRAP_CONTENT;
        }
        this.f757e.l(0);
        this.f757e.k(0);
        this.f757e.a(bVar);
        this.f757e.o(iMin);
        this.f757e.b(bVar2);
        this.f757e.g(size2);
        this.f757e.l((this.f758f - getPaddingLeft()) - getPaddingRight());
        this.f757e.k((this.f759g - getPaddingTop()) - getPaddingBottom());
    }

    public View a(int i2) {
        return this.f754b.get(i2);
    }

    public final b.f.a.j.f a(View view) {
        if (view == this) {
            return this.f757e;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).k0;
    }

    public Object a(int i2, Object obj) {
        if (i2 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.n;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.n.get(str);
    }

    public void a(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.n == null) {
                this.n = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.n.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    protected void a(String str) {
        this.f757e.K();
        b.f.a.f fVar = this.q;
        if (fVar != null) {
            fVar.f2333c++;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        int i5 = Integer.parseInt(strArrSplit[2]);
                        int i6 = (int) ((i3 / 1080.0f) * width);
                        int i7 = (int) ((i4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = i6;
                        float f3 = i7;
                        float f4 = i6 + ((int) ((i5 / 1080.0f) * width));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float f5 = i7 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f2, f5, paint);
                        canvas.drawLine(f2, f5, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, f5, paint);
                        canvas.drawLine(f2, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.ViewGroup
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f761i;
    }

    public int getMaxWidth() {
        return this.f760h;
    }

    public int getMinHeight() {
        return this.f759g;
    }

    public int getMinWidth() {
        return this.f758f;
    }

    public int getOptimizationLevel() {
        return this.f757e.M();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            a aVar = (a) childAt.getLayoutParams();
            b.f.a.j.f fVar = aVar.k0;
            if ((childAt.getVisibility() != 8 || aVar.X || aVar.Y || zIsInEditMode) && !aVar.Z) {
                int iG = fVar.g();
                int iH = fVar.h();
                int iS = fVar.s() + iG;
                int i7 = fVar.i() + iH;
                childAt.layout(iG, iH, iS, i7);
                if ((childAt instanceof e) && (content = ((e) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iG, iH, iS, i7);
                }
            }
        }
        int size = this.f755c.size();
        if (size > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                this.f755c.get(i8).a(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x011d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r25, int r26) {
        /*
            Method dump skipped, instruction units count: 945
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        b.f.a.j.f fVarA = a(view);
        if ((view instanceof d) && !(fVarA instanceof i)) {
            a aVar = (a) view.getLayoutParams();
            aVar.k0 = new i();
            aVar.X = true;
            ((i) aVar.k0).v(aVar.R);
        }
        if (view instanceof androidx.constraintlayout.widget.a) {
            androidx.constraintlayout.widget.a aVar2 = (androidx.constraintlayout.widget.a) view;
            aVar2.a();
            ((a) view.getLayoutParams()).Y = true;
            if (!this.f755c.contains(aVar2)) {
                this.f755c.add(aVar2);
            }
        }
        this.f754b.put(view.getId(), view);
        this.f762j = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f754b.remove(view.getId());
        b.f.a.j.f fVarA = a(view);
        this.f757e.c(fVarA);
        this.f755c.remove(view);
        this.f756d.remove(fVarA);
        this.f762j = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.f762j = true;
        this.o = -1;
        this.p = -1;
    }

    public void setConstraintSet(b bVar) {
        this.l = bVar;
    }

    @Override // android.view.View
    public void setId(int i2) {
        this.f754b.remove(getId());
        super.setId(i2);
        this.f754b.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 == this.f761i) {
            return;
        }
        this.f761i = i2;
        requestLayout();
    }

    public void setMaxWidth(int i2) {
        if (i2 == this.f760h) {
            return;
        }
        this.f760h = i2;
        requestLayout();
    }

    public void setMinHeight(int i2) {
        if (i2 == this.f759g) {
            return;
        }
        this.f759g = i2;
        requestLayout();
    }

    public void setMinWidth(int i2) {
        if (i2 == this.f758f) {
            return;
        }
        this.f758f = i2;
        requestLayout();
    }

    public void setOptimizationLevel(int i2) {
        this.f757e.u(i2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
