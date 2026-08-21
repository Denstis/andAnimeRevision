package animebestapp.com.menu.d;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1589a;

    public b(String str) {
        f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.f1589a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof b) && f.a((Object) this.f1589a, (Object) ((b) obj).f1589a);
        }
        return true;
    }

    @Override // animebestapp.com.menu.d.d
    public String getKey() {
        return "none";
    }

    @Override // animebestapp.com.menu.d.d
    public String getTitle() {
        return this.f1589a;
    }

    public int hashCode() {
        String str = this.f1589a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "MenuCategory(name=" + this.f1589a + ")";
    }
}
