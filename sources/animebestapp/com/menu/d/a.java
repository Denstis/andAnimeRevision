package animebestapp.com.menu.d;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import g.p.b.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<d> f1588c;

    /* JADX WARN: Multi-variable type inference failed */
    public a(String str, String str2, List<? extends d> list) {
        f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f.b(str2, "_key");
        f.b(list, "list");
        this.f1586a = str;
        this.f1587b = str2;
        this.f1588c = list;
    }

    public final List<d> a() {
        return this.f1588c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return f.a((Object) this.f1586a, (Object) aVar.f1586a) && f.a((Object) this.f1587b, (Object) aVar.f1587b) && f.a(this.f1588c, aVar.f1588c);
    }

    @Override // animebestapp.com.menu.d.d
    public String getKey() {
        return this.f1587b;
    }

    @Override // animebestapp.com.menu.d.d
    public String getTitle() {
        return this.f1586a;
    }

    public int hashCode() {
        String str = this.f1586a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f1587b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<d> list = this.f1588c;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "DropMenuItem(name=" + this.f1586a + ", _key=" + this.f1587b + ", list=" + this.f1588c + ")";
    }
}
