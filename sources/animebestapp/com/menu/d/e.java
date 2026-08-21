package animebestapp.com.menu.d;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f1594c;

    public e(String str, String str2, boolean z) {
        f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f.b(str2, "_key");
        this.f1592a = str;
        this.f1593b = str2;
        this.f1594c = z;
    }

    public static /* synthetic */ e a(e eVar, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = eVar.f1592a;
        }
        if ((i2 & 2) != 0) {
            str2 = eVar.f1593b;
        }
        if ((i2 & 4) != 0) {
            z = eVar.f1594c;
        }
        return eVar.a(str, str2, z);
    }

    public final e a(String str, String str2, boolean z) {
        f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        f.b(str2, "_key");
        return new e(str, str2, z);
    }

    public final boolean a() {
        return this.f1594c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (f.a((Object) this.f1592a, (Object) eVar.f1592a) && f.a((Object) this.f1593b, (Object) eVar.f1593b)) {
                    if (this.f1594c == eVar.f1594c) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // animebestapp.com.menu.d.d
    public String getKey() {
        return this.f1593b;
    }

    @Override // animebestapp.com.menu.d.d
    public String getTitle() {
        return this.f1592a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        String str = this.f1592a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f1593b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.f1594c;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode2 + r1;
    }

    public String toString() {
        return "SwitchMenuItem(name=" + this.f1592a + ", _key=" + this.f1593b + ", value=" + this.f1594c + ")";
    }
}
