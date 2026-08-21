package animebestapp.com.e.c;

import animebestapp.com.models.Comment;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    @SerializedName("result")
    private final ArrayList<Comment> result;

    @SerializedName("status")
    private final String status;

    public g(String str, ArrayList<Comment> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        this.status = str;
        this.result = arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ g copy$default(g gVar, String str, ArrayList arrayList, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = gVar.status;
        }
        if ((i2 & 2) != 0) {
            arrayList = gVar.result;
        }
        return gVar.copy(str, arrayList);
    }

    public final String component1() {
        return this.status;
    }

    public final ArrayList<Comment> component2() {
        return this.result;
    }

    public final g copy(String str, ArrayList<Comment> arrayList) {
        g.p.b.f.b(str, "status");
        g.p.b.f.b(arrayList, "result");
        return new g(str, arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return g.p.b.f.a((Object) this.status, (Object) gVar.status) && g.p.b.f.a(this.result, gVar.result);
    }

    public final ArrayList<Comment> getResult() {
        return this.result;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        ArrayList<Comment> arrayList = this.result;
        return iHashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "CommentsResponse(status=" + this.status + ", result=" + this.result + ")";
    }
}
