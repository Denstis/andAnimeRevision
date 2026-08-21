package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.q0;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements q.a, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RadioButton f242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f244f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f245g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinearLayout f248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f249k;
    private int l;
    private Context m;
    private boolean n;
    private Drawable o;
    private boolean p;
    private LayoutInflater q;
    private boolean r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        q0 q0VarA = q0.a(getContext(), attributeSet, b.a.j.MenuView, i2, 0);
        this.f249k = q0VarA.b(b.a.j.MenuView_android_itemBackground);
        this.l = q0VarA.g(b.a.j.MenuView_android_itemTextAppearance, -1);
        this.n = q0VarA.a(b.a.j.MenuView_preserveIconSpacing, false);
        this.m = context;
        this.o = q0VarA.b(b.a.j.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, b.a.a.dropDownListViewStyle, 0);
        this.p = typedArrayObtainStyledAttributes.hasValue(0);
        q0VarA.a();
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a() {
        this.f244f = (CheckBox) getInflater().inflate(b.a.g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        a(this.f244f);
    }

    private void a(View view) {
        a(view, -1);
    }

    private void a(View view, int i2) {
        LinearLayout linearLayout = this.f248j;
        if (linearLayout != null) {
            linearLayout.addView(view, i2);
        } else {
            addView(view, i2);
        }
    }

    private void b() {
        this.f241c = (ImageView) getInflater().inflate(b.a.g.abc_list_menu_item_icon, (ViewGroup) this, false);
        a(this.f241c, 0);
    }

    private void c() {
        this.f242d = (RadioButton) getInflater().inflate(b.a.g.abc_list_menu_item_radio, (ViewGroup) this, false);
        a(this.f242d);
    }

    private LayoutInflater getInflater() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f246h;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void a(boolean z, char c2) {
        int i2 = (z && this.f240b.m()) ? 0 : 8;
        if (i2 == 0) {
            this.f245g.setText(this.f240b.e());
        }
        if (this.f245g.getVisibility() != i2) {
            this.f245g.setVisibility(i2);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f247i;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f247i.getLayoutParams();
        rect.top += this.f247i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public k getItemData() {
        return this.f240b;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public void initialize(k kVar, int i2) {
        this.f240b = kVar;
        setVisibility(kVar.isVisible() ? 0 : 8);
        setTitle(kVar.a(this));
        setCheckable(kVar.isCheckable());
        a(kVar.m(), kVar.d());
        setIcon(kVar.getIcon());
        setEnabled(kVar.isEnabled());
        setSubMenuArrowVisible(kVar.hasSubMenu());
        setContentDescription(kVar.getContentDescription());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        b.h.o.s.a(this, this.f249k);
        this.f243e = (TextView) findViewById(b.a.f.title);
        int i2 = this.l;
        if (i2 != -1) {
            this.f243e.setTextAppearance(this.m, i2);
        }
        this.f245g = (TextView) findViewById(b.a.f.shortcut);
        this.f246h = (ImageView) findViewById(b.a.f.submenuarrow);
        ImageView imageView = this.f246h;
        if (imageView != null) {
            imageView.setImageDrawable(this.o);
        }
        this.f247i = (ImageView) findViewById(b.a.f.group_divider);
        this.f248j = (LinearLayout) findViewById(b.a.f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.f241c != null && this.n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f241c.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override // androidx.appcompat.view.menu.q.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.f242d == null && this.f244f == null) {
            return;
        }
        if (this.f240b.i()) {
            if (this.f242d == null) {
                c();
            }
            compoundButton = this.f242d;
            compoundButton2 = this.f244f;
        } else {
            if (this.f244f == null) {
                a();
            }
            compoundButton = this.f244f;
            compoundButton2 = this.f242d;
        }
        if (z) {
            compoundButton.setChecked(this.f240b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f244f;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f242d;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f240b.i()) {
            if (this.f242d == null) {
                c();
            }
            compoundButton = this.f242d;
        } else {
            if (this.f244f == null) {
                a();
            }
            compoundButton = this.f244f;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.n = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f247i;
        if (imageView != null) {
            imageView.setVisibility((this.p || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f240b.l() || this.r;
        if (z || this.n) {
            if (this.f241c == null && drawable == null && !this.n) {
                return;
            }
            if (this.f241c == null) {
                b();
            }
            if (drawable == null && !this.n) {
                this.f241c.setVisibility(8);
                return;
            }
            ImageView imageView = this.f241c;
            if (!z) {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            if (this.f241c.getVisibility() != 0) {
                this.f241c.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        int i2;
        TextView textView;
        if (charSequence != null) {
            this.f243e.setText(charSequence);
            if (this.f243e.getVisibility() == 0) {
                return;
            }
            textView = this.f243e;
            i2 = 0;
        } else {
            i2 = 8;
            if (this.f243e.getVisibility() == 8) {
                return;
            } else {
                textView = this.f243e;
            }
        }
        textView.setVisibility(i2);
    }
}
