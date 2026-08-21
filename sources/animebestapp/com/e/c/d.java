package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {

    @SerializedName("post_id")
    private final long postId;

    @SerializedName("user_id")
    private final long userId;

    public d(long j2, long j3) {
        super(null, "checkListElement", 1, null);
        this.postId = j2;
        this.userId = j3;
    }

    public static /* synthetic */ d copy$default(d dVar, long j2, long j3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = dVar.postId;
        }
        if ((i2 & 2) != 0) {
            j3 = dVar.userId;
        }
        return dVar.copy(j2, j3);
    }

    public final long component1() {
        return this.postId;
    }

    public final long component2() {
        return this.userId;
    }

    public final d copy(long j2, long j3) {
        return new d(j2, j3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (this.postId == dVar.postId) {
                    if (this.userId == dVar.userId) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final long getPostId() {
        return this.postId;
    }

    public final long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        long j2 = this.postId;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        long j3 = this.userId;
        return i2 + ((int) (j3 ^ (j3 >>> 32)));
    }

    public String toString() {
        return "CheckFavoriteRequest(postId=" + this.postId + ", userId=" + this.userId + ")";
    }
}
