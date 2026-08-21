package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    @SerializedName("message")
    private final String message;

    @SerializedName("status")
    private final String status;

    public c(String str, String str2) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(str2, "message");
        this.status = str;
        this.message = str2;
    }

    public static /* synthetic */ c copy$default(c cVar, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cVar.status;
        }
        if ((i2 & 2) != 0) {
            str2 = cVar.message;
        }
        return cVar.copy(str, str2);
    }

    public final String component1() {
        return this.status;
    }

    public final String component2() {
        return this.message;
    }

    public final c copy(String str, String str2) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(str2, "message");
        return new c(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return g.p.b.f.a((Object) this.status, (Object) cVar.status) && g.p.b.f.a((Object) this.message, (Object) cVar.message);
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.message;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "BaseResponse(status=" + this.status + ", message=" + this.message + ")";
    }
}
