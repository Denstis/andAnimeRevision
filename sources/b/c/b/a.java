package b.c.b;

import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f2247a;

    /* JADX INFO: renamed from: b.c.b.a$a, reason: collision with other inner class name */
    public static final class C0097a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Intent f2248a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<Bundle> f2249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bundle f2250c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<Bundle> f2251d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2252e;

        public C0097a() {
            this(null);
        }

        public C0097a(b bVar) {
            this.f2248a = new Intent("android.intent.action.VIEW");
            this.f2249b = null;
            this.f2250c = null;
            this.f2251d = null;
            this.f2252e = true;
            if (bVar != null) {
                bVar.b();
                throw null;
            }
            Bundle bundle = new Bundle();
            if (bVar != null) {
                bVar.a();
                throw null;
            }
            d.a(bundle, "android.support.customtabs.extra.SESSION", null);
            this.f2248a.putExtras(bundle);
        }

        public a a() {
            ArrayList<Bundle> arrayList = this.f2249b;
            if (arrayList != null) {
                this.f2248a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f2251d;
            if (arrayList2 != null) {
                this.f2248a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f2248a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f2252e);
            return new a(this.f2248a, this.f2250c);
        }
    }

    a(Intent intent, Bundle bundle) {
        this.f2247a = intent;
    }
}
