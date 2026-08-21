package c.a.a.r.j;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import c.a.a.t.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class i<T extends View, Z> extends c.a.a.r.j.a<Z> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Integer f3295h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final T f3296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f3297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View.OnAttachStateChangeListener f3298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3300g;

    static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static Integer f3301e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f3302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<g> f3303b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ViewTreeObserverOnPreDrawListenerC0130a f3305d;

        /* JADX INFO: renamed from: c.a.a.r.j.i$a$a, reason: collision with other inner class name */
        private static final class ViewTreeObserverOnPreDrawListenerC0130a implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final WeakReference<a> f3306b;

            ViewTreeObserverOnPreDrawListenerC0130a(a aVar) {
                this.f3306b = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = this.f3306b.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        a(View view) {
            this.f3302a = view;
        }

        private int a(int i2, int i3, int i4) {
            int i5 = i3 - i4;
            if (i5 > 0) {
                return i5;
            }
            if (this.f3304c && this.f3302a.isLayoutRequested()) {
                return 0;
            }
            int i6 = i2 - i4;
            if (i6 > 0) {
                return i6;
            }
            if (this.f3302a.isLayoutRequested() || i3 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return a(this.f3302a.getContext());
        }

        private static int a(Context context) {
            if (f3301e == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                j.a(windowManager);
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f3301e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f3301e.intValue();
        }

        private boolean a(int i2) {
            return i2 > 0 || i2 == Integer.MIN_VALUE;
        }

        private boolean a(int i2, int i3) {
            return a(i2) && a(i3);
        }

        private void b(int i2, int i3) {
            Iterator it = new ArrayList(this.f3303b).iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(i2, i3);
            }
        }

        private int c() {
            int paddingTop = this.f3302a.getPaddingTop() + this.f3302a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f3302a.getLayoutParams();
            return a(this.f3302a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        private int d() {
            int paddingLeft = this.f3302a.getPaddingLeft() + this.f3302a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f3302a.getLayoutParams();
            return a(this.f3302a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        void a() {
            if (this.f3303b.isEmpty()) {
                return;
            }
            int iD = d();
            int iC = c();
            if (a(iD, iC)) {
                b(iD, iC);
                b();
            }
        }

        void a(g gVar) {
            int iD = d();
            int iC = c();
            if (a(iD, iC)) {
                gVar.a(iD, iC);
                return;
            }
            if (!this.f3303b.contains(gVar)) {
                this.f3303b.add(gVar);
            }
            if (this.f3305d == null) {
                ViewTreeObserver viewTreeObserver = this.f3302a.getViewTreeObserver();
                this.f3305d = new ViewTreeObserverOnPreDrawListenerC0130a(this);
                viewTreeObserver.addOnPreDrawListener(this.f3305d);
            }
        }

        void b() {
            ViewTreeObserver viewTreeObserver = this.f3302a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f3305d);
            }
            this.f3305d = null;
            this.f3303b.clear();
        }

        void b(g gVar) {
            this.f3303b.remove(gVar);
        }
    }

    public i(T t) {
        j.a(t);
        this.f3296c = t;
        this.f3297d = new a(t);
    }

    private void a(Object obj) {
        Integer num = f3295h;
        if (num == null) {
            this.f3296c.setTag(obj);
        } else {
            this.f3296c.setTag(num.intValue(), obj);
        }
    }

    private Object b() {
        Integer num = f3295h;
        return num == null ? this.f3296c.getTag() : this.f3296c.getTag(num.intValue());
    }

    private void c() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f3298e;
        if (onAttachStateChangeListener == null || this.f3300g) {
            return;
        }
        this.f3296c.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f3300g = true;
    }

    private void d() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f3298e;
        if (onAttachStateChangeListener == null || !this.f3300g) {
            return;
        }
        this.f3296c.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f3300g = false;
    }

    @Override // c.a.a.r.j.a, c.a.a.r.j.h
    public c.a.a.r.c a() {
        Object objB = b();
        if (objB == null) {
            return null;
        }
        if (objB instanceof c.a.a.r.c) {
            return (c.a.a.r.c) objB;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // c.a.a.r.j.a, c.a.a.r.j.h
    public void a(c.a.a.r.c cVar) {
        a((Object) cVar);
    }

    @Override // c.a.a.r.j.h
    public void a(g gVar) {
        this.f3297d.b(gVar);
    }

    @Override // c.a.a.r.j.a, c.a.a.r.j.h
    public void b(Drawable drawable) {
        super.b(drawable);
        c();
    }

    @Override // c.a.a.r.j.h
    public void b(g gVar) {
        this.f3297d.a(gVar);
    }

    @Override // c.a.a.r.j.a, c.a.a.r.j.h
    public void c(Drawable drawable) {
        super.c(drawable);
        this.f3297d.b();
        if (this.f3299f) {
            return;
        }
        d();
    }

    public String toString() {
        return "Target for: " + this.f3296c;
    }
}
