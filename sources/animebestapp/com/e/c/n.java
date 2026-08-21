package animebestapp.com.e.c;

import animebestapp.com.models.News;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    @SerializedName("result")
    private final ArrayList<News> result;

    @SerializedName("status")
    private final String status;

    public n(String str, ArrayList<News> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        this.status = str;
        this.result = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ n copy$default(n nVar, String str, ArrayList arrayList, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = nVar.status;
        }
        if ((i2 & 2) != 0) {
            arrayList = nVar.result;
        }
        return nVar.copy(str, arrayList);
    }

    public final String component1() {
        return this.status;
    }

    public final ArrayList<News> component2() {
        return this.result;
    }

    public final n copy(String str, ArrayList<News> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        return new n(str, arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return g.p.b.f.a((Object) this.status, (Object) nVar.status) && g.p.b.f.a(this.result, nVar.result);
    }

    public final ArrayList<News> getResult() {
        return this.result;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        ArrayList<News> arrayList = this.result;
        return iHashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "PostsNewsResponse(status=" + this.status + ", result=" + this.result + ")";
    }
}
