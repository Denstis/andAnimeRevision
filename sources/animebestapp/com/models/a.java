package animebestapp.com.models;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f1595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1596b;

    public a(long j2, String str) {
        g.p.b.f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.f1595a = j2;
        this.f1596b = str;
    }

    public final long a() {
        return this.f1595a;
    }

    public final String b() {
        return this.f1596b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (!(this.f1595a == aVar.f1595a) || !g.p.b.f.a((Object) this.f1596b, (Object) aVar.f1596b)) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.f1595a;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.f1596b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AnimeСonsist(id=" + this.f1595a + ", name=" + this.f1596b + ")";
    }
}
