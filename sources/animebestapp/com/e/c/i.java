package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class i extends b {

    @SerializedName("list_type")
    private final String listType;

    @SerializedName("post_id")
    private final long postId;

    @SerializedName("user_id")
    private final long userId;

    public i(long j2, long j3, String str) {
        super(null, "setListElement", 1, null);
        this.postId = j2;
        this.userId = j3;
        this.listType = str;
    }

    public /* synthetic */ i(long j2, long j3, String str, int i2, g.p.b.d dVar) {
        this(j2, j3, (i2 & 4) != 0 ? null : str);
    }

    public static /* synthetic */ i copy$default(i iVar, long j2, long j3, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = iVar.postId;
        }
        long j4 = j2;
        if ((i2 & 2) != 0) {
            j3 = iVar.userId;
        }
        long j5 = j3;
        if ((i2 & 4) != 0) {
            str = iVar.listType;
        }
        return iVar.copy(j4, j5, str);
    }

    public final long component1() {
        return this.postId;
    }

    public final long component2() {
        return this.userId;
    }

    public final String component3() {
        return this.listType;
    }

    public final i copy(long j2, long j3, String str) {
        return new i(j2, j3, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                i iVar = (i) obj;
                if (this.postId == iVar.postId) {
                    if (!(this.userId == iVar.userId) || !g.p.b.f.a((Object) this.listType, (Object) iVar.listType)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getListType() {
        return this.listType;
    }

    public final long getPostId() {
        return this.postId;
    }

    public final long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        long j2 = this.postId;
        long j3 = this.userId;
        int i2 = ((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        String str = this.listType;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ElementRequest(postId=" + this.postId + ", userId=" + this.userId + ", listType=" + this.listType + ")";
    }
}
