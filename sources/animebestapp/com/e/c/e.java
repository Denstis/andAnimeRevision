package animebestapp.com.e.c;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    @SerializedName("result")
    private final animebestapp.com.models.b result;

    @SerializedName("status")
    private final String status;

    public e(String str, animebestapp.com.models.b bVar) {
        g.p.b.f.b(str, "status");
        this.status = str;
        this.result = bVar;
    }

    public static /* synthetic */ e copy$default(e eVar, String str, animebestapp.com.models.b bVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = eVar.status;
        }
        if ((i2 & 2) != 0) {
            bVar = eVar.result;
        }
        return eVar.copy(str, bVar);
    }

    public final String component1() {
        return this.status;
    }

    public final animebestapp.com.models.b component2() {
        return this.result;
    }

    public final e copy(String str, animebestapp.com.models.b bVar) {
        g.p.b.f.b(str, "status");
        return new e(str, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return g.p.b.f.a((Object) this.status, (Object) eVar.status) && g.p.b.f.a(this.result, eVar.result);
    }

    public final animebestapp.com.models.b getResult() {
        return this.result;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        animebestapp.com.models.b bVar = this.result;
        return iHashCode + (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "CheckFavoriteResponse(status=" + this.status + ", result=" + this.result + ")";
    }
}
