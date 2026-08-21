package animebestapp.com.ui.dubbers;

import android.os.Bundle;
import android.view.View;
import animebestapp.com.R;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class DubberDetailActivity extends animebestapp.com.ui.a.a<b, a> implements b {
    private HashMap t;

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
    public a l() {
        return new a();
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dubber_detail_activity);
    }
}
