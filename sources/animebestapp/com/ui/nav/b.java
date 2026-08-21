package animebestapp.com.ui.nav;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.app.c;
import animebestapp.com.R;
import animebestapp.com.ui.auth.RegActivity;
import g.l;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.app.c f1896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1897b;

    static final class a implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.p.a.a f1899c;

        a(g.p.a.a aVar) {
            this.f1899c = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f1899c.a();
            b.this.a();
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.b$b, reason: collision with other inner class name */
    static final class ViewOnClickListenerC0063b implements View.OnClickListener {
        ViewOnClickListenerC0063b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.this.f1897b.startActivity(new Intent(b.this.f1897b, (Class<?>) RegActivity.class));
            b.this.a();
        }
    }

    public b(Context context, g.p.a.a<l> aVar) {
        g.p.b.f.b(context, "context");
        g.p.b.f.b(aVar, "openMenu");
        this.f1897b = context;
        View viewInflate = LayoutInflater.from(this.f1897b).inflate(R.layout.dialog_reg_favorite, (ViewGroup) null, false);
        g.p.b.f.a((Object) viewInflate, "view");
        ((Button) viewInflate.findViewById(animebestapp.com.a.btnAuth)).setOnClickListener(new a(aVar));
        ((Button) viewInflate.findViewById(animebestapp.com.a.btnReg)).setOnClickListener(new ViewOnClickListenerC0063b());
        c.a aVar2 = new c.a(this.f1897b);
        aVar2.b(viewInflate);
        androidx.appcompat.app.c cVarA = aVar2.a();
        g.p.b.f.a((Object) cVarA, "AlertDialog.Builder(cont…                .create()");
        this.f1896a = cVarA;
    }

    public final void a() {
        this.f1896a.dismiss();
    }

    public final void b() {
        if (this.f1896a.isShowing()) {
            return;
        }
        this.f1896a.show();
    }
}
