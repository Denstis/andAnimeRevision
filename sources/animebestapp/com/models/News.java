package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import g.j;
import g.s.n;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class News implements d {

    @SerializedName("category")
    private String category;

    @SerializedName("descr")
    private final String descr;

    @SerializedName("full_story")
    private final String full_story;

    @SerializedName(TtmlNode.ATTR_ID)
    private final long id;

    @SerializedName("short_story")
    private final String short_story;

    @SerializedName("title")
    private final String title;

    @SerializedName("xfields")
    private final NewsXFields xfields;

    public News(long j2, String str, String str2, String str3, String str4, NewsXFields newsXFields, String str5) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "descr");
        g.p.b.f.b(str3, "short_story");
        g.p.b.f.b(str4, "full_story");
        this.id = j2;
        this.title = str;
        this.descr = str2;
        this.short_story = str3;
        this.full_story = str4;
        this.xfields = newsXFields;
        this.category = str5;
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.descr;
    }

    public final String component4() {
        return this.short_story;
    }

    public final String component5() {
        return this.full_story;
    }

    public final NewsXFields component6() {
        return this.xfields;
    }

    public final String component7() {
        return this.category;
    }

    public final News copy(long j2, String str, String str2, String str3, String str4, NewsXFields newsXFields, String str5) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "descr");
        g.p.b.f.b(str3, "short_story");
        g.p.b.f.b(str4, "full_story");
        return new News(j2, str, str2, str3, str4, newsXFields, str5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof News) {
                News news = (News) obj;
                if (!(this.id == news.id) || !g.p.b.f.a((Object) this.title, (Object) news.title) || !g.p.b.f.a((Object) this.descr, (Object) news.descr) || !g.p.b.f.a((Object) this.short_story, (Object) news.short_story) || !g.p.b.f.a((Object) this.full_story, (Object) news.full_story) || !g.p.b.f.a(this.xfields, news.xfields) || !g.p.b.f.a((Object) this.category, (Object) news.category)) {
                }
            }
            return false;
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getDescr() {
        return this.descr;
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
            int iB = n.b((CharSequence) this.short_story, "src=\"", 0, false, 6, (Object) null) + 5;
            String str = this.short_story;
            int iA = n.a((CharSequence) this.short_story, "\"", iB, false, 4, (Object) null);
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

    public final String getPosterFull() {
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

    public final String getShort_story() {
        return this.short_story;
    }

    public final String getTitle() {
        return this.title;
    }

    public final NewsXFields getXfields() {
        return this.xfields;
    }

    public int hashCode() {
        long j2 = this.id;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.title;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.descr;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.short_story;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.full_story;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        NewsXFields newsXFields = this.xfields;
        int iHashCode5 = (iHashCode4 + (newsXFields != null ? newsXFields.hashCode() : 0)) * 31;
        String str5 = this.category;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public String toString() {
        return "News(id=" + this.id + ", title=" + this.title + ", descr=" + this.descr + ", short_story=" + this.short_story + ", full_story=" + this.full_story + ", xfields=" + this.xfields + ", category=" + this.category + ")";
    }
}
