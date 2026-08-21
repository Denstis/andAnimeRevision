package animebestapp.com.ui.nav;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("title")
    private final String f1909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName(TtmlNode.TAG_IMAGE)
    private final String f1910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("message")
    private final String f1911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("btnTextRight")
    private final String f1912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("btnTextLeft")
    private final String f1913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName("actionRight")
    private final String f1914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @SerializedName("actionLeft")
    private final String f1915g;

    public final String a() {
        return this.f1915g;
    }

    public final String b() {
        return this.f1914f;
    }

    public final String c() {
        return this.f1913e;
    }

    public final String d() {
        return this.f1912d;
    }

    public final String e() {
        return this.f1910b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return g.p.b.f.a((Object) this.f1909a, (Object) dVar.f1909a) && g.p.b.f.a((Object) this.f1910b, (Object) dVar.f1910b) && g.p.b.f.a((Object) this.f1911c, (Object) dVar.f1911c) && g.p.b.f.a((Object) this.f1912d, (Object) dVar.f1912d) && g.p.b.f.a((Object) this.f1913e, (Object) dVar.f1913e) && g.p.b.f.a((Object) this.f1914f, (Object) dVar.f1914f) && g.p.b.f.a((Object) this.f1915g, (Object) dVar.f1915g);
    }

    public final String f() {
        return this.f1911c;
    }

    public final String g() {
        return this.f1909a;
    }

    public int hashCode() {
        String str = this.f1909a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f1910b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1911c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f1912d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f1913e;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f1914f;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.f1915g;
        return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "Info(title=" + this.f1909a + ", image=" + this.f1910b + ", message=" + this.f1911c + ", btnTextRight=" + this.f1912d + ", btnTextLeft=" + this.f1913e + ", actionRight=" + this.f1914f + ", actionLeft=" + this.f1915g + ")";
    }
}
