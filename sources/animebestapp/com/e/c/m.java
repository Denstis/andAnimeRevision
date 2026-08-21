package animebestapp.com.e.c;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    @SerializedName("approve")
    private final int approve;

    @SerializedName("category")
    private final String category;

    @SerializedName("hash")
    private final String hash;

    @SerializedName("limit")
    private final int limit;

    @SerializedName(FirebaseAnalytics.Param.METHOD)
    private final String method;

    @SerializedName(TtmlNode.START)
    private final int offset;

    @SerializedName("order")
    private final String order;

    @SerializedName("sort")
    private final String sort;

    @SerializedName("where")
    private final String[] where;

    public m() {
        this(null, null, 0, 0, null, null, 0, null, null, 511, null);
    }

    public m(String str, String str2, int i2, int i3, String str3, String str4, int i4, String str5, String[] strArr) {
        g.p.b.f.b(str, "hash");
        g.p.b.f.b(str2, FirebaseAnalytics.Param.METHOD);
        g.p.b.f.b(strArr, "where");
        this.hash = str;
        this.method = str2;
        this.offset = i2;
        this.limit = i3;
        this.category = str3;
        this.sort = str4;
        this.approve = i4;
        this.order = str5;
        this.where = strArr;
    }

    public /* synthetic */ m(String str, String str2, int i2, int i3, String str3, String str4, int i4, String str5, String[] strArr, int i5, g.p.b.d dVar) {
        this((i5 & 1) != 0 ? "cxbthdf3234ss1d1ssav21sd21sv12f3" : str, (i5 & 2) != 0 ? "getPostList" : str2, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) != 0 ? 5 : i3, (i5 & 16) != 0 ? null : str3, (i5 & 32) != 0 ? "date" : str4, (i5 & 64) != 0 ? 1 : i4, (i5 & 128) == 0 ? str5 : null, (i5 & 256) != 0 ? new String[0] : strArr);
    }

    public final String component1() {
        return this.hash;
    }

    public final String component2() {
        return this.method;
    }

    public final int component3() {
        return this.offset;
    }

    public final int component4() {
        return this.limit;
    }

    public final String component5() {
        return this.category;
    }

    public final String component6() {
        return this.sort;
    }

    public final int component7() {
        return this.approve;
    }

    public final String component8() {
        return this.order;
    }

    public final String[] component9() {
        return this.where;
    }

    public final m copy(String str, String str2, int i2, int i3, String str3, String str4, int i4, String str5, String[] strArr) {
        g.p.b.f.b(str, "hash");
        g.p.b.f.b(str2, FirebaseAnalytics.Param.METHOD);
        g.p.b.f.b(strArr, "where");
        return new m(str, str2, i2, i3, str3, str4, i4, str5, strArr);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof m) {
                m mVar = (m) obj;
                if (g.p.b.f.a((Object) this.hash, (Object) mVar.hash) && g.p.b.f.a((Object) this.method, (Object) mVar.method)) {
                    if (this.offset == mVar.offset) {
                        if ((this.limit == mVar.limit) && g.p.b.f.a((Object) this.category, (Object) mVar.category) && g.p.b.f.a((Object) this.sort, (Object) mVar.sort)) {
                            if (!(this.approve == mVar.approve) || !g.p.b.f.a((Object) this.order, (Object) mVar.order) || !g.p.b.f.a(this.where, mVar.where)) {
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getApprove() {
        return this.approve;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getHash() {
        return this.hash;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final String getMethod() {
        return this.method;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final String getOrder() {
        return this.order;
    }

    public final String getSort() {
        return this.sort;
    }

    public final String[] getWhere() {
        return this.where;
    }

    public int hashCode() {
        String str = this.hash;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.method;
        int iHashCode2 = (((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.offset) * 31) + this.limit) * 31;
        String str3 = this.category;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.sort;
        int iHashCode4 = (((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.approve) * 31;
        String str5 = this.order;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String[] strArr = this.where;
        return iHashCode5 + (strArr != null ? Arrays.hashCode(strArr) : 0);
    }

    public String toString() {
        return "PostRequest(hash=" + this.hash + ", method=" + this.method + ", offset=" + this.offset + ", limit=" + this.limit + ", category=" + this.category + ", sort=" + this.sort + ", approve=" + this.approve + ", order=" + this.order + ", where=" + Arrays.toString(this.where) + ")";
    }
}
