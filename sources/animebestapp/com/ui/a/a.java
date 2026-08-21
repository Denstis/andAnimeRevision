package animebestapp.com.ui.a;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import animebestapp.com.App;
import animebestapp.com.c.a.a;
import animebestapp.com.ui.a.c;
import animebestapp.com.ui.a.f.a;
import b.k.a.i;
import com.google.android.material.snackbar.Snackbar;
import g.j;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<V extends animebestapp.com.ui.a.f.a, P extends c<V>> extends c.b.a.c.a<V, P> implements animebestapp.com.ui.a.f.a {
    private HashMap s;

    public final void a(int i2, int i3) {
        super.setContentView(i3);
        ViewStub viewStub = (ViewStub) findViewById(animebestapp.com.a.vsContent);
        f.a((Object) viewStub, "vsContent");
        viewStub.setLayoutResource(i2);
        ((ViewStub) findViewById(animebestapp.com.a.vsContent)).inflate();
    }

    @Override // animebestapp.com.ui.a.f.a
    public void a(String str) {
        f.b(str, "message");
        Snackbar actionTextColor = Snackbar.make((ConstraintLayout) h(animebestapp.com.a.constraint), str, 0).setActionTextColor(androidx.core.content.a.a(this, R.color.white));
        f.a((Object) actionTextColor, "Snackbar.make(constraint…, android.R.color.white))");
        View view = actionTextColor.getView();
        f.a((Object) view, "snack.getView()");
        View viewFindViewById = view.findViewById(animebestapp.com.R.id.snackbar_text);
        if (viewFindViewById == null) {
            throw new j("null cannot be cast to non-null type android.widget.TextView");
        }
        ((TextView) viewFindViewById).setTextColor(-1);
        actionTextColor.show();
    }

    public View h(int i2) {
        if (this.s == null) {
            this.s = new HashMap();
        }
        View view = (View) this.s.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.s.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b.k.a.e, android.app.Activity
    public void onBackPressed() {
        i iVarP = p();
        f.a((Object) iVarP, "supportFragmentManager");
        for (b.k.a.d dVar : iVarP.c()) {
            f.a((Object) dVar, "fragment");
            if (dVar.isVisible() && (dVar instanceof animebestapp.com.ui.a.f.b) && ((animebestapp.com.ui.a.f.b) dVar).onBackPressed()) {
                return;
            }
        }
        i iVarP2 = p();
        f.a((Object) iVarP2, "supportFragmentManager");
        if (iVarP2.b() <= 1) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    @Override // c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c cVar = (c) this.r;
        a.InterfaceC0025a interfaceC0025aA = animebestapp.com.c.a.b.a();
        interfaceC0025aA.a(this);
        interfaceC0025aA.a(App.Companion.b());
        cVar.a(interfaceC0025aA.a());
    }

    @Override // androidx.appcompat.app.d, android.app.Activity
    public void setContentView(int i2) {
        a(i2, animebestapp.com.R.layout.base_continer);
    }
}
