package animebestapp.com.e.c;

import animebestapp.com.models.Anime;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    @SerializedName("result")
    private final List<Anime> result;

    public l(List<Anime> list) {
        g.p.b.f.b(list, "result");
        this.result = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ l copy$default(l lVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = lVar.result;
        }
        return lVar.copy(list);
    }

    public final List<Anime> component1() {
        return this.result;
    }

    public final l copy(List<Anime> list) {
        g.p.b.f.b(list, "result");
        return new l(list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof l) && g.p.b.f.a(this.result, ((l) obj).result);
        }
        return true;
    }

    public final List<Anime> getResult() {
        return this.result;
    }

    public int hashCode() {
        List<Anime> list = this.result;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "GetFavoritesResponse(result=" + this.result + ")";
    }
}
