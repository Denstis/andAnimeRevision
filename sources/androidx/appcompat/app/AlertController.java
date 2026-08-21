package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import b.h.o.s;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f75a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.appcompat.app.h f76b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Window f77c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f78d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f79e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f80f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ListView f81g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f82h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f83i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f84j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f85k;
    private int l;
    private int m;
    Button o;
    private CharSequence p;
    Message q;
    private Drawable r;
    Button s;
    private CharSequence t;
    Message u;
    private Drawable v;
    Button w;
    private CharSequence x;
    Message y;
    private Drawable z;
    private boolean n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f86b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f87c;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.RecycleListView);
            this.f87c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(b.a.j.RecycleListView_paddingBottomNoButtons, -1);
            this.f86b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(b.a.j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (z2 && z) {
                return;
            }
            setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f86b, getPaddingRight(), z2 ? getPaddingBottom() : this.f87c);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x000a A[PHI: r0
          0x000a: PHI (r0v5 android.os.Message) = (r0v3 android.os.Message), (r0v6 android.os.Message) binds: [B:10:0x0017, B:5:0x0008] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onClick(android.view.View r3) {
            /*
                r2 = this;
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.o
                if (r3 != r1) goto Lf
                android.os.Message r0 = r0.q
                if (r0 == 0) goto Lf
            La:
                android.os.Message r3 = android.os.Message.obtain(r0)
                goto L2a
            Lf:
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.s
                if (r3 != r1) goto L1a
                android.os.Message r0 = r0.u
                if (r0 == 0) goto L1a
                goto La
            L1a:
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.w
                if (r3 != r1) goto L29
                android.os.Message r3 = r0.y
                if (r3 == 0) goto L29
                android.os.Message r3 = android.os.Message.obtain(r3)
                goto L2a
            L29:
                r3 = 0
            L2a:
                if (r3 == 0) goto L2f
                r3.sendToTarget()
            L2f:
                androidx.appcompat.app.AlertController r3 = androidx.appcompat.app.AlertController.this
                android.os.Handler r0 = r3.R
                r1 = 1
                androidx.appcompat.app.h r3 = r3.f76b
                android.os.Message r3 = r0.obtainMessage(r1, r3)
                r3.sendToTarget()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.a.onClick(android.view.View):void");
        }
    }

    class b implements NestedScrollView.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f89a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f90b;

        b(AlertController alertController, View view, View view2) {
            this.f89a = view;
            this.f90b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.b
        public void a(NestedScrollView nestedScrollView, int i2, int i3, int i4, int i5) {
            AlertController.a(nestedScrollView, this.f89a, this.f90b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f91b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f92c;

        c(View view, View view2) {
            this.f91b = view;
            this.f92c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.a(AlertController.this.A, this.f91b, this.f92c);
        }
    }

    class d implements AbsListView.OnScrollListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f94a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f95b;

        d(AlertController alertController, View view, View view2) {
            this.f94a = view;
            this.f95b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
            AlertController.a(absListView, this.f94a, this.f95b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f96b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f97c;

        e(View view, View view2) {
            this.f96b = view;
            this.f97c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.a(AlertController.this.f81g, this.f96b, this.f97c);
        }
    }

    public static class f {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;
        public e O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f99a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f100b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f102d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f104f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f105g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f106h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CharSequence f107i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f108j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public DialogInterface.OnClickListener f109k;
        public CharSequence l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public ListAdapter w;
        public DialogInterface.OnClickListener x;
        public int y;
        public View z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f101c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f103e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean r = true;

        class a extends ArrayAdapter<CharSequence> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecycleListView f110b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i2, int i3, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i2, i3, charSequenceArr);
                this.f110b = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i2, view, viewGroup);
                boolean[] zArr = f.this.F;
                if (zArr != null && zArr[i2]) {
                    this.f110b.setItemChecked(i2, true);
                }
                return view2;
            }
        }

        class b extends CursorAdapter {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f112b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final int f113c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RecycleListView f114d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ AlertController f115e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f114d = recycleListView;
                this.f115e = alertController;
                Cursor cursor2 = getCursor();
                this.f112b = cursor2.getColumnIndexOrThrow(f.this.L);
                this.f113c = cursor2.getColumnIndexOrThrow(f.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f112b));
                this.f114d.setItemChecked(cursor.getPosition(), cursor.getInt(this.f113c) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return f.this.f100b.inflate(this.f115e.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AlertController f117b;

            c(AlertController alertController) {
                this.f117b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                f.this.x.onClick(this.f117b.f76b, i2);
                if (f.this.H) {
                    return;
                }
                this.f117b.f76b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ RecycleListView f119b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ AlertController f120c;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f119b = recycleListView;
                this.f120c = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                boolean[] zArr = f.this.F;
                if (zArr != null) {
                    zArr[i2] = this.f119b.isItemChecked(i2);
                }
                f.this.J.onClick(this.f120c.f76b, i2, this.f119b.isItemChecked(i2));
            }
        }

        public interface e {
            void a(ListView listView);
        }

        public f(Context context) {
            this.f99a = context;
            this.f100b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void b(androidx.appcompat.app.AlertController r12) {
            /*
                r11 = this;
                android.view.LayoutInflater r0 = r11.f100b
                int r1 = r12.L
                r2 = 0
                android.view.View r0 = r0.inflate(r1, r2)
                androidx.appcompat.app.AlertController$RecycleListView r0 = (androidx.appcompat.app.AlertController.RecycleListView) r0
                boolean r1 = r11.G
                r8 = 1
                if (r1 == 0) goto L33
                android.database.Cursor r4 = r11.K
                if (r4 != 0) goto L26
                androidx.appcompat.app.AlertController$f$a r9 = new androidx.appcompat.app.AlertController$f$a
                android.content.Context r3 = r11.f99a
                int r4 = r12.M
                r5 = 16908308(0x1020014, float:2.3877285E-38)
                java.lang.CharSequence[] r6 = r11.v
                r1 = r9
                r2 = r11
                r7 = r0
                r1.<init>(r3, r4, r5, r6, r7)
                goto L67
            L26:
                androidx.appcompat.app.AlertController$f$b r9 = new androidx.appcompat.app.AlertController$f$b
                android.content.Context r3 = r11.f99a
                r5 = 0
                r1 = r9
                r2 = r11
                r6 = r0
                r7 = r12
                r1.<init>(r3, r4, r5, r6, r7)
                goto L67
            L33:
                boolean r1 = r11.H
                if (r1 == 0) goto L3a
                int r1 = r12.N
                goto L3c
            L3a:
                int r1 = r12.O
            L3c:
                r4 = r1
                android.database.Cursor r5 = r11.K
                r1 = 16908308(0x1020014, float:2.3877285E-38)
                if (r5 == 0) goto L59
                android.widget.SimpleCursorAdapter r9 = new android.widget.SimpleCursorAdapter
                android.content.Context r3 = r11.f99a
                java.lang.String[] r6 = new java.lang.String[r8]
                java.lang.String r2 = r11.L
                r7 = 0
                r6[r7] = r2
                int[] r10 = new int[r8]
                r10[r7] = r1
                r2 = r9
                r7 = r10
                r2.<init>(r3, r4, r5, r6, r7)
                goto L67
            L59:
                android.widget.ListAdapter r9 = r11.w
                if (r9 == 0) goto L5e
                goto L67
            L5e:
                androidx.appcompat.app.AlertController$h r9 = new androidx.appcompat.app.AlertController$h
                android.content.Context r2 = r11.f99a
                java.lang.CharSequence[] r3 = r11.v
                r9.<init>(r2, r4, r1, r3)
            L67:
                androidx.appcompat.app.AlertController$f$e r1 = r11.O
                if (r1 == 0) goto L6e
                r1.a(r0)
            L6e:
                r12.H = r9
                int r1 = r11.I
                r12.I = r1
                android.content.DialogInterface$OnClickListener r1 = r11.x
                if (r1 == 0) goto L81
                androidx.appcompat.app.AlertController$f$c r1 = new androidx.appcompat.app.AlertController$f$c
                r1.<init>(r12)
            L7d:
                r0.setOnItemClickListener(r1)
                goto L8b
            L81:
                android.content.DialogInterface$OnMultiChoiceClickListener r1 = r11.J
                if (r1 == 0) goto L8b
                androidx.appcompat.app.AlertController$f$d r1 = new androidx.appcompat.app.AlertController$f$d
                r1.<init>(r0, r12)
                goto L7d
            L8b:
                android.widget.AdapterView$OnItemSelectedListener r1 = r11.N
                if (r1 == 0) goto L92
                r0.setOnItemSelectedListener(r1)
            L92:
                boolean r1 = r11.H
                if (r1 == 0) goto L9a
                r0.setChoiceMode(r8)
                goto La2
            L9a:
                boolean r1 = r11.G
                if (r1 == 0) goto La2
                r1 = 2
                r0.setChoiceMode(r1)
            La2:
                r12.f81g = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.f.b(androidx.appcompat.app.AlertController):void");
        }

        public void a(AlertController alertController) {
            View view = this.f105g;
            if (view != null) {
                alertController.a(view);
            } else {
                CharSequence charSequence = this.f104f;
                if (charSequence != null) {
                    alertController.b(charSequence);
                }
                Drawable drawable = this.f102d;
                if (drawable != null) {
                    alertController.a(drawable);
                }
                int i2 = this.f101c;
                if (i2 != 0) {
                    alertController.b(i2);
                }
                int i3 = this.f103e;
                if (i3 != 0) {
                    alertController.b(alertController.a(i3));
                }
            }
            CharSequence charSequence2 = this.f106h;
            if (charSequence2 != null) {
                alertController.a(charSequence2);
            }
            if (this.f107i != null || this.f108j != null) {
                alertController.a(-1, this.f107i, this.f109k, (Message) null, this.f108j);
            }
            if (this.l != null || this.m != null) {
                alertController.a(-2, this.l, this.n, (Message) null, this.m);
            }
            if (this.o != null || this.p != null) {
                alertController.a(-3, this.o, this.q, (Message) null, this.p);
            }
            if (this.v != null || this.K != null || this.w != null) {
                b(alertController);
            }
            View view2 = this.z;
            if (view2 != null) {
                if (this.E) {
                    alertController.a(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.b(view2);
                    return;
                }
            }
            int i4 = this.y;
            if (i4 != 0) {
                alertController.c(i4);
            }
        }
    }

    private static final class g extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<DialogInterface> f122a;

        public g(DialogInterface dialogInterface) {
            this.f122a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f122a.get(), message.what);
            } else {
                if (i2 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class h extends ArrayAdapter<CharSequence> {
        public h(Context context, int i2, int i3, CharSequence[] charSequenceArr) {
            super(context, i2, i3, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, androidx.appcompat.app.h hVar, Window window) {
        this.f75a = context;
        this.f76b = hVar;
        this.f77c = window;
        this.R = new g(hVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, b.a.j.AlertDialog, b.a.a.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(b.a.j.AlertDialog_showTitle, true);
        this.f78d = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.a.j.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        hVar.supportRequestWindowFeature(1);
    }

    private ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    static void a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private void a(ViewGroup viewGroup) {
        int i2;
        Button button;
        this.o = (Button) viewGroup.findViewById(R.id.button1);
        this.o.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.p) && this.r == null) {
            this.o.setVisibility(8);
            i2 = 0;
        } else {
            this.o.setText(this.p);
            Drawable drawable = this.r;
            if (drawable != null) {
                int i3 = this.f78d;
                drawable.setBounds(0, 0, i3, i3);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.o.setVisibility(0);
            i2 = 1;
        }
        this.s = (Button) viewGroup.findViewById(R.id.button2);
        this.s.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.t) && this.v == null) {
            this.s.setVisibility(8);
        } else {
            this.s.setText(this.t);
            Drawable drawable2 = this.v;
            if (drawable2 != null) {
                int i4 = this.f78d;
                drawable2.setBounds(0, 0, i4, i4);
                this.s.setCompoundDrawables(this.v, null, null, null);
            }
            this.s.setVisibility(0);
            i2 |= 2;
        }
        this.w = (Button) viewGroup.findViewById(R.id.button3);
        this.w.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.x) && this.z == null) {
            this.w.setVisibility(8);
        } else {
            this.w.setText(this.x);
            Drawable drawable3 = this.r;
            if (drawable3 != null) {
                int i5 = this.f78d;
                drawable3.setBounds(0, 0, i5, i5);
                this.o.setCompoundDrawables(this.r, null, null, null);
            }
            this.w.setVisibility(0);
            i2 |= 4;
        }
        if (a(this.f75a)) {
            if (i2 == 1) {
                button = this.o;
            } else if (i2 == 2) {
                button = this.s;
            } else if (i2 == 4) {
                button = this.w;
            }
            a(button);
        }
        if (i2 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void a(ViewGroup viewGroup, View view, int i2, int i3) {
        View viewFindViewById = this.f77c.findViewById(b.a.f.scrollIndicatorUp);
        View viewFindViewById2 = this.f77c.findViewById(b.a.f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            s.a(view, i2, i3);
            if (viewFindViewById != null) {
                viewGroup.removeView(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                viewGroup.removeView(viewFindViewById2);
                return;
            }
            return;
        }
        View view2 = null;
        if (viewFindViewById != null && (i2 & 1) == 0) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById2 == null || (i2 & 2) != 0) {
            view2 = viewFindViewById2;
        } else {
            viewGroup.removeView(viewFindViewById2);
        }
        if (viewFindViewById == null && view2 == null) {
            return;
        }
        if (this.f80f != null) {
            this.A.setOnScrollChangeListener(new b(this, viewFindViewById, view2));
            this.A.post(new c(viewFindViewById, view2));
            return;
        }
        ListView listView = this.f81g;
        if (listView != null) {
            listView.setOnScrollListener(new d(this, viewFindViewById, view2));
            this.f81g.post(new e(viewFindViewById, view2));
            return;
        }
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (view2 != null) {
            viewGroup.removeView(view2);
        }
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(b.a.a.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    private int b() {
        int i2 = this.K;
        return (i2 != 0 && this.Q == 1) ? i2 : this.J;
    }

    private void b(ViewGroup viewGroup) {
        this.A = (NestedScrollView) this.f77c.findViewById(b.a.f.scrollView);
        this.A.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        this.F = (TextView) viewGroup.findViewById(R.id.message);
        TextView textView = this.F;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f80f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f81g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f81g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f77c.findViewById(b.a.f.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(b.a.f.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(b.a.f.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(b.a.f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(b.a.f.customPanel);
        c(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(b.a.f.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(b.a.f.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(b.a.f.buttonPanel);
        ViewGroup viewGroupA = a(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupA2 = a(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupA3 = a(viewFindViewById9, viewFindViewById6);
        b(viewGroupA2);
        a(viewGroupA3);
        d(viewGroupA);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (viewGroupA == null || viewGroupA.getVisibility() == 8) ? 0 : 1;
        boolean z3 = (viewGroupA3 == null || viewGroupA3.getVisibility() == 8) ? false : true;
        if (!z3 && viewGroupA2 != null && (viewFindViewById2 = viewGroupA2.findViewById(b.a.f.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z2 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f80f == null && this.f81g == null) ? null : viewGroupA.findViewById(b.a.f.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupA2 != null && (viewFindViewById = viewGroupA2.findViewById(b.a.f.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f81g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z2, z3);
        }
        if (!z) {
            View view = this.f81g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                a(viewGroupA2, view, z2 | (z3 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f81g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i2 = this.I;
        if (i2 > -1) {
            listView2.setItemChecked(i2, true);
            listView2.setSelection(i2);
        }
    }

    private void c(ViewGroup viewGroup) {
        View viewInflate = this.f82h;
        if (viewInflate == null) {
            viewInflate = this.f83i != 0 ? LayoutInflater.from(this.f75a).inflate(this.f83i, viewGroup, false) : null;
        }
        boolean z = viewInflate != null;
        if (!z || !c(viewInflate)) {
            this.f77c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f77c.findViewById(b.a.f.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.n) {
            frameLayout.setPadding(this.f84j, this.f85k, this.l, this.m);
        }
        if (this.f81g != null) {
            ((LinearLayoutCompat.a) viewGroup.getLayoutParams()).f417a = 0.0f;
        }
    }

    static boolean c(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (c(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void d(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f77c.findViewById(b.a.f.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f77c.findViewById(R.id.icon);
        if (!(!TextUtils.isEmpty(this.f79e)) || !this.P) {
            this.f77c.findViewById(b.a.f.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        this.E = (TextView) this.f77c.findViewById(b.a.f.alertTitle);
        this.E.setText(this.f79e);
        int i2 = this.B;
        if (i2 != 0) {
            this.D.setImageResource(i2);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    public int a(int i2) {
        TypedValue typedValue = new TypedValue();
        this.f75a.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public void a() {
        this.f76b.setContentView(b());
        c();
    }

    public void a(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i2 == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.p = charSequence;
            this.q = message;
            this.r = drawable;
        }
    }

    public void a(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void a(View view) {
        this.G = view;
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        this.f82h = view;
        this.f83i = 0;
        this.n = true;
        this.f84j = i2;
        this.f85k = i3;
        this.l = i4;
        this.m = i5;
    }

    public void a(CharSequence charSequence) {
        this.f80f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    public void b(int i2) {
        this.C = null;
        this.B = i2;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i2 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void b(View view) {
        this.f82h = view;
        this.f83i = 0;
        this.n = false;
    }

    public void b(CharSequence charSequence) {
        this.f79e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public boolean b(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.a(keyEvent);
    }

    public void c(int i2) {
        this.f82h = null;
        this.f83i = i2;
        this.n = false;
    }
}
