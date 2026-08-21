package animebestapp.com.menu.d;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1591b;

    public c(String str, String str2) {
        f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f.b(str2, "_key");
        this.f1590a = str;
        this.f1591b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return f.a((Object) this.f1590a, (Object) cVar.f1590a) && f.a((Object) this.f1591b, (Object) cVar.f1591b);
    }

    @Override // animebestapp.com.menu.d.d
    public String getKey() {
        return this.f1591b;
    }

    @Override // animebestapp.com.menu.d.d
    public String getTitle() {
        return this.f1590a;
    }

    public int hashCode() {
        String str = this.f1590a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f1591b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "MenuItem(name=" + this.f1590a + ", _key=" + this.f1591b + ")";
    }
}
