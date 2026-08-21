package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final C0010a f478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Context f479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ActionMenuView f480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected c f481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f482f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected b.h.o.w f483g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f485i;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    protected class C0010a implements b.h.o.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f486a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f487b;

        protected C0010a() {
        }

        public C0010a a(b.h.o.w wVar, int i2) {
            a.this.f483g = wVar;
            this.f487b = i2;
            return this;
        }

        @Override // b.h.o.x
        public void a(View view) {
            this.f486a = true;
        }

        @Override // b.h.o.x
        public void b(View view) {
            if (this.f486a) {
                return;
            }
            a aVar = a.this;
            aVar.f483g = null;
            a.super.setVisibility(this.f487b);
        }

        @Override // b.h.o.x
        public void c(View view) {
            a.super.setVisibility(0);
            this.f486a = false;
        }
    }

    a(Context context) {
        this(context, null);
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    a(Context context, AttributeSet attributeSet, int i2) {
        int i3;
        super(context, attributeSet, i2);
        this.f478b = new C0010a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(b.a.a.actionBarPopupTheme, typedValue, true) || (i3 = typedValue.resourceId) == 0) {
            this.f479c = context;
        } else {
            this.f479c = new ContextThemeWrapper(context, i3);
        }
    }

    protected static int a(int i2, int i3, boolean z) {
        return z ? i2 - i3 : i2 + i3;
    }

    protected int a(View view, int i2, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) - i4);
    }

    protected int a(View view, int i2, int i3, int i4, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i3 + ((i4 - measuredHeight) / 2);
        if (z) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z ? -measuredWidth : measuredWidth;
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
    public b.h.o.w a(int i2, long j2) {
        b.h.o.w wVar = this.f483g;
        if (wVar != null) {
            wVar.a();
        }
        if (i2 != 0) {
            b.h.o.w wVarA = b.h.o.s.a(this);
            wVarA.a(0.0f);
            wVarA.a(j2);
            C0010a c0010a = this.f478b;
            c0010a.a(wVarA, i2);
            wVarA.a(c0010a);
            return wVarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        b.h.o.w wVarA2 = b.h.o.s.a(this);
        wVarA2.a(1.0f);
        wVarA2.a(j2);
        C0010a c0010a2 = this.f478b;
        c0010a2.a(wVarA2, i2);
        wVarA2.a(c0010a2);
        return wVarA2;
    }

    public int getAnimatedVisibility() {
        return this.f483g != null ? this.f478b.f487b : getVisibility();
    }

    public int getContentHeight() {
        return this.f482f;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, b.a.j.ActionBar, b.a.a.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(b.a.j.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        c cVar = this.f481e;
        if (cVar != null) {
            cVar.a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f485i = false;
        }
        if (!this.f485i) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f485i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f485i = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f484h = false;
        }
        if (!this.f484h) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f484h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f484h = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i2);

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            b.h.o.w wVar = this.f483g;
            if (wVar != null) {
                wVar.a();
            }
            super.setVisibility(i2);
        }
    }
}
