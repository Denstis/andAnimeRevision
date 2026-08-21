package animebestapp.com.e.c;

import animebestapp.com.models.Anime;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    @SerializedName("result")
    private final ArrayList<Anime> result;

    @SerializedName("status")
    private final String status;

    public o(String str, ArrayList<Anime> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        this.status = str;
        this.result = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ o copy$default(o oVar, String str, ArrayList arrayList, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = oVar.status;
        }
        if ((i2 & 2) != 0) {
            arrayList = oVar.result;
        }
        return oVar.copy(str, arrayList);
    }

    public final String component1() {
        return this.status;
    }

    public final ArrayList<Anime> component2() {
        return this.result;
    }

    public final o copy(String str, ArrayList<Anime> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        return new o(str, arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return g.p.b.f.a((Object) this.status, (Object) oVar.status) && g.p.b.f.a(this.result, oVar.result);
    }

    public final ArrayList<Anime> getResult() {
        return this.result;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        ArrayList<Anime> arrayList = this.result;
        return iHashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "PostsResponse(status=" + this.status + ", result=" + this.result + ")";
    }
}
