package b.q;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class b0 implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f2856a;

    static class a extends ViewGroup {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f2857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f2858c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Drawable> f2859d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        b0 f2860e;

        static {
            try {
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, b0 b0Var) {
            super(context);
            this.f2859d = null;
            this.f2857b = viewGroup;
            this.f2858c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f2860e = b0Var;
        }

        private void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f2857b.getLocationOnScreen(iArr2);
            this.f2858c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void a(Drawable drawable) {
            if (this.f2859d == null) {
                this.f2859d = new ArrayList<>();
            }
            if (this.f2859d.contains(drawable)) {
                return;
            }
            this.f2859d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f2857b && viewGroup.getParent() != null && b.h.o.s.y(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f2857b.getLocationOnScreen(iArr2);
                    b.h.o.s.c(view, iArr[0] - iArr2[0]);
                    b.h.o.s.d(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        boolean a() {
            ArrayList<Drawable> arrayList;
            return getChildCount() == 0 && ((arrayList = this.f2859d) == null || arrayList.size() == 0);
        }

        public void b(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f2859d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        public void b(View view) {
            super.removeView(view);
            if (a()) {
                this.f2857b.removeView(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f2857b.getLocationOnScreen(new int[2]);
            this.f2858c.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f2858c.getWidth(), this.f2858c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f2859d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2859d.get(i2).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f2857b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (!(this.f2857b instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            a(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f2859d) != null && arrayList.contains(drawable));
        }
    }

    b0(Context context, ViewGroup viewGroup, View view) {
        this.f2856a = new a(context, viewGroup, view, this);
    }

    static b0 c(View view) {
        ViewGroup viewGroupD = d(view);
        if (viewGroupD == null) {
            return null;
        }
        int childCount = viewGroupD.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroupD.getChildAt(i2);
            if (childAt instanceof a) {
                return ((a) childAt).f2860e;
            }
        }
        return new v(viewGroupD.getContext(), viewGroupD, view);
    }

    static ViewGroup d(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // b.q.d0
    public void a(Drawable drawable) {
        this.f2856a.a(drawable);
    }

    @Override // b.q.d0
    public void b(Drawable drawable) {
        this.f2856a.b(drawable);
    }
}
