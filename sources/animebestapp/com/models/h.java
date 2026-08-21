package animebestapp.com.models;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("version")
    private final String f1608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("versionCode")
    private final int f1609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("updateUrl")
    private final String f1610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("extraUpdateUrl")
    private final String f1611d;

    public final String a() {
        return this.f1611d;
    }

    public final String b() {
        return this.f1610c;
    }

    public final String c() {
        return this.f1608a;
    }

    public final int d() {
        return this.f1609b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                if (g.p.b.f.a((Object) this.f1608a, (Object) hVar.f1608a)) {
                    if (!(this.f1609b == hVar.f1609b) || !g.p.b.f.a((Object) this.f1610c, (Object) hVar.f1610c) || !g.p.b.f.a((Object) this.f1611d, (Object) hVar.f1611d)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f1608a;
        int iHashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f1609b) * 31;
        String str2 = this.f1610c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1611d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "Version(version=" + this.f1608a + ", versionCode=" + this.f1609b + ", updateUrl=" + this.f1610c + ", extraUpdateUrl=" + this.f1611d + ")";
    }
}
