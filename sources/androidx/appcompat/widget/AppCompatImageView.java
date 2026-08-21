package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatImageView extends ImageView implements b.h.o.r, androidx.core.widget.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f403c;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i2) {
        super(n0.b(context), attributeSet, i2);
        this.f402b = new e(this);
        this.f402b.a(attributeSet, i2);
        this.f403c = new m(this);
        this.f403c.a(attributeSet, i2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f402b;
        if (eVar != null) {
            eVar.a();
        }
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a();
        }
    }

    @Override // b.h.o.r
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f402b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // b.h.o.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f402b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public ColorStateList getSupportImageTintList() {
        m mVar = this.f403c;
        if (mVar != null) {
            return mVar.b();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public PorterDuff.Mode getSupportImageTintMode() {
        m mVar = this.f403c;
        if (mVar != null) {
            return mVar.c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f403c.d() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f402b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.f402b;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a();
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f402b;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f402b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintList(ColorStateList colorStateList) {
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        m mVar = this.f403c;
        if (mVar != null) {
            mVar.a(mode);
        }
    }
}
