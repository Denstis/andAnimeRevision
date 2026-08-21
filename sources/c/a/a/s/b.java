package c.a.a.s;

import c.a.a.t.j;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class b implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f3310b;

    public b(Object obj) {
        j.a(obj);
        this.f3310b = obj;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(this.f3310b.toString().getBytes(g.f3378a));
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f3310b.equals(((b) obj).f3310b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.f3310b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f3310b + '}';
    }
}
