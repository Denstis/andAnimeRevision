package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class NewsXFields {

    @SerializedName("new1")
    private final String new1;

    @SerializedName("new2")
    private final String new2;

    @SerializedName("new3")
    private final String new3;

    @SerializedName("new4")
    private final String new4;

    @SerializedName("new5")
    private final String new5;

    @SerializedName("videonew")
    private final String videonew;

    public NewsXFields(String str, String str2, String str3, String str4, String str5, String str6) {
        this.videonew = str;
        this.new1 = str2;
        this.new2 = str3;
        this.new3 = str4;
        this.new4 = str5;
        this.new5 = str6;
    }

    public static /* synthetic */ NewsXFields copy$default(NewsXFields newsXFields, String str, String str2, String str3, String str4, String str5, String str6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = newsXFields.videonew;
        }
        if ((i2 & 2) != 0) {
            str2 = newsXFields.new1;
        }
        String str7 = str2;
        if ((i2 & 4) != 0) {
            str3 = newsXFields.new2;
        }
        String str8 = str3;
        if ((i2 & 8) != 0) {
            str4 = newsXFields.new3;
        }
        String str9 = str4;
        if ((i2 & 16) != 0) {
            str5 = newsXFields.new4;
        }
        String str10 = str5;
        if ((i2 & 32) != 0) {
            str6 = newsXFields.new5;
        }
        return newsXFields.copy(str, str7, str8, str9, str10, str6);
    }

    public final String component1() {
        return this.videonew;
    }

    public final String component2() {
        return this.new1;
    }

    public final String component3() {
        return this.new2;
    }

    public final String component4() {
        return this.new3;
    }

    public final String component5() {
        return this.new4;
    }

    public final String component6() {
        return this.new5;
    }

    public final NewsXFields copy(String str, String str2, String str3, String str4, String str5, String str6) {
        return new NewsXFields(str, str2, str3, str4, str5, str6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewsXFields)) {
            return false;
        }
        NewsXFields newsXFields = (NewsXFields) obj;
        return g.p.b.f.a((Object) this.videonew, (Object) newsXFields.videonew) && g.p.b.f.a((Object) this.new1, (Object) newsXFields.new1) && g.p.b.f.a((Object) this.new2, (Object) newsXFields.new2) && g.p.b.f.a((Object) this.new3, (Object) newsXFields.new3) && g.p.b.f.a((Object) this.new4, (Object) newsXFields.new4) && g.p.b.f.a((Object) this.new5, (Object) newsXFields.new5);
    }

    public final String getNew1() {
        return this.new1;
    }

    public final String getNew2() {
        return this.new2;
    }

    public final String getNew3() {
        return this.new3;
    }

    public final String getNew4() {
        return this.new4;
    }

    public final String getNew5() {
        return this.new5;
    }

    public final String getVideonew() {
        return this.videonew;
    }

    public int hashCode() {
        String str = this.videonew;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.new1;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.new2;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.new3;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.new4;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.new5;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public String toString() {
        return "NewsXFields(videonew=" + this.videonew + ", new1=" + this.new1 + ", new2=" + this.new2 + ", new3=" + this.new3 + ", new4=" + this.new4 + ", new5=" + this.new5 + ")";
    }
}
