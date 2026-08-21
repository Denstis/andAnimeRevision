package h.h0.g;

import h.d0;
import h.v;

/* JADX INFO: loaded from: classes.dex */
public final class h extends d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f4618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i.e f4619e;

    public h(String str, long j2, i.e eVar) {
        this.f4617c = str;
        this.f4618d = j2;
        this.f4619e = eVar;
    }

    @Override // h.d0
    public long k() {
        return this.f4618d;
    }

    @Override // h.d0
    public v l() {
        String str = this.f4617c;
        if (str != null) {
            return v.a(str);
        }
        return null;
    }

    @Override // h.d0
    public i.e m() {
        return this.f4619e;
    }
}
