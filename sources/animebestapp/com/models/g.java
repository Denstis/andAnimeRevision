package animebestapp.com.models;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("user_id")
    private final long f1603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
    private final String f1604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("fullname")
    private final String f1605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("foto")
    private final String f1606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("user_group")
    private final String f1607e;

    public final String a() {
        return this.f1606d;
    }

    public final String b() {
        return this.f1605c;
    }

    public final long c() {
        return this.f1603a;
    }

    public final String d() {
        return this.f1604b;
    }

    public final String e() {
        return this.f1607e;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (!(this.f1603a == gVar.f1603a) || !g.p.b.f.a((Object) this.f1604b, (Object) gVar.f1604b) || !g.p.b.f.a((Object) this.f1605c, (Object) gVar.f1605c) || !g.p.b.f.a((Object) this.f1606d, (Object) gVar.f1606d) || !g.p.b.f.a((Object) this.f1607e, (Object) gVar.f1607e)) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final boolean f() {
        String str = this.f1607e;
        int iHashCode = str.hashCode();
        if (iHashCode != 55) {
            if (iHashCode != 1629) {
                if (iHashCode != 1571) {
                    if (iHashCode != 1572) {
                        switch (iHashCode) {
                            case 49:
                                if (str.equals("1")) {
                                    return false;
                                }
                                break;
                            case 50:
                                if (str.equals("2")) {
                                    return false;
                                }
                                break;
                            case 51:
                                if (str.equals("3")) {
                                    return false;
                                }
                                break;
                            default:
                                switch (iHashCode) {
                                    case 1604:
                                        if (str.equals("26")) {
                                            return false;
                                        }
                                        break;
                                    case 1605:
                                        if (str.equals("27")) {
                                            return false;
                                        }
                                        break;
                                    case 1606:
                                        if (str.equals("28")) {
                                            return false;
                                        }
                                        break;
                                    case 1607:
                                        if (str.equals("29")) {
                                            return false;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else if (str.equals("15")) {
                        return false;
                    }
                } else if (str.equals("14")) {
                    return false;
                }
            } else if (str.equals("30")) {
                return false;
            }
        } else if (str.equals("7")) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.f1603a;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.f1604b;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1605c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1606d;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f1607e;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "UserInfo(id=" + this.f1603a + ", name=" + this.f1604b + ", fullname=" + this.f1605c + ", foto=" + this.f1606d + ", userGroup=" + this.f1607e + ")";
    }
}
