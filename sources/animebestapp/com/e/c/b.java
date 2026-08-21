package animebestapp.com.e.c;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    @SerializedName("hash")
    private final String hash;

    @SerializedName(FirebaseAnalytics.Param.METHOD)
    private final String method;

    public b(String str, String str2) {
        g.p.b.f.b(str, "hash");
        g.p.b.f.b(str2, FirebaseAnalytics.Param.METHOD);
        this.hash = str;
        this.method = str2;
    }

    public /* synthetic */ b(String str, String str2, int i2, g.p.b.d dVar) {
        this((i2 & 1) != 0 ? "cxbthdf3234ss1d1ssav21sd21sv12f3" : str, str2);
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getMethod() {
        return this.method;
    }
}
