package animebestapp.com.ui.news;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import animebestapp.com.R;
import animebestapp.com.models.News;
import animebestapp.com.models.NewsXFields;
import animebestapp.com.ui.comments.CommentsActivity;
import c.a.a.c;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import g.p.b.f;
import g.s.m;
import g.s.n;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class NewsDetailActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.news.b, animebestapp.com.ui.news.a> implements animebestapp.com.ui.news.b {
    private News t;
    private HashMap u;

    public static final class a extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ URLSpan f2095b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ NewsDetailActivity f2096c;

        a(URLSpan uRLSpan, SpannableStringBuilder spannableStringBuilder, NewsDetailActivity newsDetailActivity) {
            this.f2095b = uRLSpan;
            this.f2096c = newsDetailActivity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            f.b(view, "widget");
            URLSpan uRLSpan = this.f2095b;
            f.a((Object) uRLSpan, "it");
            String url = uRLSpan.getURL();
            f.a((Object) url, "it.url");
            String strA = m.a(m.a(url, "\"", "", false, 4, (Object) null), "\\", "", false, 4, (Object) null);
            Log.d("NewsDetailActivity", "url " + strA);
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strA));
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                this.f2096c.startActivity(intent);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NewsDetailActivity.this.finish();
        }
    }

    private final void a(News news) {
        TextView textView = (TextView) h(animebestapp.com.a.tvTitle);
        f.a((Object) textView, "tvTitle");
        textView.setText(news.getTitle());
        c.a((ImageView) h(animebestapp.com.a.ivPoster)).a(news.getPosterFull()).a((ImageView) h(animebestapp.com.a.ivPoster));
        ((TextView) h(animebestapp.com.a.tvStory)).setText(i(h(news.getFull_story())));
        TextView textView2 = (TextView) h(animebestapp.com.a.tvStory);
        f.a((Object) textView2, "tvStory");
        a(textView2);
        NewsXFields xfields = news.getXfields();
        if (xfields != null) {
            LinearLayout linearLayout = (LinearLayout) h(animebestapp.com.a.llLinkYoutube);
            f.a((Object) linearLayout, "llLinkYoutube");
            linearLayout.setVisibility(0);
            TextView textView3 = (TextView) h(animebestapp.com.a.tvLinkYoutube);
            f.a((Object) textView3, "tvLinkYoutube");
            textView3.setText(xfields.getVideonew());
            String new1 = xfields.getNew1();
            if (new1 != null) {
                String strG = g(new1);
                LinearLayout linearLayout2 = (LinearLayout) h(animebestapp.com.a.llNews1);
                f.a((Object) linearLayout2, "llNews1");
                linearLayout2.setVisibility(0);
                c.a((ImageView) h(animebestapp.com.a.ivNews1)).a(strG).a((ImageView) h(animebestapp.com.a.ivNews1));
                TextView textView4 = (TextView) h(animebestapp.com.a.tvNews1);
                f.a((Object) textView4, "tvNews1");
                textView4.setText(i(h(new1)));
                TextView textView5 = (TextView) h(animebestapp.com.a.tvNews1);
                f.a((Object) textView5, "tvNews1");
                a(textView5);
            }
            String new2 = xfields.getNew2();
            if (new2 != null) {
                String strG2 = g(new2);
                LinearLayout linearLayout3 = (LinearLayout) h(animebestapp.com.a.llNews2);
                f.a((Object) linearLayout3, "llNews2");
                linearLayout3.setVisibility(0);
                c.a((ImageView) h(animebestapp.com.a.ivNews2)).a(strG2).a((ImageView) h(animebestapp.com.a.ivNews2));
                TextView textView6 = (TextView) h(animebestapp.com.a.tvNews2);
                f.a((Object) textView6, "tvNews2");
                textView6.setText(i(h(new2)));
                TextView textView7 = (TextView) h(animebestapp.com.a.tvNews2);
                f.a((Object) textView7, "tvNews2");
                a(textView7);
            }
            String new3 = xfields.getNew3();
            if (new3 != null) {
                String strG3 = g(new3);
                LinearLayout linearLayout4 = (LinearLayout) h(animebestapp.com.a.llNews3);
                f.a((Object) linearLayout4, "llNews3");
                linearLayout4.setVisibility(0);
                c.a((ImageView) h(animebestapp.com.a.ivNews3)).a(strG3).a((ImageView) h(animebestapp.com.a.ivNews3));
                TextView textView8 = (TextView) h(animebestapp.com.a.tvNews3);
                f.a((Object) textView8, "tvNews3");
                textView8.setText(i(h(new3)));
                TextView textView9 = (TextView) h(animebestapp.com.a.tvNews3);
                f.a((Object) textView9, "tvNews3");
                a(textView9);
            }
            String new4 = xfields.getNew4();
            if (new4 != null) {
                String strG4 = g(new4);
                LinearLayout linearLayout5 = (LinearLayout) h(animebestapp.com.a.llNews4);
                f.a((Object) linearLayout5, "llNews4");
                linearLayout5.setVisibility(0);
                c.a((ImageView) h(animebestapp.com.a.ivNews4)).a(strG4).a((ImageView) h(animebestapp.com.a.ivNews4));
                TextView textView10 = (TextView) h(animebestapp.com.a.tvNews4);
                f.a((Object) textView10, "tvNews4");
                textView10.setText(i(h(new4)));
                TextView textView11 = (TextView) h(animebestapp.com.a.tvNews4);
                f.a((Object) textView11, "tvNews4");
                a(textView11);
            }
            String new5 = xfields.getNew5();
            if (new5 != null) {
                String strG5 = g(new5);
                LinearLayout linearLayout6 = (LinearLayout) h(animebestapp.com.a.llNews5);
                f.a((Object) linearLayout6, "llNews5");
                linearLayout6.setVisibility(0);
                c.a((ImageView) h(animebestapp.com.a.ivNews5)).a(strG5).a((ImageView) h(animebestapp.com.a.ivNews5));
                TextView textView12 = (TextView) h(animebestapp.com.a.tvNews5);
                f.a((Object) textView12, "tvNews5");
                textView12.setText(i(h(new5)));
                TextView textView13 = (TextView) h(animebestapp.com.a.tvNews5);
                f.a((Object) textView13, "tvNews5");
                a(textView13);
            }
        }
        Log.d("NewsDetailActivity", "fullStory: " + news.getFull_story());
    }

    private final String h(String str) {
        int iA;
        int length;
        if (n.a((CharSequence) str, "<!--dle_image_end-->", 0, false, 6, (Object) null) > 0) {
            iA = n.a((CharSequence) str, "<!--dle_image_end-->", 0, false, 6, (Object) null);
            length = str.length();
            if (str == null) {
                throw new j("null cannot be cast to non-null type java.lang.String");
            }
        } else {
            if (n.a((CharSequence) str, "<!--MEnd-->", 0, false, 6, (Object) null) <= 0) {
                return str;
            }
            iA = n.a((CharSequence) str, "<!--MEnd-->", 0, false, 6, (Object) null);
            length = str.length();
            if (str == null) {
                throw new j("null cannot be cast to non-null type java.lang.String");
            }
        }
        String strSubstring = str.substring(iA, length);
        f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private final Spannable i(String str) {
        Spanned spannedFromHtml;
        if (Build.VERSION.SDK_INT >= 24) {
            spannedFromHtml = Html.fromHtml(str, 0);
            if (spannedFromHtml == null) {
                throw new j("null cannot be cast to non-null type android.text.SpannableStringBuilder");
            }
        } else {
            spannedFromHtml = Html.fromHtml(str);
            if (spannedFromHtml == null) {
                throw new j("null cannot be cast to non-null type android.text.SpannableStringBuilder");
            }
        }
        return (SpannableStringBuilder) spannedFromHtml;
    }

    public final void a(TextView textView) {
        f.b(textView, "receiver$0");
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(textView.getText());
        Object[] spans = spannableStringBuilderValueOf.getSpans(0, spannableStringBuilderValueOf.length(), URLSpan.class);
        f.a((Object) spans, "getSpans(0, length, URLSpan::class.java)");
        for (Object obj : spans) {
            URLSpan uRLSpan = (URLSpan) obj;
            spannableStringBuilderValueOf.setSpan(new a(uRLSpan, spannableStringBuilderValueOf, this), spannableStringBuilderValueOf.getSpanStart(uRLSpan), spannableStringBuilderValueOf.getSpanEnd(uRLSpan), 17);
            spannableStringBuilderValueOf.removeSpan(uRLSpan);
        }
        textView.setText(spannableStringBuilderValueOf);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        Linkify.addLinks(textView, 1);
    }

    public final String g(String str) {
        f.b(str, "html");
        try {
            int iB = n.b((CharSequence) str, "src=\"", 0, false, 6, (Object) null) + 5;
            String strSubstring = str.substring(iB, n.a((CharSequence) str, "\"", iB, false, 4, (Object) null));
            f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (!n.a((CharSequence) strSubstring, (CharSequence) "http", false, 2, (Object) null)) {
                strSubstring = "https:" + strSubstring;
            }
            return strSubstring;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
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

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.news.a l() {
        return new animebestapp.com.ui.news.a();
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.news_detail_activity);
        this.t = (News) new Gson().fromJson(getIntent().getStringExtra(FirebaseAnalytics.Param.CONTENT), News.class);
        StringBuilder sb = new StringBuilder();
        sb.append("id: ");
        News news = this.t;
        if (news == null) {
            f.a();
            throw null;
        }
        sb.append(news.getId());
        Log.d("NewsDetailActivity", sb.toString());
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
        ((Toolbar) h(animebestapp.com.a.toolbar)).setNavigationOnClickListener(new b());
        News news2 = this.t;
        if (news2 != null) {
            a(news2);
        } else {
            f.a();
            throw null;
        }
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
        menuItemFindItem.setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        News news;
        f.b(menuItem, "item");
        if (menuItem.getItemId() == R.id.m_comment && (news = this.t) != null) {
            Log.d("NewsDetailActivity", "id: " + news.getId());
            startActivity(new Intent(this, (Class<?>) CommentsActivity.class).putExtra(TtmlNode.ATTR_ID, String.valueOf(news.getId())));
        }
        return false;
    }
}
