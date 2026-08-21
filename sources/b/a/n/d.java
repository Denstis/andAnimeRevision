package b.a.n;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;

/* JADX INFO: loaded from: classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources.Theme f2180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f2181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f2182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Resources f2183e;

    public d() {
        super(null);
    }

    public d(Context context, int i2) {
        super(context);
        this.f2179a = i2;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f2180b = theme;
    }

    private Resources b() {
        Resources resources;
        if (this.f2183e == null) {
            Configuration configuration = this.f2182d;
            if (configuration == null) {
                resources = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                resources = createConfigurationContext(configuration).getResources();
            }
            this.f2183e = resources;
        }
        return this.f2183e;
    }

    private void c() {
        boolean z = this.f2180b == null;
        if (z) {
            this.f2180b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f2180b.setTo(theme);
            }
        }
        a(this.f2180b, this.f2179a, z);
    }

    public int a() {
        return this.f2179a;
    }

    protected void a(Resources.Theme theme, int i2, boolean z) {
        theme.applyStyle(i2, true);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f2181c == null) {
            this.f2181c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f2181c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f2180b;
        if (theme != null) {
            return theme;
        }
        if (this.f2179a == 0) {
            this.f2179a = b.a.i.Theme_AppCompat_Light;
        }
        c();
        return this.f2180b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (this.f2179a != i2) {
            this.f2179a = i2;
            c();
        }
    }
}
