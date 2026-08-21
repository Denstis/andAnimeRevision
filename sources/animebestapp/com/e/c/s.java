package animebestapp.com.e.c;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class s extends b {

    @SerializedName("user_name")
    private final String name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(String str) {
        super(null, "getUsersListByName", 1, null);
        g.p.b.f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.name = str;
    }

    public static /* synthetic */ s copy$default(s sVar, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sVar.name;
        }
        return sVar.copy(str);
    }

    public final String component1() {
        return this.name;
    }

    public final s copy(String str) {
        g.p.b.f.b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        return new s(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof s) && g.p.b.f.a((Object) this.name, (Object) ((s) obj).name);
        }
        return true;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "UserInfoRequest(name=" + this.name + ")";
    }
}
