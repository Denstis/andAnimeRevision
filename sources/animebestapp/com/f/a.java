package animebestapp.com.f;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.c;
import animebestapp.com.R;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.appcompat.app.c f1541a;

    public a(Context context) {
        f.b(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_progress, (ViewGroup) null, false);
        c.a aVar = new c.a(context);
        aVar.b(viewInflate);
        aVar.a(false);
        androidx.appcompat.app.c cVarA = aVar.a();
        f.a((Object) cVarA, "AlertDialog.Builder(cont…                .create()");
        this.f1541a = cVarA;
        Window window = this.f1541a.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            f.a();
            throw null;
        }
    }

    public final void a() {
        this.f1541a.dismiss();
    }

    public final void b() {
        if (this.f1541a.isShowing()) {
            return;
        }
        this.f1541a.show();
    }
}
