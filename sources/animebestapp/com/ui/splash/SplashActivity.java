package animebestapp.com.ui.splash;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.d;
import animebestapp.com.R;
import animebestapp.com.b.a.b;
import animebestapp.com.ui.nav.NavActivity;
import animebestapp.com.ui.presentation.PresentationActivity;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class SplashActivity extends d {
    private HashMap q;

    static final class a implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f2116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b f2117d;

        a(boolean z, b bVar) {
            this.f2116c = z;
            this.f2117d = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.f2116c) {
                SplashActivity splashActivity = SplashActivity.this;
                splashActivity.startActivity(new Intent(splashActivity, (Class<?>) NavActivity.class));
            } else {
                SplashActivity splashActivity2 = SplashActivity.this;
                splashActivity2.startActivity(new Intent(splashActivity2, (Class<?>) PresentationActivity.class));
                this.f2117d.a(false);
                this.f2117d.i();
            }
        }
    }

    public View h(int i2) {
        if (this.q == null) {
            this.q = new HashMap();
        }
        View view = (View) this.q.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.q.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        b bVar = new b(this);
        ((ImageView) h(animebestapp.com.a.ivLogo)).postDelayed(new a(bVar.b(), bVar), 1500L);
    }
}
