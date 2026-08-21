package animebestapp.com.ui.auth;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.widget.Toolbar;
import animebestapp.com.R;
import animebestapp.com.ui.nav.NavActivity;
import com.google.android.material.textfield.TextInputLayout;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class RegActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.auth.c, animebestapp.com.ui.auth.a> implements animebestapp.com.ui.auth.c {
    private HashMap t;

    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            RegActivity.this.finish();
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            animebestapp.com.ui.auth.a aVarA = RegActivity.a(RegActivity.this);
            EditText editText = (EditText) RegActivity.this.h(animebestapp.com.a.etLogin);
            f.a((Object) editText, "etLogin");
            String string = editText.getText().toString();
            EditText editText2 = (EditText) RegActivity.this.h(animebestapp.com.a.etPass);
            f.a((Object) editText2, "etPass");
            String string2 = editText2.getText().toString();
            EditText editText3 = (EditText) RegActivity.this.h(animebestapp.com.a.etEmail);
            f.a((Object) editText3, "etEmail");
            aVarA.a(string, string2, editText3.getText().toString());
        }
    }

    public static final class c extends animebestapp.com.utils.b {
        c() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) RegActivity.this.h(animebestapp.com.a.inPass);
            f.a((Object) textInputLayout, "inPass");
            textInputLayout.setError("");
        }
    }

    public static final class d extends animebestapp.com.utils.b {
        d() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) RegActivity.this.h(animebestapp.com.a.inLogin);
            f.a((Object) textInputLayout, "inLogin");
            textInputLayout.setError("");
        }
    }

    public static final class e extends animebestapp.com.utils.b {
        e() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) RegActivity.this.h(animebestapp.com.a.inEmail);
            f.a((Object) textInputLayout, "inEmail");
            textInputLayout.setError("");
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.auth.a a(RegActivity regActivity) {
        return (animebestapp.com.ui.auth.a) regActivity.r;
    }

    @Override // animebestapp.com.ui.auth.c
    public void a(int i2) {
        TextInputLayout textInputLayout = (TextInputLayout) h(animebestapp.com.a.inPass);
        f.a((Object) textInputLayout, "inPass");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.auth.c
    public void b(int i2) {
        TextInputLayout textInputLayout = (TextInputLayout) h(animebestapp.com.a.inLogin);
        f.a((Object) textInputLayout, "inLogin");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.auth.c
    public void c() {
        finishAffinity();
        startActivity(new Intent(this, (Class<?>) NavActivity.class));
    }

    @Override // animebestapp.com.ui.auth.c
    public void c(int i2) {
        TextInputLayout textInputLayout = (TextInputLayout) h(animebestapp.com.a.inEmail);
        f.a((Object) textInputLayout, "inEmail");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.t == null) {
            this.t = new HashMap();
        }
        View view = (View) this.t.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.t.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.auth.a l() {
        return new animebestapp.com.ui.auth.a();
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_reg);
        a((Toolbar) h(animebestapp.com.a.toolbar));
        androidx.appcompat.app.a aVarU = u();
        if (aVarU == null) {
            f.a();
            throw null;
        }
        aVarU.d(true);
        androidx.appcompat.app.a aVarU2 = u();
        if (aVarU2 == null) {
            f.a();
            throw null;
        }
        aVarU2.e(true);
        ((Toolbar) h(animebestapp.com.a.toolbar)).setNavigationOnClickListener(new a());
        androidx.appcompat.app.a aVarU3 = u();
        if (aVarU3 == null) {
            f.a();
            throw null;
        }
        f.a((Object) aVarU3, "supportActionBar!!");
        aVarU3.a("Регистрация");
        ((Button) h(animebestapp.com.a.btnEnter)).setOnClickListener(new b());
        ((EditText) h(animebestapp.com.a.etPass)).addTextChangedListener(new c());
        ((EditText) h(animebestapp.com.a.etLogin)).addTextChangedListener(new d());
        ((EditText) h(animebestapp.com.a.etEmail)).addTextChangedListener(new e());
    }
}
