package b.h.l;

import android.util.Base64;
import b.h.n.g;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f2472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2474f;

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        g.a(str);
        this.f2469a = str;
        g.a(str2);
        this.f2470b = str2;
        g.a(str3);
        this.f2471c = str3;
        g.a(list);
        this.f2472d = list;
        this.f2473e = 0;
        this.f2474f = this.f2469a + "-" + this.f2470b + "-" + this.f2471c;
    }

    public List<List<byte[]>> a() {
        return this.f2472d;
    }

    public int b() {
        return this.f2473e;
    }

    public String c() {
        return this.f2474f;
    }

    public String d() {
        return this.f2469a;
    }

    public String e() {
        return this.f2470b;
    }

    public String f() {
        return this.f2471c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2469a + ", mProviderPackage: " + this.f2470b + ", mQuery: " + this.f2471c + ", mCertificates:");
        for (int i2 = 0; i2 < this.f2472d.size(); i2++) {
            sb.append(" [");
            List<byte[]> list = this.f2472d.get(i2);
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f2473e);
        return sb.toString();
    }
}
