package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;

/* JADX INFO: loaded from: classes.dex */
public class c extends h implements DialogInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AlertController f128b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AlertController.f f129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f130b;

        public a(Context context) {
            this(context, c.a(context, 0));
        }

        public a(Context context, int i2) {
            this.f129a = new AlertController.f(new ContextThemeWrapper(context, c.a(context, i2)));
            this.f130b = i2;
        }

        public a a(DialogInterface.OnDismissListener onDismissListener) {
            this.f129a.t = onDismissListener;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f129a.u = onKeyListener;
            return this;
        }

        public a a(Drawable drawable) {
            this.f129a.f102d = drawable;
            return this;
        }

        public a a(View view) {
            this.f129a.f105g = view;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f129a;
            fVar.w = listAdapter;
            fVar.x = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f129a.f106h = charSequence;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f129a;
            fVar.l = charSequence;
            fVar.n = onClickListener;
            return this;
        }

        public a a(boolean z) {
            this.f129a.r = z;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.f129a;
            fVar.v = charSequenceArr;
            fVar.J = onMultiChoiceClickListener;
            fVar.F = zArr;
            fVar.G = true;
            return this;
        }

        public c a() {
            c cVar = new c(this.f129a.f99a, this.f130b);
            this.f129a.a(cVar.f128b);
            cVar.setCancelable(this.f129a.r);
            if (this.f129a.r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f129a.s);
            cVar.setOnDismissListener(this.f129a.t);
            DialogInterface.OnKeyListener onKeyListener = this.f129a.u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public Context b() {
            return this.f129a.f99a;
        }

        public a b(View view) {
            AlertController.f fVar = this.f129a;
            fVar.z = view;
            fVar.y = 0;
            fVar.E = false;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f129a.f104f = charSequence;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f129a;
            fVar.o = charSequence;
            fVar.q = onClickListener;
            return this;
        }

        public a c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f129a;
            fVar.f107i = charSequence;
            fVar.f109k = onClickListener;
            return this;
        }

        public c c() {
            c cVarA = a();
            cVarA.show();
            return cVarA;
        }
    }

    protected c(Context context, int i2) {
        super(context, a(context, i2));
        this.f128b = new AlertController(getContext(), this, getWindow());
    }

    static int a(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(b.a.a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.appcompat.app.h, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f128b.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f128b.a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.f128b.b(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // androidx.appcompat.app.h, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f128b.b(charSequence);
    }
}
