package animebestapp.com.ui.presentation;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import androidx.viewpager.widget.ViewPager;
import animebestapp.com.R;
import animebestapp.com.ui.nav.NavActivity;
import com.google.android.material.textfield.TextInputLayout;
import java.util.HashMap;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes.dex */
public final class PresentationActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.presentation.d, animebestapp.com.ui.presentation.b> implements animebestapp.com.ui.presentation.d {
    private View t;
    private HashMap u;

    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewPager viewPager = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            ViewPager viewPager2 = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            g.p.b.f.a((Object) viewPager2, "pager");
            viewPager.a(viewPager2.getCurrentItem() - 1, true);
            ViewPager viewPager3 = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            g.p.b.f.a((Object) viewPager3, "pager");
            if (viewPager3.getCurrentItem() == 0) {
                g.p.b.f.a((Object) view, "it");
                view.setVisibility(4);
            }
            ImageButton imageButton = (ImageButton) PresentationActivity.this.h(animebestapp.com.a.btnNext);
            g.p.b.f.a((Object) imageButton, "btnNext");
            imageButton.setVisibility(0);
            Button button = (Button) PresentationActivity.this.h(animebestapp.com.a.btnSkip);
            g.p.b.f.a((Object) button, "btnSkip");
            button.setVisibility(8);
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ animebestapp.com.ui.presentation.a f2100c;

