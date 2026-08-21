package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    @SerializedName("message")
    private final String message;

    public j(String str) {
        this.message = str;
    }

    public static /* synthetic */ j copy$default(j jVar, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = jVar.message;
        }
        return jVar.copy(str);
    }

    public final String component1() {
        return this.message;
    }

    public final j copy(String str) {
        return new j(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof j) && g.p.b.f.a((Object) this.message, (Object) ((j) obj).message);
        }
        return true;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        String str = this.message;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ErrorResponse(message=" + this.message + ")";
    }
}
