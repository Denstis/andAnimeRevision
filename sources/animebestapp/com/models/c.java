package animebestapp.com.models;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("ip")
    private final String f1598a;

    public final String a() {
        return this.f1598a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof c) && g.p.b.f.a((Object) this.f1598a, (Object) ((c) obj).f1598a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f1598a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "IpAddress(query=" + this.f1598a + ")";
    }
}
