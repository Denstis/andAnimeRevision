package animebestapp.com.ui.nav;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.c;
import animebestapp.com.R;
import animebestapp.com.models.h;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import g.l;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.app.c f1901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f1902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g.p.a.a<l> f1903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final NavActivity f1904d;

    static final class a implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ h f1906c;

        a(h hVar) {
            this.f1906c = hVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProgressBar progressBar;
            Button button;
            View view2 = c.this.f1902b;
            if (view2 != null && (button = (Button) view2.findViewById(animebestapp.com.a.btnUpdate)) != null) {
                button.setVisibility(8);
            }
            View view3 = c.this.f1902b;
            if (view3 != null && (progressBar = (ProgressBar) view3.findViewById(animebestapp.com.a.progress)) != null) {
                progressBar.setVisibility(0);
            }
            c.this.b().a(this.f1906c);
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            c.this.a();
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.c$c, reason: collision with other inner class name */
    static final class DialogInterfaceOnDismissListenerC0064c implements DialogInterface.OnDismissListener {
        DialogInterfaceOnDismissListenerC0064c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            g.p.a.a aVar = c.this.f1903c;
            if (aVar != null) {
            }
        }
    }

    public c(NavActivity navActivity, h hVar) {
        g.p.b.f.b(navActivity, "context");
        g.p.b.f.b(hVar, "version");
        this.f1904d = navActivity;
        View viewInflate = LayoutInflater.from(this.f1904d).inflate(R.layout.dialog_update, (ViewGroup) null, false);
        this.f1902b = viewInflate;
        g.p.b.f.a((Object) viewInflate, "view");
        TextView textView = (TextView) viewInflate.findViewById(animebestapp.com.a.text1);
        g.p.b.f.a((Object) textView, "view.text1");
        textView.setText("Текущая версия 1.6.4");
        TextView textView2 = (TextView) viewInflate.findViewById(animebestapp.com.a.info);
        g.p.b.f.a((Object) textView2, "view.info");
        textView2.setText("Актуальная версия приложения " + hVar.c());
        if (hVar.d() > 164) {
            ((Button) viewInflate.findViewById(animebestapp.com.a.btnUpdate)).setOnClickListener(new a(hVar));
        } else {
            Button button = (Button) viewInflate.findViewById(animebestapp.com.a.btnUpdate);
            g.p.b.f.a((Object) button, "view.btnUpdate");
            button.setEnabled(false);
        }
        ((Button) viewInflate.findViewById(animebestapp.com.a.btnClose)).setOnClickListener(new b());
        c.a aVar = new c.a(this.f1904d);
        aVar.a(new DialogInterfaceOnDismissListenerC0064c());
        aVar.b(viewInflate);
        androidx.appcompat.app.c cVarA = aVar.a();
        g.p.b.f.a((Object) cVarA, "AlertDialog.Builder(cont…                .create()");
        this.f1901a = cVarA;
    }

    public final void a() {
        this.f1901a.dismiss();
    }

    public final void a(int i2) {
        View view = this.f1902b;
        if (view != null) {
            Button button = (Button) view.findViewById(animebestapp.com.a.btnUpdate);
            if (button != null) {
                button.setVisibility(8);
            }
            ProgressBar progressBar = (ProgressBar) view.findViewById(animebestapp.com.a.progress);
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
            ProgressBar progressBar2 = (ProgressBar) view.findViewById(animebestapp.com.a.progress);
            if (progressBar2 != null) {
                progressBar2.setProgress(i2);
            }
        }
    }

    public final void a(g.p.a.a<l> aVar) {
        g.p.b.f.b(aVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f1903c = aVar;
    }

    public final NavActivity b() {
        return this.f1904d;
    }

    public final boolean c() {
        return this.f1901a.isShowing();
    }

    public final void d() {
        if (this.f1901a.isShowing()) {
            return;
        }
        this.f1901a.show();
    }
}
