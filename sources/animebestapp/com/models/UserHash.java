package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class UserHash {

    @SerializedName("user_hash")
    private final String hash;

    public UserHash(String str) {
        g.p.b.f.b(str, "hash");
        this.hash = str;
    }

    public static /* synthetic */ UserHash copy$default(UserHash userHash, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = userHash.hash;
        }
        return userHash.copy(str);
    }

    public final String component1() {
        return this.hash;
    }

    public final UserHash copy(String str) {
        g.p.b.f.b(str, "hash");
        return new UserHash(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof UserHash) && g.p.b.f.a((Object) this.hash, (Object) ((UserHash) obj).hash);
        }
        return true;
    }

    public final String getHash() {
        return this.hash;
    }

    public int hashCode() {
        String str = this.hash;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "UserHash(hash=" + this.hash + ")";
    }
}
