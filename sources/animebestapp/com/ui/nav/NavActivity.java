package animebestapp.com.ui.nav;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.FileProvider;
import androidx.drawerlayout.widget.DrawerLayout;
import animebestapp.com.R;
import animebestapp.com.menu.SlideMenuView;
import animebestapp.com.ui.auth.RegActivity;
import animebestapp.com.ui.splash.SplashActivity;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.gson.Gson;
import com.jakewharton.processphoenix.ProcessPhoenix;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class NavActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.nav.g, animebestapp.com.ui.nav.e> implements animebestapp.com.ui.nav.g, NavigationView.OnNavigationItemSelectedListener {
    private static BufferedInputStream v = null;
    private static e.a.v.b w = null;
    private static animebestapp.com.models.h x = null;

    @SuppressLint({"StaticFieldLeak"})
    private static animebestapp.com.ui.nav.c y = null;
    private static final long z;
    private boolean t;
    private HashMap u;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    static final class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1857b;

        a0(Context context) {
            this.f1857b = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Intent intent = new Intent(this.f1857b, (Class<?>) SplashActivity.class);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            ProcessPhoenix.a(this.f1857b, intent);
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavActivity.a(NavActivity.this).i();
            ((SlideMenuView) NavActivity.this.h(animebestapp.com.a.navMenu)).a();
            NavActivity.this.k();
        }
    }

    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavActivity navActivity = NavActivity.this;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://animebestapp.org/vip.html"));
            navActivity.startActivity(intent);
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavActivity navActivity = NavActivity.this;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://aniandrl23l2l13.animebesst.org/"));
            navActivity.startActivity(intent);
        }
    }

    static final class e<TResult> implements OnSuccessListener<byte[]> {
        e() {
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onSuccess(byte[] bArr) {
            g.p.b.f.a((Object) bArr, "it");
            System.out.println((Object) new String(bArr, g.s.c.f4406a));
            animebestapp.com.ui.nav.d dVar = (animebestapp.com.ui.nav.d) new Gson().fromJson(new String(bArr, g.s.c.f4406a), animebestapp.com.ui.nav.d.class);
            NavActivity navActivity = NavActivity.this;
            g.p.b.f.a((Object) dVar, "info");
            navActivity.a(dVar);
        }
    }

    static final class f implements OnFailureListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f1862a = new f();

        f() {
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            g.p.b.f.b(exc, "it");
            exc.printStackTrace();
        }
    }

    static final class g<T> implements e.a.x.d<Integer> {
        g() {
        }

        @Override // e.a.x.d
        public final void a(Integer num) {
            NavActivity navActivity = NavActivity.this;
            g.p.b.f.a((Object) num, "it");
            navActivity.i(num.intValue());
        }
    }

    static final class h<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ animebestapp.com.models.h f1865b;

        h(animebestapp.com.models.h hVar) {
            this.f1865b = hVar;
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
            NavActivity.this.h(this.f1865b.a());
        }
    }

    static final class i implements e.a.x.a {
        i() {
        }

        @Override // e.a.x.a
        public final void run() {
            NavActivity.x = null;
            NavActivity.v = null;
            animebestapp.com.ui.nav.c cVar = NavActivity.y;
            if (cVar != null) {
                cVar.a();
            }
            NavActivity.this.g(NavActivity.this.y().getAbsolutePath() + "AnimeBest.apk");
        }
    }

    public static final class j extends animebestapp.com.utils.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1867b;

        j(View view) {
            this.f1867b = view;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) this.f1867b.findViewById(animebestapp.com.a.inLogin);
            g.p.b.f.a((Object) textInputLayout, "view.inLogin");
            textInputLayout.setError("");
        }
    }

    public static final class k extends animebestapp.com.utils.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1868b;

        k(View view) {
            this.f1868b = view;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextInputLayout textInputLayout = (TextInputLayout) this.f1868b.findViewById(animebestapp.com.a.inPass);
            g.p.b.f.a((Object) textInputLayout, "view.inPass");
            textInputLayout.setError("");
        }
    }

    static final class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavActivity navActivity = NavActivity.this;
            navActivity.startActivity(new Intent(navActivity, (Class<?>) RegActivity.class));
        }
    }

    static final class m implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1871c;

        m(View view) {
            this.f1871c = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TextInputLayout textInputLayout = (TextInputLayout) this.f1871c.findViewById(animebestapp.com.a.inLogin);
            g.p.b.f.a((Object) textInputLayout, "view.inLogin");
            textInputLayout.setError("");
            TextInputLayout textInputLayout2 = (TextInputLayout) this.f1871c.findViewById(animebestapp.com.a.inPass);
            g.p.b.f.a((Object) textInputLayout2, "view.inPass");
            textInputLayout2.setError("");
            animebestapp.com.ui.nav.e eVarA = NavActivity.a(NavActivity.this);
            EditText editText = (EditText) this.f1871c.findViewById(animebestapp.com.a.etLogin);
            g.p.b.f.a((Object) editText, "view.etLogin");
            String string = editText.getText().toString();
            TextInputEditText textInputEditText = (TextInputEditText) this.f1871c.findViewById(animebestapp.com.a.etPass);
            g.p.b.f.a((Object) textInputEditText, "view.etPass");
            eVarA.a(string, String.valueOf(textInputEditText.getText()));
        }
    }

    static final class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavActivity navActivity = NavActivity.this;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://ani1androi23122d.animebesst.org/index.php?do=lostpassword"));
            navActivity.startActivity(intent);
        }
    }

    public static final class o implements SlideMenuView.b {

        static final class a<TResult> implements OnSuccessListener<byte[]> {
            a() {
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void onSuccess(byte[] bArr) {
                g.p.b.f.a((Object) bArr, "it");
                System.out.println((Object) new String(bArr, g.s.c.f4406a));
                animebestapp.com.models.h hVar = (animebestapp.com.models.h) new Gson().fromJson(new String(bArr, g.s.c.f4406a), animebestapp.com.models.h.class);
                NavActivity navActivity = NavActivity.this;
                g.p.b.f.a((Object) hVar, "version");
                NavActivity.y = new animebestapp.com.ui.nav.c(navActivity, hVar);
                animebestapp.com.ui.nav.c cVar = NavActivity.y;
                if (cVar != null) {
                    cVar.d();
                }
            }
        }

        static final class b implements OnFailureListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final b f1875a = new b();

            b() {
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                g.p.b.f.b(exc, "it");
                exc.printStackTrace();
            }
        }

        static final class c implements DialogInterface.OnClickListener {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ boolean f1877c;

            c(boolean z) {
                this.f1877c = z;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                NavActivity.a(NavActivity.this).a(this.f1877c ? 2 : 1);
                NavActivity navActivity = NavActivity.this;
                navActivity.a((Context) navActivity);
            }
        }

        o() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ef  */
        @Override // animebestapp.com.menu.SlideMenuView.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(java.lang.String r3) {
            /*
                Method dump skipped, instruction units count: 312
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.nav.NavActivity.o.a(java.lang.String):void");
        }

        @Override // animebestapp.com.menu.SlideMenuView.b
        public void a(String str, boolean z) {
            g.p.b.f.b(str, "key");
            int iHashCode = str.hashCode();
            if (iHashCode == -985752863) {
                if (str.equals("player")) {
                    NavActivity.a(NavActivity.this).b(z);
                }
            } else if (iHashCode == -601793174 && str.equals("night_mode")) {
                c.a aVar = new c.a(NavActivity.this, R.style.AppThemeDialog);
                aVar.a("Для смены темы нужна перезагрузка приложения");
                aVar.a("Отменить", (DialogInterface.OnClickListener) null);
                aVar.c("Перезагрузить", new c(z));
                aVar.c();
            }
        }
    }

    static final class p<T> implements e.a.x.d<Integer> {
        p() {
        }

        @Override // e.a.x.d
        public final void a(Integer num) {
            NavActivity navActivity = NavActivity.this;
            g.p.b.f.a((Object) num, "it");
            navActivity.i(num.intValue());
        }
    }

    static final class q<T> implements e.a.x.d<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final q f1879a = new q();

        q() {
        }

        @Override // e.a.x.d
        public final void a(Throwable th) {
            th.printStackTrace();
        }
    }

    static final class r implements e.a.x.a {
        r() {
        }

        @Override // e.a.x.a
        public final void run() {
            NavActivity.x = null;
            NavActivity.v = null;
            animebestapp.com.ui.nav.c cVar = NavActivity.y;
            if (cVar != null) {
                cVar.a();
            }
            NavActivity.this.g(NavActivity.this.y().getAbsolutePath() + "AnimeBest.apk");
        }
    }

    static final class s<TResult> implements OnSuccessListener<byte[]> {

        static final class a extends g.p.b.g implements g.p.a.a<g.l> {
            a() {
                super(0);
            }

            @Override // g.p.a.a
            public /* bridge */ /* synthetic */ g.l a() {
                a2();
                return g.l.f4367a;
            }

            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
            public final void a2() {
                NavActivity.a(NavActivity.this).f();
            }
        }

        s() {
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onSuccess(byte[] bArr) {
            g.p.b.f.a((Object) bArr, "it");
            System.out.println((Object) new String(bArr, g.s.c.f4406a));
            NavActivity.x = (animebestapp.com.models.h) new Gson().fromJson(new String(bArr, g.s.c.f4406a), animebestapp.com.models.h.class);
            animebestapp.com.models.h hVar = NavActivity.x;
            if (hVar == null) {
                g.p.b.f.a();
                throw null;
            }
            if (hVar.d() <= 164) {
                NavActivity.a(NavActivity.this).f();
                return;
            }
            NavActivity navActivity = NavActivity.this;
            animebestapp.com.models.h hVar2 = NavActivity.x;
            if (hVar2 == null) {
                g.p.b.f.a();
                throw null;
            }
            NavActivity.y = new animebestapp.com.ui.nav.c(navActivity, hVar2);
            animebestapp.com.ui.nav.c cVar = NavActivity.y;
            if (cVar != null) {
                cVar.a(new a());
            }
            animebestapp.com.ui.nav.c cVar2 = NavActivity.y;
            if (cVar2 != null) {
                cVar2.d();
            }
        }
    }

    static final class t implements OnFailureListener {
        t() {
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            g.p.b.f.b(exc, "it");
            exc.printStackTrace();
            NavActivity.a(NavActivity.this).f();
        }
    }

    static final class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            g.p.b.f.a((Object) view, "it");
            view.setActivated(true);
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomHome);
            g.p.b.f.a((Object) appCompatImageButton, "btnBottomHome");
            appCompatImageButton.setActivated(false);
            AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomSchedule);
            g.p.b.f.a((Object) appCompatImageButton2, "btnBottomSchedule");
            appCompatImageButton2.setActivated(false);
            NavActivity.this.i("nav_favorite");
        }
    }

    static final class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            g.p.b.f.a((Object) view, "it");
            view.setActivated(true);
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomFavorites);
            g.p.b.f.a((Object) appCompatImageButton, "btnBottomFavorites");
            appCompatImageButton.setActivated(false);
            AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomSchedule);
            g.p.b.f.a((Object) appCompatImageButton2, "btnBottomSchedule");
            appCompatImageButton2.setActivated(false);
            NavActivity.this.i("nav_home");
        }
    }

    static final class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            g.p.b.f.a((Object) view, "it");
            view.setActivated(true);
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomHome);
            g.p.b.f.a((Object) appCompatImageButton, "btnBottomHome");
            appCompatImageButton.setActivated(false);
            AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) NavActivity.this.h(animebestapp.com.a.btnBottomFavorites);
            g.p.b.f.a((Object) appCompatImageButton2, "btnBottomFavorites");
            appCompatImageButton2.setActivated(false);
            NavActivity.this.i("nav_schedule");
        }
    }

    static final class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (((DrawerLayout) NavActivity.this.h(animebestapp.com.a.drawerLayout)).e(8388611)) {
                ((DrawerLayout) NavActivity.this.h(animebestapp.com.a.drawerLayout)).a(8388611);
            } else {
                ((DrawerLayout) NavActivity.this.h(animebestapp.com.a.drawerLayout)).f(8388611);
            }
        }
    }

    static final class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (NavActivity.this.t) {
                NavActivity.this.d(false);
                NavActivity.this.onBackPressed();
            } else {
                NavActivity.this.d(true);
                NavActivity.this.A();
            }
        }
    }

    static final class z<T> implements e.a.j<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1890b;

        z(String str) {
            this.f1890b = str;
        }

        @Override // e.a.j
        public final void a(e.a.i<Integer> iVar) {
            byte[] bArr;
            BufferedOutputStream bufferedOutputStream;
            InputStream inputStream;
            int contentLength;
            g.p.b.f.b(iVar, "it");
            try {
                try {
                    URL url = new URL(this.f1890b);
                    bArr = new byte[1024];
                    NavActivity.this.y().mkdirs();
                    new File(NavActivity.this.y(), "AnimeBest.apk").createNewFile();
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(NavActivity.this.y().getAbsolutePath() + "AnimeBest.apk"));
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    uRLConnectionOpenConnection.connect();
                    inputStream = uRLConnectionOpenConnection.getInputStream();
                    g.p.b.f.a((Object) uRLConnectionOpenConnection, "conn");
                    contentLength = uRLConnectionOpenConnection.getContentLength();
                } catch (IOException e2) {
                    iVar.a(e2);
                    if (NavActivity.v != null) {
                        try {
                            BufferedInputStream bufferedInputStream = NavActivity.v;
                            if (bufferedInputStream == null) {
                                g.p.b.f.a();
                                throw null;
                            }
                            bufferedInputStream.close();
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                        }
                    }
                }
                if (inputStream == null) {
                    g.p.b.f.a();
                    throw null;
                }
                int i2 = 0;
                for (int i3 = inputStream.read(bArr); i3 != -1; i3 = inputStream.read(bArr)) {
                    i2 += i3;
                    iVar.a(Integer.valueOf((i2 * 100) / contentLength));
                    bufferedOutputStream.write(bArr, 0, i3);
                }
                inputStream.close();
                bufferedOutputStream.close();
                if (NavActivity.v != null) {
                    try {
                        BufferedInputStream bufferedInputStream2 = NavActivity.v;
                        if (bufferedInputStream2 == null) {
                            g.p.b.f.a();
                            throw null;
                        }
                        bufferedInputStream2.close();
                    } catch (IOException e4) {
                        e = e4;
                        e.printStackTrace();
                    }
                }
                iVar.a(0);
                iVar.onComplete();
            } catch (Throwable th) {
                if (NavActivity.v != null) {
                    try {
                        BufferedInputStream bufferedInputStream3 = NavActivity.v;
                        if (bufferedInputStream3 == null) {
                            g.p.b.f.a();
                            throw null;
                        }
                        bufferedInputStream3.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                iVar.a(0);
                iVar.onComplete();
                throw th;
            }
        }
    }

    static {
        new a(null);
        z = 1048576L;
    }

    public NavActivity() {
        androidx.appcompat.app.f.j();
    }

    private final void E() {
        ((SlideMenuView) h(animebestapp.com.a.navMenu)).a(((animebestapp.com.ui.nav.e) this.r).h());
        ((SlideMenuView) h(animebestapp.com.a.navMenu)).setListener(new o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:La3Kameron@gmail.com"));
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        startActivity(intent);
    }

    public static final /* synthetic */ animebestapp.com.ui.nav.e a(NavActivity navActivity) {
        return (animebestapp.com.ui.nav.e) navActivity.r;
    }

    public final void A() {
        animebestapp.com.ui.nav.h.e.a.f2080g.a();
        b.k.a.o oVarA = p().a();
        oVarA.a((String) null);
        oVarA.b(R.id.frame, animebestapp.com.ui.nav.h.e.a.f2080g.a(), FirebaseAnalytics.Event.SEARCH);
        oVarA.a();
    }

    @Override // animebestapp.com.ui.nav.g
    public void a(int i2) {
        TextInputLayout textInputLayout = (TextInputLayout) ((SlideMenuView) h(animebestapp.com.a.navMenu)).getHeaderView(0).findViewById(animebestapp.com.a.inPass);
        g.p.b.f.a((Object) textInputLayout, "view.inPass");
        textInputLayout.setError(getString(i2));
    }

    public final void a(Context context) {
        g.p.b.f.b(context, "context");
        ((FrameLayout) h(animebestapp.com.a.frame)).postDelayed(new a0(context), 100L);
    }

    @Override // animebestapp.com.ui.nav.g
    public void a(animebestapp.com.models.g gVar) {
        String strA;
        TextView textView;
        g.p.b.f.b(gVar, "user");
        View childAt = ((SlideMenuView) h(animebestapp.com.a.navMenu)).getChildAt(0);
        if (childAt == null) {
            throw new g.j("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.header_auth, (ViewGroup) childAt, false);
        String strA2 = gVar.a();
        if (strA2 == null || strA2.length() == 0) {
            strA = "https://anime-best.com/templates/anime/dleimages/noavatar.png";
        } else if (gVar.a().charAt(0) == '/') {
            strA = "https:" + gVar.a();
        } else {
            strA = gVar.a();
        }
        g.p.b.f.a((Object) viewInflate, "header");
        c.a.a.c.a((ImageView) viewInflate.findViewById(animebestapp.com.a.ivPhoto)).a(strA).a((c.a.a.r.a<?>) new c.a.a.r.f().b()).a((c.a.a.r.a<?>) c.a.a.r.f.b((com.bumptech.glide.load.l<Bitmap>) new com.bumptech.glide.load.p.c.u(getResources().getDimensionPixelSize(R.dimen.corners)))).a((ImageView) viewInflate.findViewById(animebestapp.com.a.ivPhoto));
        String strB = gVar.b();
        boolean z2 = strB == null || strB.length() == 0;
        String str = "header.tvFullName";
        if (z2) {
            textView = (TextView) viewInflate.findViewById(animebestapp.com.a.tvFullName);
        } else {
            TextView textView2 = (TextView) viewInflate.findViewById(animebestapp.com.a.tvFullName);
            g.p.b.f.a((Object) textView2, "header.tvFullName");
            textView2.setText(gVar.b());
            textView = (TextView) viewInflate.findViewById(animebestapp.com.a.tvLogin);
            str = "header.tvLogin";
        }
        g.p.b.f.a((Object) textView, str);
        textView.setText(gVar.d());
        ((TextView) viewInflate.findViewById(animebestapp.com.a.btnLogout)).setOnClickListener(new b());
        ((TextView) viewInflate.findViewById(animebestapp.com.a.btnVip)).setOnClickListener(new c());
        ((TextView) viewInflate.findViewById(animebestapp.com.a.btnRedact)).setOnClickListener(new d());
        ((SlideMenuView) h(animebestapp.com.a.navMenu)).addHeaderView(viewInflate);
    }

    public final void a(animebestapp.com.models.h hVar) {
        g.p.b.f.b(hVar, "urlApk");
        w = j(hVar.b()).b(e.a.b0.b.b()).a(e.a.u.b.a.a()).a(new g(), new h(hVar), new i());
    }

    @Override // animebestapp.com.ui.nav.g
    public void a(animebestapp.com.ui.nav.d dVar) {
        g.p.b.f.b(dVar, "info");
        new animebestapp.com.ui.nav.a(this, dVar).b();
    }

    @Override // animebestapp.com.ui.a.a, animebestapp.com.ui.a.f.a
    public void a(String str) {
        g.p.b.f.b(str, "message");
        getIntent().getStringExtra("android.intent.extra.INSTALLER_PACKAGE_NAME");
        Snackbar.make((CoordinatorLayout) h(animebestapp.com.a.coordinatorLayout), str, 0).show();
    }

    @Override // animebestapp.com.ui.nav.g
    public void a(String str, String str2) {
        g.p.b.f.b(str, "category");
        g.p.b.f.b(str2, TtmlNode.ATTR_ID);
        animebestapp.com.ui.nav.h.a.c cVarA = animebestapp.com.ui.nav.h.a.c.f1950h.a(str, str2);
        ((TextView) h(animebestapp.com.a.tvTitle)).setText(R.string.from_genre);
        b.k.a.o oVarA = p().a();
        oVarA.a((String) null);
        oVarA.b(R.id.frame, cVarA, "genre");
        oVarA.a();
    }

    @Override // animebestapp.com.ui.nav.g
    public void b(int i2) {
        TextInputLayout textInputLayout = (TextInputLayout) ((SlideMenuView) h(animebestapp.com.a.navMenu)).getHeaderView(0).findViewById(animebestapp.com.a.inLogin);
        g.p.b.f.a((Object) textInputLayout, "view.inLogin");
        textInputLayout.setError(getString(i2));
    }

    @Override // animebestapp.com.ui.nav.g
    public void d(String str) {
        g.p.b.f.b(str, "error");
        TextInputLayout textInputLayout = (TextInputLayout) ((SlideMenuView) h(animebestapp.com.a.navMenu)).getHeaderView(0).findViewById(animebestapp.com.a.inPass);
        g.p.b.f.a((Object) textInputLayout, "view.inPass");
        textInputLayout.setError(str);
    }

    public void d(boolean z2) {
        ImageButton imageButton;
        int i2;
        this.t = z2;
        if (z2) {
            ImageButton imageButton2 = (ImageButton) h(animebestapp.com.a.btnRefresh);
            g.p.b.f.a((Object) imageButton2, "btnRefresh");
            imageButton2.setVisibility(8);
            TextView textView = (TextView) h(animebestapp.com.a.tvTitle);
            g.p.b.f.a((Object) textView, "tvTitle");
            textView.setVisibility(8);
            LinearLayout linearLayout = (LinearLayout) h(animebestapp.com.a.bottomNav);
            g.p.b.f.a((Object) linearLayout, "bottomNav");
            linearLayout.setVisibility(8);
            EditText editText = (EditText) h(animebestapp.com.a.etSearch);
            g.p.b.f.a((Object) editText, "etSearch");
            editText.setVisibility(0);
            ((EditText) h(animebestapp.com.a.etSearch)).setText("");
            imageButton = (ImageButton) h(animebestapp.com.a.btnSearch);
            i2 = R.drawable.ic_back;
        } else {
            ImageButton imageButton3 = (ImageButton) h(animebestapp.com.a.btnRefresh);
            g.p.b.f.a((Object) imageButton3, "btnRefresh");
            imageButton3.setVisibility(0);
            TextView textView2 = (TextView) h(animebestapp.com.a.tvTitle);
            g.p.b.f.a((Object) textView2, "tvTitle");
            textView2.setVisibility(0);
            EditText editText2 = (EditText) h(animebestapp.com.a.etSearch);
            g.p.b.f.a((Object) editText2, "etSearch");
            editText2.setVisibility(8);
            ImageButton imageButton4 = (ImageButton) h(animebestapp.com.a.btnClear);
            g.p.b.f.a((Object) imageButton4, "btnClear");
            imageButton4.setVisibility(8);
            LinearLayout linearLayout2 = (LinearLayout) h(animebestapp.com.a.bottomNav);
            g.p.b.f.a((Object) linearLayout2, "bottomNav");
            linearLayout2.setVisibility(0);
            imageButton = (ImageButton) h(animebestapp.com.a.btnSearch);
            i2 = R.drawable.ic_search;
        }
        imageButton.setImageResource(i2);
    }

    @Override // animebestapp.com.ui.nav.g
    public void e() {
        FirebaseStorage firebaseStorage = FirebaseStorage.getInstance();
        g.p.b.f.a((Object) firebaseStorage, "FirebaseStorage.getInstance()");
        StorageReference storageReferenceChild = firebaseStorage.getReference().child("info.json");
        g.p.b.f.a((Object) storageReferenceChild, "storageRef.reference.child(\"info.json\")");
        storageReferenceChild.getBytes(z).addOnSuccessListener(new e()).addOnFailureListener(f.f1862a);
    }

    @Override // animebestapp.com.ui.nav.g
    public void g() {
    }

    public final void g(String str) {
        Intent intent;
        g.p.b.f.b(str, "path");
        if (Build.VERSION.SDK_INT >= 24) {
            intent = new Intent("android.intent.action.VIEW");
            String stringExtra = intent.getStringExtra("android.intent.extra.INSTALLER_PACKAGE_NAME");
            if (stringExtra != null) {
                intent.putExtra("android.intent.extra.INSTALLER_PACKAGE_NAME", stringExtra);
            }
            Context applicationContext = getApplicationContext();
            g.p.b.f.a((Object) applicationContext, "applicationContext");
            Uri uriA = FileProvider.a(this, applicationContext.getPackageName(), new File(str));
            g.p.b.f.a((Object) uriA, "FileProvider.getUriForFi….packageName, File(path))");
            intent.setDataAndType(uriA, "application/vnd.android.package-archive");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.addFlags(1);
        } else {
            intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        startActivity(intent);
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.u == null) {
            this.u = new HashMap();
        }
        View view = (View) this.u.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.u.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    public final void h(String str) {
        g.p.b.f.b(str, "urlApk");
        w = j(str).b(e.a.b0.b.b()).a(e.a.u.b.a.a()).a(new p(), q.f1879a, new r());
    }

    public final void i(int i2) {
        animebestapp.com.ui.nav.c cVar = y;
        if (cVar != null) {
            cVar.a(i2);
        }
    }

    public final void i(String str) {
        b.k.a.d dVarA;
        b.k.a.o oVarA;
        String str2;
        if (str == null) {
            return;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != -1763841736) {
            if (iHashCode != 782414387) {
                if (iHashCode != 2093302395 || !str.equals("nav_home")) {
                    return;
                }
                p().a((String) null, 1);
                dVarA = animebestapp.com.ui.nav.h.c.e.a.l.a();
                ((TextView) h(animebestapp.com.a.tvTitle)).setText(R.string.app_name);
                oVarA = p().a();
                oVarA.a((String) null);
                str2 = "list";
            } else {
                if (!str.equals("nav_schedule")) {
                    return;
                }
                p().a((String) null, 1);
                dVarA = animebestapp.com.ui.nav.h.d.f.a.f2071g.a();
                ((TextView) h(animebestapp.com.a.tvTitle)).setText(R.string.schedule);
                oVarA = p().a();
                oVarA.a((String) null);
                str2 = "schedule";
            }
        } else {
            if (!str.equals("nav_favorite")) {
                return;
            }
            p().a((String) null, 1);
            dVarA = animebestapp.com.ui.nav.h.b.e.a.f1990g.a();
            ((TextView) h(animebestapp.com.a.tvTitle)).setText(R.string.favorite);
            oVarA = p().a();
            oVarA.a((String) null);
            str2 = "favorite";
        }
        oVarA.b(R.id.frame, dVarA, str2);
        oVarA.a();
    }

    public final e.a.h<Integer> j(String str) {
        g.p.b.f.b(str, "urlApk");
        BufferedInputStream bufferedInputStream = v;
        if (bufferedInputStream != null) {
            try {
                if (bufferedInputStream == null) {
                    g.p.b.f.a();
                    throw null;
                }
                bufferedInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        e.a.v.b bVar = w;
        if (bVar != null) {
            bVar.b();
        }
        e.a.h<Integer> hVarA = e.a.h.a(new z(str));
        g.p.b.f.a((Object) hVarA, "Observable.create<Int> {…)\n            }\n        }");
        return hVarA;
    }

    public final void j() {
        ((DrawerLayout) h(animebestapp.com.a.drawerLayout)).f(3);
    }

    @Override // animebestapp.com.ui.nav.g
    public void k() {
        View headerView = ((SlideMenuView) h(animebestapp.com.a.navMenu)).getHeaderView(0);
        ((EditText) headerView.findViewById(animebestapp.com.a.etLogin)).addTextChangedListener(new j(headerView));
        ((TextInputEditText) headerView.findViewById(animebestapp.com.a.etPass)).addTextChangedListener(new k(headerView));
        ((Button) headerView.findViewById(animebestapp.com.a.btnReg)).setOnClickListener(new l());
        ((Button) headerView.findViewById(animebestapp.com.a.btnEnter)).setOnClickListener(new m(headerView));
        ((TextView) headerView.findViewById(animebestapp.com.a.btnForgotPass)).setOnClickListener(new n());
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.e l() {
        return new animebestapp.com.ui.nav.e();
    }

    @Override // animebestapp.com.ui.a.a, b.k.a.e, android.app.Activity
    public void onBackPressed() {
        if (((DrawerLayout) h(animebestapp.com.a.drawerLayout)).e(8388611)) {
            ((DrawerLayout) h(animebestapp.com.a.drawerLayout)).a(8388611);
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    @android.annotation.SuppressLint({"RestrictedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onCreate(android.os.Bundle r4) {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.nav.NavActivity.onCreate(android.os.Bundle):void");
    }

    @Override // c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        y = null;
    }

    @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        g.p.b.f.b(menuItem, "item");
        return true;
    }

    @Override // c.b.a.c.a, b.k.a.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        ((animebestapp.com.ui.nav.e) this.r).a(false);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // c.b.a.c.a, b.k.a.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        androidx.appcompat.app.f.j();
        ((animebestapp.com.ui.nav.e) this.r).a(true);
    }

    public final File y() {
        return Build.VERSION.SDK_INT >= 24 ? new File(getFilesDir(), "temp") : new File(Environment.getExternalStorageDirectory(), "animebest.com/temp");
    }

    public final void z() {
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) h(animebestapp.com.a.btnBottomSchedule);
        g.p.b.f.a((Object) appCompatImageButton, "btnBottomSchedule");
        appCompatImageButton.setActivated(true);
        AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) h(animebestapp.com.a.btnBottomHome);
        g.p.b.f.a((Object) appCompatImageButton2, "btnBottomHome");
        appCompatImageButton2.setActivated(false);
        AppCompatImageButton appCompatImageButton3 = (AppCompatImageButton) h(animebestapp.com.a.btnBottomFavorites);
        g.p.b.f.a((Object) appCompatImageButton3, "btnBottomFavorites");
        appCompatImageButton3.setActivated(false);
        i("nav_schedule");
    }
}
