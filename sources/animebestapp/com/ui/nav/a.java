package animebestapp.com.ui.nav;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.c;
import animebestapp.com.R;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.app.c f1891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.appcompat.app.d f1892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f1893c;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.a$a, reason: collision with other inner class name */
    static final class ViewOnClickListenerC0062a implements View.OnClickListener {
        ViewOnClickListenerC0062a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (a.this.f1893c.a() == null) {
                a.this.a();
            } else {
                a.this.f1892b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(a.this.f1893c.a())));
            }
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (a.this.f1893c.b() != null) {
                if (!(a.this.f1893c.b().length() == 0)) {
                    a.this.f1892b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(a.this.f1893c.b())));
                    return;
                }
            }
            a.this.a();
        }
    }

    public a(androidx.appcompat.app.d dVar, d dVar2) {
        g.p.b.f.b(dVar, "context");
        g.p.b.f.b(dVar2, "info");
        this.f1892b = dVar;
        this.f1893c = dVar2;
        View viewInflate = LayoutInflater.from(this.f1892b).inflate(R.layout.dialog_info, (ViewGroup) null, false);
        g.p.b.f.a((Object) viewInflate, "view");
        TextView textView = (TextView) viewInflate.findViewById(animebestapp.com.a.tvTitle);
        g.p.b.f.a((Object) textView, "view.tvTitle");
        textView.setText(this.f1893c.g());
        TextView textView2 = (TextView) viewInflate.findViewById(animebestapp.com.a.tvMessage);
        g.p.b.f.a((Object) textView2, "view.tvMessage");
        textView2.setText(this.f1893c.f());
        TextView textView3 = (TextView) viewInflate.findViewById(animebestapp.com.a.tvMessage);
        g.p.b.f.a((Object) textView3, "view.tvMessage");
        textView3.setText(this.f1893c.f());
        if (this.f1893c.d() == null) {
            Button button = (Button) viewInflate.findViewById(animebestapp.com.a.btnRight);
            g.p.b.f.a((Object) button, "view.btnRight");
            button.setVisibility(8);
        } else {
            Button button2 = (Button) viewInflate.findViewById(animebestapp.com.a.btnRight);
            g.p.b.f.a((Object) button2, "view.btnRight");
            button2.setText(this.f1893c.d());
        }
        if (this.f1893c.c() == null) {
            Button button3 = (Button) viewInflate.findViewById(animebestapp.com.a.btnLeft);
            g.p.b.f.a((Object) button3, "view.btnLeft");
            button3.setVisibility(8);
        } else {
            Button button4 = (Button) viewInflate.findViewById(animebestapp.com.a.btnLeft);
            g.p.b.f.a((Object) button4, "view.btnLeft");
            button4.setText(this.f1893c.c());
        }
        if (this.f1893c.e().length() > 0) {
            g.p.b.f.a((Object) c.a.a.c.a(viewInflate).a(this.f1893c.e()).a((ImageView) viewInflate.findViewById(animebestapp.com.a.ivImage)), "Glide.with(view)\n       …      .into(view.ivImage)");
        } else {
            ImageView imageView = (ImageView) viewInflate.findViewById(animebestapp.com.a.ivImage);
            g.p.b.f.a((Object) imageView, "view.ivImage");
            imageView.setVisibility(8);
        }
        ((Button) viewInflate.findViewById(animebestapp.com.a.btnLeft)).setOnClickListener(new ViewOnClickListenerC0062a());
        ((Button) viewInflate.findViewById(animebestapp.com.a.btnRight)).setOnClickListener(new b());
        c.a aVar = new c.a(this.f1892b);
        aVar.b(viewInflate);
        androidx.appcompat.app.c cVarA = aVar.a();
        g.p.b.f.a((Object) cVarA, "AlertDialog.Builder(cont…                .create()");
        this.f1891a = cVarA;
    }

    public final void a() {
        this.f1891a.dismiss();
    }

    public final void b() {
        animebestapp.com.b.a.b bVar = new animebestapp.com.b.a.b(this.f1892b);
        if ((bVar.c() == -1 || bVar.c() + ((long) 3600000) < System.currentTimeMillis()) && !this.f1891a.isShowing()) {
            this.f1891a.show();
            bVar.c(System.currentTimeMillis());
        }
    }
}
