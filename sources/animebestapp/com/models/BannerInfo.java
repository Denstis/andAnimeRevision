package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class BannerInfo {

    @SerializedName("btn")
    private final String btn;

    @SerializedName("title")
    private final String title;

    @SerializedName("title_share")
    private final String titleShare;

    @SerializedName(ImagesContract.URL)
    private final String url;

    public BannerInfo(String str, String str2, String str3, String str4) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "btn");
        g.p.b.f.b(str3, ImagesContract.URL);
        g.p.b.f.b(str4, "titleShare");
        this.title = str;
        this.btn = str2;
        this.url = str3;
        this.titleShare = str4;
    }

    public static /* synthetic */ BannerInfo copy$default(BannerInfo bannerInfo, String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = bannerInfo.title;
        }
        if ((i2 & 2) != 0) {
            str2 = bannerInfo.btn;
        }
        if ((i2 & 4) != 0) {
            str3 = bannerInfo.url;
        }
        if ((i2 & 8) != 0) {
            str4 = bannerInfo.titleShare;
        }
        return bannerInfo.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.btn;
    }

    public final String component3() {
        return this.url;
    }

    public final String component4() {
        return this.titleShare;
    }

    public final BannerInfo copy(String str, String str2, String str3, String str4) {
        g.p.b.f.b(str, "title");
        g.p.b.f.b(str2, "btn");
        g.p.b.f.b(str3, ImagesContract.URL);
        g.p.b.f.b(str4, "titleShare");
        return new BannerInfo(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BannerInfo)) {
            return false;
        }
        BannerInfo bannerInfo = (BannerInfo) obj;
        return g.p.b.f.a((Object) this.title, (Object) bannerInfo.title) && g.p.b.f.a((Object) this.btn, (Object) bannerInfo.btn) && g.p.b.f.a((Object) this.url, (Object) bannerInfo.url) && g.p.b.f.a((Object) this.titleShare, (Object) bannerInfo.titleShare);
    }

    public final String getBtn() {
        return this.btn;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTitleShare() {
        return this.titleShare;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.btn;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.url;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.titleShare;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "BannerInfo(title=" + this.title + ", btn=" + this.btn + ", url=" + this.url + ", titleShare=" + this.titleShare + ")";
    }
}
