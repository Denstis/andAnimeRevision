package b.r.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c extends h implements b.r.a.a.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f2999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f3000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArgbEvaluator f3001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Drawable.Callback f3002f;

    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            c.this.scheduleSelf(runnable, j2);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    private static class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3004a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        i f3005b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AnimatorSet f3006c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Animator> f3007d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        b.e.a<Animator, String> f3008e;

        public b(Context context, b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f3004a = bVar.f3004a;
                i iVar = bVar.f3005b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    this.f3005b = (i) (resources != null ? constantState.newDrawable(resources) : constantState.newDrawable());
                    i iVar2 = this.f3005b;
                    iVar2.mutate();
                    this.f3005b = iVar2;
                    this.f3005b.setCallback(callback);
                    this.f3005b.setBounds(bVar.f3005b.getBounds());
                    this.f3005b.a(false);
                }
                ArrayList<Animator> arrayList = bVar.f3007d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f3007d = new ArrayList<>(size);
                    this.f3008e = new b.e.a<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = bVar.f3007d.get(i2);
                        Animator animatorClone = animator.clone();
                        String str = bVar.f3008e.get(animator);
                        animatorClone.setTarget(this.f3005b.a(str));
                        this.f3007d.add(animatorClone);
                        this.f3008e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f3006c == null) {
                this.f3006c = new AnimatorSet();
            }
            this.f3006c.playTogether(this.f3007d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3004a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    /* JADX INFO: renamed from: b.r.a.a.c$c, reason: collision with other inner class name */
    private static class C0125c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f3009a;

        public C0125c(Drawable.ConstantState constantState) {
            this.f3009a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f3009a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3009a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            cVar.f3014b = this.f3009a.newDrawable();
            cVar.f3014b.setCallback(cVar.f3002f);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.f3014b = this.f3009a.newDrawable(resources);
            cVar.f3014b.setCallback(cVar.f3002f);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.f3014b = this.f3009a.newDrawable(resources, theme);
            cVar.f3014b.setCallback(cVar.f3002f);
            return cVar;
        }
    }

    c() {
        this(null, null, null);
    }

    private c(Context context) {
        this(context, null, null);
    }

    private c(Context context, b bVar, Resources resources) {
        this.f3001e = null;
        this.f3002f = new a();
        this.f3000d = context;
        if (bVar != null) {
            this.f2999c = bVar;
        } else {
            this.f2999c = new b(context, bVar, this.f3002f, resources);
        }
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                a(childAnimations.get(i2));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f3001e == null) {
                    this.f3001e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f3001e);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.f2999c.f3005b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        b bVar = this.f2999c;
        if (bVar.f3007d == null) {
            bVar.f3007d = new ArrayList<>();
            this.f2999c.f3008e = new b.e.a<>();
        }
        this.f2999c.f3007d.add(animator);
        this.f2999c.f3008e.put(animator, str);
    }

    @Override // b.r.a.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.a(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f2999c.f3005b.draw(canvas);
        if (this.f2999c.f3006c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f3014b;
        return drawable != null ? androidx.core.graphics.drawable.a.c(drawable) : this.f2999c.f3005b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f2999c.f3004a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f3014b;
        if (drawable == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0125c(drawable.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f2999c.f3005b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f2999c.f3005b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.getOpacity() : this.f2999c.f3005b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes;
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    typedArrayObtainAttributes = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2992e);
                    int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i iVarA = i.a(resources, resourceId, theme);
                        iVarA.a(false);
                        iVarA.setCallback(this.f3002f);
                        i iVar = this.f2999c.f3005b;
                        if (iVar != null) {
                            iVar.setCallback(null);
                        }
                        this.f2999c.f3005b = iVarA;
                    }
                } else if ("target".equals(name)) {
                    typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, b.r.a.a.a.f2993f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f3000d;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        a(string, e.a(context, resourceId2));
                    }
                } else {
                    continue;
                }
                typedArrayObtainAttributes.recycle();
            }
            eventType = xmlPullParser.next();
        }
        this.f2999c.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f3014b;
        return drawable != null ? androidx.core.graphics.drawable.a.f(drawable) : this.f2999c.f3005b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f3014b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f2999c.f3006c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.isStateful() : this.f2999c.f3005b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f2999c.f3005b.setBounds(rect);
        }
    }

    @Override // b.r.a.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.setLevel(i2) : this.f2999c.f3005b.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f3014b;
        return drawable != null ? drawable.setState(iArr) : this.f2999c.f3005b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f2999c.f3005b.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, z);
        } else {
            this.f2999c.f3005b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2999c.f3005b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.b(drawable, i2);
        } else {
            this.f2999c.f3005b.setTint(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
        } else {
            this.f2999c.f3005b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, mode);
        } else {
            this.f2999c.f3005b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f2999c.f3005b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f2999c.f3006c.isStarted()) {
                return;
            }
            this.f2999c.f3006c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f3014b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f2999c.f3006c.end();
        }
    }
}
