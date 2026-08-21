package animebestapp.com.ui.info;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.XFields;
import animebestapp.com.ui.a.e;
import animebestapp.com.ui.comments.CommentsActivity;
import b.k.a.i;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.p.b.f;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class InfoActivity extends animebestapp.com.ui.a.a<c, animebestapp.com.ui.info.a> implements c {
    private e t;
    private MenuItem u;
    private HashMap v;

    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            InfoActivity.this.finish();
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Anime f1701c;

        b(Anime anime) {
            this.f1701c = anime;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                Object[] objArr = {String.valueOf(this.f1701c.getId())};
                String str = String.format("https://animeapp1.animebesst.org/anime3/%s-1.html", Arrays.copyOf(objArr, objArr.length));
                f.a((Object) str, "java.lang.String.format(this, *args)");
                InfoActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // animebestapp.com.ui.info.c
    public void a(boolean z) {
    }

    @Override // animebestapp.com.ui.info.c
    public void b(Anime anime) {
        f.b(anime, "anime");
        i iVarP = p();
        f.a((Object) iVarP, "supportFragmentManager");
        this.t = new e(iVarP);
        TextView textView = (TextView) h(animebestapp.com.a.tvTitle);
        f.a((Object) textView, "tvTitle");
        textView.setText(anime.getTitle());
        e eVar = this.t;
        if (eVar == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.info.e.a.b bVarA = animebestapp.com.ui.info.e.a.b.f1733f.a(anime);
        String string = getString(R.string.full_info);
        f.a((Object) string, "getString(R.string.full_info)");
        eVar.a(bVarA, string);
        XFields xfields = anime.getXfields();
        if ((xfields != null ? xfields.getSeries_list() : null) != null) {
            e eVar2 = this.t;
            if (eVar2 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.info.e.b.a aVarA = animebestapp.com.ui.info.e.b.a.f1769f.a(anime);
            String string2 = getString(R.string.online_see);
            f.a((Object) string2, "getString(R.string.online_see)");
            eVar2.a(aVarA, string2);
        }
        ((Button) h(animebestapp.com.a.btnOpenSite)).setOnClickListener(new b(anime));
        ViewPager viewPager = (ViewPager) h(animebestapp.com.a.viewpager);
        f.a((Object) viewPager, "viewpager");
        e eVar3 = this.t;
        if (eVar3 == null) {
            f.c("adapter");
            throw null;
        }
        viewPager.setAdapter(eVar3);
        ((TabLayout) h(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) h(animebestapp.com.a.viewpager));
        ((TabLayout) h(animebestapp.com.a.tabs)).invalidate();
    }

    @Override // animebestapp.com.ui.info.c
    public void d() {
        MenuItem menuItem = this.u;
        if (menuItem == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem = menuItem.getSubMenu().findItem(R.id.nav_delete);
        f.a((Object) menuItemFindItem, "mFavorite.subMenu.findItem(R.id.nav_delete)");
        menuItemFindItem.setVisible(false);
        MenuItem menuItem2 = this.u;
        if (menuItem2 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem2 = menuItem2.getSubMenu().findItem(R.id.nav_viewed);
        f.a((Object) menuItemFindItem2, "mFavorite.subMenu.findItem(R.id.nav_viewed)");
        menuItemFindItem2.setVisible(false);
        MenuItem menuItem3 = this.u;
        if (menuItem3 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem3 = menuItem3.getSubMenu().findItem(R.id.nav_snoozed);
        f.a((Object) menuItemFindItem3, "mFavorite.subMenu.findItem(R.id.nav_snoozed)");
        menuItemFindItem3.setVisible(false);
        MenuItem menuItem4 = this.u;
        if (menuItem4 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem4 = menuItem4.getSubMenu().findItem(R.id.nav_abandoned);
        f.a((Object) menuItemFindItem4, "mFavorite.subMenu.findItem(R.id.nav_abandoned)");
        menuItemFindItem4.setVisible(false);
        MenuItem menuItem5 = this.u;
        if (menuItem5 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem5 = menuItem5.getSubMenu().findItem(R.id.nav_scheduled);
        f.a((Object) menuItemFindItem5, "mFavorite.subMenu.findItem(R.id.nav_scheduled)");
        menuItemFindItem5.setVisible(false);
        MenuItem menuItem6 = this.u;
        if (menuItem6 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem6 = menuItem6.getSubMenu().findItem(R.id.nav_reviewing);
        f.a((Object) menuItemFindItem6, "mFavorite.subMenu.findItem(R.id.nav_reviewing)");
        menuItemFindItem6.setVisible(false);
        MenuItem menuItem7 = this.u;
        if (menuItem7 == null) {
            f.c("mFavorite");
            throw null;
        }
        MenuItem menuItemFindItem7 = menuItem7.getSubMenu().findItem(R.id.nav_look);
        f.a((Object) menuItemFindItem7, "mFavorite.subMenu.findItem(R.id.nav_look)");
        menuItemFindItem7.setVisible(false);
        c.a aVar = new c.a(this, R.style.AppThemeDialog);
        aVar.a(getString(R.string.need_auth_add_favorites));
        aVar.a(getString(R.string.cancel), (DialogInterface.OnClickListener) null);
        aVar.c();
    }

    @Override // animebestapp.com.ui.info.c
    public void d(Anime anime) {
        f.b(anime, "anime");
        startActivity(new Intent(this, (Class<?>) CommentsActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson(anime)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011f  */
    @Override // animebestapp.com.ui.info.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.info.InfoActivity.f(java.lang.String):void");
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.v == null) {
            this.v = new HashMap();
        }
        View view = (View) this.v.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.v.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.info.a l() {
        Object objFromJson = new Gson().fromJson(getIntent().getStringExtra(FirebaseAnalytics.Param.CONTENT), (Class<Object>) Anime.class);
        f.a(objFromJson, "Gson().fromJson(intent.g…TENT), Anime::class.java)");
        return new animebestapp.com.ui.info.a((Anime) objFromJson);
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_info);
        ((AdView) h(animebestapp.com.a.adView)).loadAd(new AdRequest.Builder().build());
        a((Toolbar) h(animebestapp.com.a.toolbar));
        androidx.appcompat.app.a aVarU = u();
        if (aVarU == null) {
            f.a();
            throw null;
        }
        aVarU.d(true);
        androidx.appcompat.app.a aVarU2 = u();
        if (aVarU2 == null) {
            f.a();
            throw null;
        }
        aVarU2.e(true);
        ((Toolbar) h(animebestapp.com.a.toolbar)).setNavigationOnClickListener(new a());
        ((animebestapp.com.ui.info.a) this.r).i();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.nav_favorite, menu);
        if (menu == null) {
            f.a();
            throw null;
        }
        MenuItem menuItemFindItem = menu.findItem(R.id.m_favorite);
        f.a((Object) menuItemFindItem, "menu!!.findItem(R.id.m_favorite)");
        this.u = menuItemFindItem;
        ((animebestapp.com.ui.info.a) this.r).e();
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        animebestapp.com.ui.info.a aVar;
        String str;
        f.b(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.m_comment) {
            ((animebestapp.com.ui.info.a) this.r).h();
            return false;
        }
        if (itemId == R.id.nav_snoozed) {
            aVar = (animebestapp.com.ui.info.a) this.r;
            str = "3";
        } else if (itemId != R.id.nav_viewed) {
            switch (itemId) {
                case R.id.nav_abandoned /* 2131230984 */:
                    aVar = (animebestapp.com.ui.info.a) this.r;
                    str = "2";
                    break;
                case R.id.nav_delete /* 2131230985 */:
                    aVar = (animebestapp.com.ui.info.a) this.r;
                    str = "0";
                    break;
                case R.id.nav_look /* 2131230986 */:
                    aVar = (animebestapp.com.ui.info.a) this.r;
                    str = "6";
                    break;
                case R.id.nav_reviewing /* 2131230987 */:
                    aVar = (animebestapp.com.ui.info.a) this.r;
                    str = "5";
                    break;
                case R.id.nav_scheduled /* 2131230988 */:
                    aVar = (animebestapp.com.ui.info.a) this.r;
                    str = "4";
                    break;
                default:
                    ((animebestapp.com.ui.info.a) this.r).f();
                    return false;
            }
        } else {
            aVar = (animebestapp.com.ui.info.a) this.r;
            str = "1";
        }
        aVar.a(str);
        return false;
    }
}
