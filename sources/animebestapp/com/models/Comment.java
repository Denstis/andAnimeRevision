package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.Scopes;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Comment {

    @SerializedName("approve")
    private final String approve;

    @SerializedName("autor")
    private final String autor;

    @SerializedName("date")
    private final String date;

    @SerializedName(Scopes.EMAIL)
    private final String email;

    @SerializedName("foto")
    private final String foto;

    @SerializedName(TtmlNode.ATTR_ID)
    private final String id;

    @SerializedName("ip")
    private final String ip;

    @SerializedName("is_register")
    private final String isRegister;

    @SerializedName("is_spoiler")
    private final String isSpoiler;

    @SerializedName("parent")
    private final String parent;

    @SerializedName("post_id")
    private final String postId;

    @SerializedName("rating")
    private final String rating;

    @SerializedName(MimeTypes.BASE_TYPE_TEXT)
    private final String text;

    @SerializedName("user_group")
    private final String userGroup;

    @SerializedName("user_id")
    private final String userId;

    @SerializedName("vote_num")
    private final String voteNum;

    public Comment(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        g.p.b.f.b(str2, "isSpoiler");
        g.p.b.f.b(str3, "postId");
        g.p.b.f.b(str4, "userId");
        g.p.b.f.b(str5, "date");
        g.p.b.f.b(str6, "autor");
        g.p.b.f.b(str7, Scopes.EMAIL);
        g.p.b.f.b(str8, MimeTypes.BASE_TYPE_TEXT);
        g.p.b.f.b(str9, "ip");
        g.p.b.f.b(str10, "isRegister");
        g.p.b.f.b(str11, "approve");
        g.p.b.f.b(str12, "rating");
        g.p.b.f.b(str13, "voteNum");
        g.p.b.f.b(str14, "parent");
        g.p.b.f.b(str16, "userGroup");
        this.id = str;
        this.isSpoiler = str2;
        this.postId = str3;
        this.userId = str4;
        this.date = str5;
        this.autor = str6;
        this.email = str7;
        this.text = str8;
        this.ip = str9;
        this.isRegister = str10;
        this.approve = str11;
        this.rating = str12;
        this.voteNum = str13;
        this.parent = str14;
        this.foto = str15;
        this.userGroup = str16;
    }

    public final String component1() {
        return this.id;
    }

    public final String component10() {
        return this.isRegister;
    }

    public final String component11() {
        return this.approve;
    }

    public final String component12() {
        return this.rating;
    }

    public final String component13() {
        return this.voteNum;
    }

    public final String component14() {
        return this.parent;
    }

    public final String component15() {
        return this.foto;
    }

    public final String component16() {
        return this.userGroup;
    }

    public final String component2() {
        return this.isSpoiler;
    }

    public final String component3() {
        return this.postId;
    }

    public final String component4() {
        return this.userId;
    }

    public final String component5() {
        return this.date;
    }

    public final String component6() {
        return this.autor;
    }

    public final String component7() {
        return this.email;
    }

    public final String component8() {
        return this.text;
    }

    public final String component9() {
        return this.ip;
    }

    public final Comment copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        g.p.b.f.b(str2, "isSpoiler");
        g.p.b.f.b(str3, "postId");
        g.p.b.f.b(str4, "userId");
        g.p.b.f.b(str5, "date");
        g.p.b.f.b(str6, "autor");
        g.p.b.f.b(str7, Scopes.EMAIL);
        g.p.b.f.b(str8, MimeTypes.BASE_TYPE_TEXT);
        g.p.b.f.b(str9, "ip");
        g.p.b.f.b(str10, "isRegister");
        g.p.b.f.b(str11, "approve");
        g.p.b.f.b(str12, "rating");
        g.p.b.f.b(str13, "voteNum");
        g.p.b.f.b(str14, "parent");
        g.p.b.f.b(str16, "userGroup");
        return new Comment(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Comment)) {
            return false;
        }
        Comment comment = (Comment) obj;
        return g.p.b.f.a((Object) this.id, (Object) comment.id) && g.p.b.f.a((Object) this.isSpoiler, (Object) comment.isSpoiler) && g.p.b.f.a((Object) this.postId, (Object) comment.postId) && g.p.b.f.a((Object) this.userId, (Object) comment.userId) && g.p.b.f.a((Object) this.date, (Object) comment.date) && g.p.b.f.a((Object) this.autor, (Object) comment.autor) && g.p.b.f.a((Object) this.email, (Object) comment.email) && g.p.b.f.a((Object) this.text, (Object) comment.text) && g.p.b.f.a((Object) this.ip, (Object) comment.ip) && g.p.b.f.a((Object) this.isRegister, (Object) comment.isRegister) && g.p.b.f.a((Object) this.approve, (Object) comment.approve) && g.p.b.f.a((Object) this.rating, (Object) comment.rating) && g.p.b.f.a((Object) this.voteNum, (Object) comment.voteNum) && g.p.b.f.a((Object) this.parent, (Object) comment.parent) && g.p.b.f.a((Object) this.foto, (Object) comment.foto) && g.p.b.f.a((Object) this.userGroup, (Object) comment.userGroup);
    }

    public final String getApprove() {
        return this.approve;
    }

    public final String getAutor() {
        return this.autor;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFoto() {
        return this.foto;
    }

    public final String getId() {
        return this.id;
    }

    public final String getIp() {
        return this.ip;
    }

    public final String getParent() {
        return this.parent;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getRating() {
        return this.rating;
    }

    public final String getText() {
        return this.text;
    }

    public final String getUserGroup() {
        return this.userGroup;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getVoteNum() {
        return this.voteNum;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.isSpoiler;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.postId;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.userId;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.date;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.autor;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.email;
        int iHashCode7 = (iHashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.text;
        int iHashCode8 = (iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.ip;
        int iHashCode9 = (iHashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.isRegister;
        int iHashCode10 = (iHashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.approve;
        int iHashCode11 = (iHashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.rating;
        int iHashCode12 = (iHashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.voteNum;
        int iHashCode13 = (iHashCode12 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.parent;
        int iHashCode14 = (iHashCode13 + (str14 != null ? str14.hashCode() : 0)) * 31;
        String str15 = this.foto;
        int iHashCode15 = (iHashCode14 + (str15 != null ? str15.hashCode() : 0)) * 31;
        String str16 = this.userGroup;
        return iHashCode15 + (str16 != null ? str16.hashCode() : 0);
    }

    public final String isRegister() {
        return this.isRegister;
    }

    public final String isSpoiler() {
        return this.isSpoiler;
    }

    public String toString() {
        return "Comment(id=" + this.id + ", isSpoiler=" + this.isSpoiler + ", postId=" + this.postId + ", userId=" + this.userId + ", date=" + this.date + ", autor=" + this.autor + ", email=" + this.email + ", text=" + this.text + ", ip=" + this.ip + ", isRegister=" + this.isRegister + ", approve=" + this.approve + ", rating=" + this.rating + ", voteNum=" + this.voteNum + ", parent=" + this.parent + ", foto=" + this.foto + ", userGroup=" + this.userGroup + ")";
    }
}
