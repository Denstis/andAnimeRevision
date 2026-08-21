package animebestapp.com.e.c;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    @SerializedName("hash")
    private final String hash;

    @SerializedName(FirebaseAnalytics.Event.LOGIN)
    private final String login;

    @SerializedName(FirebaseAnalytics.Param.METHOD)
    private final String method;

    @SerializedName("password")
    private final String password;

    public a(String str, String str2, String str3, String str4) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, "password");
        g.p.b.f.b(str3, "hash");
        g.p.b.f.b(str4, FirebaseAnalytics.Param.METHOD);
        this.login = str;
        this.password = str2;
        this.hash = str3;
        this.method = str4;
    }

    public /* synthetic */ a(String str, String str2, String str3, String str4, int i2, g.p.b.d dVar) {
        this(str, str2, (i2 & 4) != 0 ? "cxbthdf3234ss1d1ssav21sd21sv12f3" : str3, (i2 & 8) != 0 ? "externalAuth" : str4);
    }

    public static /* synthetic */ a copy$default(a aVar, String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = aVar.login;
        }
        if ((i2 & 2) != 0) {
            str2 = aVar.password;
        }
        if ((i2 & 4) != 0) {
            str3 = aVar.hash;
        }
        if ((i2 & 8) != 0) {
            str4 = aVar.method;
        }
        return aVar.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.login;
    }

    public final String component2() {
        return this.password;
    }

    public final String component3() {
        return this.hash;
    }

    public final String component4() {
        return this.method;
    }

    public final a copy(String str, String str2, String str3, String str4) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, "password");
        g.p.b.f.b(str3, "hash");
        g.p.b.f.b(str4, FirebaseAnalytics.Param.METHOD);
        return new a(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return g.p.b.f.a((Object) this.login, (Object) aVar.login) && g.p.b.f.a((Object) this.password, (Object) aVar.password) && g.p.b.f.a((Object) this.hash, (Object) aVar.hash) && g.p.b.f.a((Object) this.method, (Object) aVar.method);
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getLogin() {
        return this.login;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getPassword() {
        return this.password;
    }

    public int hashCode() {
        String str = this.login;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.password;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.hash;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.method;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "AuthRequest(login=" + this.login + ", password=" + this.password + ", hash=" + this.hash + ", method=" + this.method + ")";
    }
}
