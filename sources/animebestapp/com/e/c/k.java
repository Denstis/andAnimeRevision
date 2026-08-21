package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class k extends b {

    @SerializedName("list_type")
    private final String type;

    @SerializedName("user_id")
    private final String userId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(String str, String str2) {
        super(null, "getListFromUser", 1, null);
        g.p.b.f.b(str, "userId");
        g.p.b.f.b(str2, "type");
        this.userId = str;
        this.type = str2;
    }

    public static /* synthetic */ k copy$default(k kVar, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = kVar.userId;
        }
        if ((i2 & 2) != 0) {
            str2 = kVar.type;
        }
        return kVar.copy(str, str2);
    }

    public final String component1() {
        return this.userId;
    }

    public final String component2() {
        return this.type;
    }

    public final k copy(String str, String str2) {
        g.p.b.f.b(str, "userId");
        g.p.b.f.b(str2, "type");
        return new k(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return g.p.b.f.a((Object) this.userId, (Object) kVar.userId) && g.p.b.f.a((Object) this.type, (Object) kVar.type);
    }

    public final String getType() {
        return this.type;
    }

    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.userId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.type;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "GetFavoritesRequest(userId=" + this.userId + ", type=" + this.type + ")";
    }
}
