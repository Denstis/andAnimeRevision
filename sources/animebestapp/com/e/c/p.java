package animebestapp.com.e.c;

import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class p extends b {

    @SerializedName(Scopes.EMAIL)
    private final String email;

    @SerializedName(FirebaseAnalytics.Event.LOGIN)
    private final String login;

    @SerializedName("password")
    private final String pass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(String str, String str2, String str3) {
        super(null, "externalRegister", 1, null);
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, Scopes.EMAIL);
        g.p.b.f.b(str3, "pass");
        this.login = str;
        this.email = str2;
        this.pass = str3;
    }

    public static /* synthetic */ p copy$default(p pVar, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pVar.login;
        }
        if ((i2 & 2) != 0) {
            str2 = pVar.email;
        }
        if ((i2 & 4) != 0) {
            str3 = pVar.pass;
        }
        return pVar.copy(str, str2, str3);
    }

    public final String component1() {
        return this.login;
    }

    public final String component2() {
        return this.email;
    }

    public final String component3() {
        return this.pass;
    }

    public final p copy(String str, String str2, String str3) {
        g.p.b.f.b(str, FirebaseAnalytics.Event.LOGIN);
        g.p.b.f.b(str2, Scopes.EMAIL);
        g.p.b.f.b(str3, "pass");
        return new p(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return g.p.b.f.a((Object) this.login, (Object) pVar.login) && g.p.b.f.a((Object) this.email, (Object) pVar.email) && g.p.b.f.a((Object) this.pass, (Object) pVar.pass);
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getLogin() {
        return this.login;
    }

    public final String getPass() {
        return this.pass;
    }

    public int hashCode() {
        String str = this.login;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.email;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.pass;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "RegRequest(login=" + this.login + ", email=" + this.email + ", pass=" + this.pass + ")";
    }
}
