package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import g.g;
import g.j;
import g.m.l;
import g.s.n;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Anime implements d {

    @SerializedName("category")
    private String category;

    @SerializedName("full_story")
    private final String full_story;

    @SerializedName(TtmlNode.ATTR_ID)
    private final long id;

    @SerializedName("m_rating")
    private final Object rating;

    @SerializedName("title")
    private final String title;

    @SerializedName("xfields")
    private final XFields xfields;

    public Anime(long j2, String str, String str2, XFields xFields, Object obj, String str3) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "full_story");
        this.id = j2;
        this.title = str;
        this.full_story = str2;
        this.xfields = xFields;
        this.rating = obj;
        this.category = str3;
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.full_story;
    }

    public final XFields component4() {
        return this.xfields;
    }

    public final Object component5() {
        return this.rating;
    }

    public final String component6() {
        return this.category;
    }

    public final Anime copy(long j2, String str, String str2, XFields xFields, Object obj, String str3) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "full_story");
        return new Anime(j2, str, str2, xFields, obj, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Anime) {
                Anime anime = (Anime) obj;
                if (!(this.id == anime.id) || !g.p.b.f.a((Object) this.title, (Object) anime.title) || !g.p.b.f.a((Object) this.full_story, (Object) anime.full_story) || !g.p.b.f.a(this.xfields, anime.xfields) || !g.p.b.f.a(this.rating, anime.rating) || !g.p.b.f.a((Object) this.category, (Object) anime.category)) {
                }
            }
            return false;
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getFull_story() {
        return this.full_story;
    }

    public final long getId() {
        return this.id;
    }

    @Override // animebestapp.com.models.d
    public long getIdModel() {
        return this.id;
    }

    public final String getPoster() {
        try {
            int iB = n.b((CharSequence) this.full_story, "src=\"", 0, false, 6, (Object) null) + 5;
            String str = this.full_story;
            int iA = n.a((CharSequence) this.full_story, "\"", iB, false, 4, (Object) null);
            if (str == null) {
                throw new j("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = str.substring(iB, iA);
            g.p.b.f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (n.a((CharSequence) strSubstring, (CharSequence) "http", false, 2, (Object) null)) {
                return strSubstring;
            }
            return "https:" + strSubstring;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final Object getRating() {
        return this.rating;
    }

    public final List<String> getScreen() {
        XFields xFields;
        ArrayList arrayList = new ArrayList();
        try {
            XFields xFields2 = this.xfields;
            if ((xFields2 != null ? xFields2.getScreen() : null) == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("https://anime-best.com/uploads/screens/med/");
                XFields xFields3 = this.xfields;
                if (xFields3 == null) {
                    g.p.b.f.a();
                    throw null;
                }
                sb.append(xFields3.getScreen1());
                arrayList.add(sb.toString());
                arrayList.add("https://anime-best.com/uploads/screens/med/" + this.xfields.getScreen2());
                arrayList.add("https://anime-best.com/uploads/screens/med/" + this.xfields.getScreen3());
                return arrayList;
            }
            int iA = 0;
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    g.a aVar = g.g.f4365b;
                    xFields = this.xfields;
                } catch (Throwable th) {
                    g.a aVar2 = g.g.f4365b;
                    g.g.a(g.h.a(th));
                }
                if (xFields == null) {
                    g.p.b.f.a();
                    throw null;
                }
                int iA2 = n.a((CharSequence) xFields.getScreen(), "<!--MBegin:", iA, false, 4, (Object) null) + 11;
                XFields xFields4 = this.xfields;
                if (xFields4 == null) {
                    g.p.b.f.a();
                    throw null;
                }
                iA = n.a((CharSequence) xFields4.getScreen(), "|-->", iA2, false, 4, (Object) null);
                XFields xFields5 = this.xfields;
                if (xFields5 == null) {
                    g.p.b.f.a();
                    throw null;
                }
                String screen = xFields5.getScreen();
                if (screen == null) {
                    throw new j("null cannot be cast to non-null type java.lang.String");
                }
                String strSubstring = screen.substring(iA2, iA);
                g.p.b.f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                g.g.a(Boolean.valueOf(arrayList.add(strSubstring)));
            }
            return arrayList;
        } catch (Exception unused) {
            return l.a();
        }
    }

    public final String getTitle() {
        return this.title;
    }

    public final XFields getXfields() {
        return this.xfields;
    }

    public int hashCode() {
        long j2 = this.id;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.title;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.full_story;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        XFields xFields = this.xfields;
        int iHashCode3 = (iHashCode2 + (xFields != null ? xFields.hashCode() : 0)) * 31;
        Object obj = this.rating;
        int iHashCode4 = (iHashCode3 + (obj != null ? obj.hashCode() : 0)) * 31;
        String str3 = this.category;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public String toString() {
        return "id: " + this.id + " full_story: " + this.full_story + " title: " + this.title;
    }
}
