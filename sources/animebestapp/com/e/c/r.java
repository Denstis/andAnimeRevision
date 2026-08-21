package animebestapp.com.e.c;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class r extends b {

    @SerializedName("user_id")
    private final String id;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(String str) {
        super(null, "getUsersListById", 1, null);
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        this.id = str;
    }

    public static /* synthetic */ r copy$default(r rVar, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = rVar.id;
        }
        return rVar.copy(str);
    }

    public final String component1() {
        return this.id;
    }

    public final r copy(String str) {
        g.p.b.f.b(str, TtmlNode.ATTR_ID);
        return new r(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof r) && g.p.b.f.a((Object) this.id, (Object) ((r) obj).id);
        }
        return true;
    }

    public final String getId() {
        return this.id;
    }

    public int hashCode() {
        String str = this.id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "UserInfo2Request(id=" + this.id + ")";
    }
}
