package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class XFields {

    @SerializedName("animelist")
    private final String animelist;

    @SerializedName("bazon")
    private final String bazon;

    @SerializedName("director")
    private final String director;

    @SerializedName("genre")
    private final String genre;

    @SerializedName("kodik")
    private final String kodik;

    @SerializedName("names")
    private final String names;

    @SerializedName("poster")
    private final String poster;

    @SerializedName("screen")
    private final String screen;

    @SerializedName("screen_1")
    private final String screen1;

    @SerializedName("screen_2")
    private final String screen2;

    @SerializedName("screen_3")
    private final String screen3;

    @SerializedName("seria")
    private final String seria;

    @SerializedName("series_list")
    private final LinkedHashMap<String, String> series_list;

    @SerializedName("type")
    private final String type;

    @SerializedName("year")
    private final String year;

    public XFields(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, LinkedHashMap<String, String> linkedHashMap) {
        g.p.b.f.b(str, "names");
        g.p.b.f.b(str4, "poster");
        g.p.b.f.b(str5, "genre");
        g.p.b.f.b(str6, "year");
        g.p.b.f.b(str7, "type");
        g.p.b.f.b(str8, "director");
        g.p.b.f.b(str9, "screen");
        g.p.b.f.b(str11, "screen2");
        g.p.b.f.b(str12, "screen3");
        this.names = str;
        this.kodik = str2;
        this.bazon = str3;
        this.poster = str4;
        this.genre = str5;
        this.year = str6;
        this.type = str7;
        this.director = str8;
        this.screen = str9;
        this.screen1 = str10;
        this.screen2 = str11;
        this.screen3 = str12;
        this.animelist = str13;
        this.seria = str14;
        this.series_list = linkedHashMap;
    }

    public final String component1() {
        return this.names;
    }

    public final String component10() {
        return this.screen1;
    }

    public final String component11() {
        return this.screen2;
    }

    public final String component12() {
        return this.screen3;
    }

    public final String component13() {
        return this.animelist;
    }

    public final String component14() {
        return this.seria;
    }

    public final LinkedHashMap<String, String> component15() {
        return this.series_list;
    }

    public final String component2() {
        return this.kodik;
    }

    public final String component3() {
        return this.bazon;
    }

    public final String component4() {
        return this.poster;
    }

    public final String component5() {
        return this.genre;
    }

    public final String component6() {
        return this.year;
    }

    public final String component7() {
        return this.type;
    }

    public final String component8() {
        return this.director;
    }

    public final String component9() {
        return this.screen;
    }

    public final XFields copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, LinkedHashMap<String, String> linkedHashMap) {
        g.p.b.f.b(str, "names");
        g.p.b.f.b(str4, "poster");
        g.p.b.f.b(str5, "genre");
        g.p.b.f.b(str6, "year");
        g.p.b.f.b(str7, "type");
        g.p.b.f.b(str8, "director");
        g.p.b.f.b(str9, "screen");
        g.p.b.f.b(str11, "screen2");
        g.p.b.f.b(str12, "screen3");
        return new XFields(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, linkedHashMap);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof XFields)) {
            return false;
        }
        XFields xFields = (XFields) obj;
        return g.p.b.f.a((Object) this.names, (Object) xFields.names) && g.p.b.f.a((Object) this.kodik, (Object) xFields.kodik) && g.p.b.f.a((Object) this.bazon, (Object) xFields.bazon) && g.p.b.f.a((Object) this.poster, (Object) xFields.poster) && g.p.b.f.a((Object) this.genre, (Object) xFields.genre) && g.p.b.f.a((Object) this.year, (Object) xFields.year) && g.p.b.f.a((Object) this.type, (Object) xFields.type) && g.p.b.f.a((Object) this.director, (Object) xFields.director) && g.p.b.f.a((Object) this.screen, (Object) xFields.screen) && g.p.b.f.a((Object) this.screen1, (Object) xFields.screen1) && g.p.b.f.a((Object) this.screen2, (Object) xFields.screen2) && g.p.b.f.a((Object) this.screen3, (Object) xFields.screen3) && g.p.b.f.a((Object) this.animelist, (Object) xFields.animelist) && g.p.b.f.a((Object) this.seria, (Object) xFields.seria) && g.p.b.f.a(this.series_list, xFields.series_list);
    }

    public final String getAnimelist() {
        return this.animelist;
    }

    public final String getBazon() {
        return this.bazon;
    }

    public final String getDirector() {
        return this.director;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final String getKodik() {
        return this.kodik;
    }

    public final String getNames() {
        return this.names;
    }

    public final String getPoster() {
        return this.poster;
    }

    public final String getScreen() {
        return this.screen;
    }

    public final String getScreen1() {
        return this.screen1;
    }

    public final String getScreen2() {
        return this.screen2;
    }

    public final String getScreen3() {
        return this.screen3;
    }

    public final String getSeria() {
        return this.seria;
    }

    public final LinkedHashMap<String, String> getSeries_list() {
        return this.series_list;
    }

    public final String getType() {
        return this.type;
    }

    public final String getYear() {
        return this.year;
    }

    public int hashCode() {
        String str = this.names;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.kodik;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.bazon;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.poster;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.genre;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.year;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.type;
        int iHashCode7 = (iHashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.director;
        int iHashCode8 = (iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.screen;
        int iHashCode9 = (iHashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.screen1;
        int iHashCode10 = (iHashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.screen2;
        int iHashCode11 = (iHashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.screen3;
        int iHashCode12 = (iHashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.animelist;
        int iHashCode13 = (iHashCode12 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.seria;
        int iHashCode14 = (iHashCode13 + (str14 != null ? str14.hashCode() : 0)) * 31;
        LinkedHashMap<String, String> linkedHashMap = this.series_list;
        return iHashCode14 + (linkedHashMap != null ? linkedHashMap.hashCode() : 0);
    }

    public String toString() {
        return "XFields(names=" + this.names + ", kodik=" + this.kodik + ", bazon=" + this.bazon + ", poster=" + this.poster + ", genre=" + this.genre + ", year=" + this.year + ", type=" + this.type + ", director=" + this.director + ", screen=" + this.screen + ", screen1=" + this.screen1 + ", screen2=" + this.screen2 + ", screen3=" + this.screen3 + ", animelist=" + this.animelist + ", seria=" + this.seria + ", series_list=" + this.series_list + ")";
    }
}
