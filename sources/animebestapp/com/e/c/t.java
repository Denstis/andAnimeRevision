package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    @SerializedName("result")
    private final animebestapp.com.models.g result;

    @SerializedName("status")
    private final String status;

    public t(String str, animebestapp.com.models.g gVar) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(gVar, "result");
        this.status = str;
        this.result = gVar;
    }

    public static /* synthetic */ t copy$default(t tVar, String str, animebestapp.com.models.g gVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tVar.status;
        }
        if ((i2 & 2) != 0) {
            gVar = tVar.result;
        }
        return tVar.copy(str, gVar);
    }

    public final String component1() {
        return this.status;
    }

    public final animebestapp.com.models.g component2() {
        return this.result;
    }

    public final t copy(String str, animebestapp.com.models.g gVar) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(gVar, "result");
        return new t(str, gVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return g.p.b.f.a((Object) this.status, (Object) tVar.status) && g.p.b.f.a(this.result, tVar.result);
    }

    public final animebestapp.com.models.g getResult() {
        return this.result;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        animebestapp.com.models.g gVar = this.result;
        return iHashCode + (gVar != null ? gVar.hashCode() : 0);
    }

    public String toString() {
        return "UserInfoResponse(status=" + this.status + ", result=" + this.result + ")";
    }
}