        b(animebestapp.com.ui.presentation.a aVar) {
            this.f2100c = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Button button;
            ViewPager viewPager = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            ViewPager viewPager2 = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            g.p.b.f.a((Object) viewPager2, "pager");
            viewPager.a(viewPager2.getCurrentItem() + 1, true);
            ViewPager viewPager3 = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            g.p.b.f.a((Object) viewPager3, "pager");
            int i2 = 0;
            if (viewPager3.getCurrentItem() > 0) {
                ImageButton imageButton = (ImageButton) PresentationActivity.this.h(animebestapp.com.a.btnPrev);
                g.p.b.f.a((Object) imageButton, "btnPrev");
                imageButton.setVisibility(0);
            }
            ViewPager viewPager4 = (ViewPager) PresentationActivity.this.h(animebestapp.com.a.pager);
            g.p.b.f.a((Object) viewPager4, "pager");
            if (viewPager4.getCurrentItem() + 1 == this.f2100c.a()) {
                ImageButton imageButton2 = (ImageButton) PresentationActivity.this.h(animebestapp.com.a.btnNext);
                g.p.b.f.a((Object) imageButton2, "btnNext");
                imageButton2.setVisibility(4);
                button = (Button) PresentationActivity.this.h(animebestapp.com.a.btnSkip);
                g.p.b.f.a((Object) button, "btnSkip");
            } else {
                ImageButton imageButton3 = (ImageButton) PresentationActivity.this.h(animebestapp.com.a.btnNext);
                g.p.b.f.a((Object) imageButton3, "btnNext");
                imageButton3.setVisibility(0);
                button = (Button) PresentationActivity.this.h(animebestapp.com.a.btnSkip);
                g.p.b.f.a((Object) button, "btnSkip");
                i2 = 8;
            }
            button.setVisibility(i2);
        }
    }

    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PresentationActivity presentationActivity = PresentationActivity.this;
            presentationActivity.startActivity(new Intent(presentationActivity, (Class<?>) NavActivity.class));
            PresentationActivity.this.finish();
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            animebestapp.com.ui.presentation.b bVarA = PresentationActivity.a(PresentationActivity.this);
            EditText editText = (EditText) PresentationActivity.this.h(animebestapp.com.a.etLogin);
            g.p.b.f.a((Object) editText, "etLogin");
            String string = editText.getText().toString();
            EditText editText2 = (EditText) PresentationActivity.this.h(animebestapp.com.a.etPass);
            g.p.b.f.a((Object) editText2, "etPass");
            String string2 = editText2.getText().toString();
            EditText editText3 = (EditText) PresentationActivity.this.h(animebestapp.com.a.etEmail);
            g.p.b.f.a((Object) editText3, "etEmail");
            bVarA.a(string, string2, editText3.getText().toString());
        }
    }

    public static final class e extends animebestapp.com.utils.b {
        e() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) PresentationActivity.this.h(animebestapp.com.a.inPass);
            g.p.b.f.a((Object) textInputLayout, "inPass");
            textInputLayout.setError("");
        }
    }

    public static final class f extends animebestapp.com.utils.b {
        f() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) PresentationActivity.this.h(animebestapp.com.a.inLogin);
            g.p.b.f.a((Object) textInputLayout, "inLogin");
            textInputLayout.setError("");
        }
    }

    public static final class g extends animebestapp.com.utils.b {
        g() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) PresentationActivity.this.h(animebestapp.com.a.inEmail);
            g.p.b.f.a((Object) textInputLayout, "inEmail");
            textInputLayout.setError("");
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.presentation.b a(PresentationActivity presentationActivity) {
        return (animebestapp.com.ui.presentation.b) presentationActivity.r;
    }

    @Override // animebestapp.com.ui.presentation.d
    public void a(int i2) {
        View view = this.t;
        if (view == null) {
            g.p.b.f.c("three");
            throw null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(animebestapp.com.a.inPass);
        g.p.b.f.a((Object) textInputLayout, "three.inPass");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.presentation.d
    public void b(int i2) {
        View view = this.t;
        if (view == null) {
            g.p.b.f.c("three");
            throw null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(animebestapp.com.a.inLogin);
        g.p.b.f.a((Object) textInputLayout, "three.inLogin");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.presentation.d
    public void c() {
        finishAffinity();
        startActivity(new Intent(this, (Class<?>) NavActivity.class));
    }

    @Override // animebestapp.com.ui.presentation.d
    public void c(int i2) {
        View view = this.t;
        if (view == null) {
            g.p.b.f.c("three");
            throw null;
        }
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(animebestapp.com.a.inEmail);
        g.p.b.f.a((Object) textInputLayout, "three.inEmail");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.u == null) {
            this.u = new HashMap();
        }
        View view = (View) this.u.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.u.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.presentation.b l() {
        return new animebestapp.com.ui.presentation.b();
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_presentation);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.view_one, (ViewGroup) h(animebestapp.com.a.pager), false);
        View viewInflate2 = LayoutInflater.from(this).inflate(R.layout.view_favorite, (ViewGroup) h(animebestapp.com.a.pager), false);
        View viewInflate3 = LayoutInflater.from(this).inflate(R.layout.view_night, (ViewGroup) h(animebestapp.com.a.pager), false);
        View viewInflate4 = LayoutInflater.from(this).inflate(R.layout.view_reg, (ViewGroup) h(animebestapp.com.a.pager), false);
        g.p.b.f.a((Object) viewInflate4, "LayoutInflater.from(this…t.view_reg, pager, false)");
        this.t = viewInflate4;
        animebestapp.com.ui.presentation.a aVar = new animebestapp.com.ui.presentation.a();
        g.p.b.f.a((Object) viewInflate, "one");
        aVar.c(viewInflate);
        g.p.b.f.a((Object) viewInflate2, "two");
        aVar.c(viewInflate2);
        g.p.b.f.a((Object) viewInflate3, "night");
        aVar.c(viewInflate3);
        View view = this.t;
        if (view == null) {
            g.p.b.f.c("three");
            throw null;
        }
        aVar.c(view);
        ViewPager viewPager = (ViewPager) h(animebestapp.com.a.pager);
        g.p.b.f.a((Object) viewPager, "pager");
        viewPager.setAdapter(aVar);
        ((CircleIndicator) h(animebestapp.com.a.indicator)).setViewPager((ViewPager) h(animebestapp.com.a.pager));
        ((ImageButton) h(animebestapp.com.a.btnPrev)).setOnClickListener(new a());
        ((ImageButton) h(animebestapp.com.a.btnNext)).setOnClickListener(new b(aVar));
        ((Button) h(animebestapp.com.a.btnSkip)).setOnClickListener(new c());
        View view2 = this.t;
        if (view2 == null) {
            g.p.b.f.c("three");
            throw null;
        }
        ((Button) view2.findViewById(animebestapp.com.a.btnEnter)).setOnClickListener(new d());
        View view3 = this.t;
        if (view3 == null) {
            g.p.b.f.c("three");
            throw null;
        }
        ((EditText) view3.findViewById(animebestapp.com.a.etPass)).addTextChangedListener(new e());
        View view4 = this.t;
        if (view4 == null) {
            g.p.b.f.c("three");
            throw null;
        }
        ((EditText) view4.findViewById(animebestapp.com.a.etLogin)).addTextChangedListener(new f());
        View view5 = this.t;
        if (view5 != null) {
            ((EditText) view5.findViewById(animebestapp.com.a.etEmail)).addTextChangedListener(new g());
        } else {
            g.p.b.f.c("three");
            throw null;
        }
    }
}
