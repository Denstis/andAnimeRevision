package animebestapp.com.ui.nav.h.a;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<g.f<Integer, String>> f1967b;

    public f(String str, List<g.f<Integer, String>> list) {
        g.p.b.f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        g.p.b.f.b(list, "list");
        this.f1966a = str;
        this.f1967b = list;
    }

    public final List<g.f<Integer, String>> a() {
        return this.f1967b;
    }

    public final String b() {
        return this.f1966a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return g.p.b.f.a((Object) this.f1966a, (Object) fVar.f1966a) && g.p.b.f.a(this.f1967b, fVar.f1967b);
    }

    public int hashCode() {
        String str = this.f1966a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        List<g.f<Integer, String>> list = this.f1967b;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "CategorySetupModel(name=" + this.f1966a + ", list=" + this.f1967b + ")";
    }
}
