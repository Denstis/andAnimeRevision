package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1083a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1084b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1085c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1086d = -1;

    c() {
    }

    public int a() {
        return this.f1084b;
    }

    public int b() {
        int i2 = this.f1085c;
        int iC = c();
        if (iC == 6) {
            i2 |= 4;
        } else if (iC == 7) {
            i2 |= 1;
        }
        return i2 & 273;
    }

    public int c() {
        int i2 = this.f1086d;
        return i2 != -1 ? i2 : AudioAttributesCompat.a(false, this.f1085c, this.f1083a);
    }

    public int d() {
        return this.f1083a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1084b == cVar.a() && this.f1085c == cVar.b() && this.f1083a == cVar.d() && this.f1086d == cVar.f1086d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1084b), Integer.valueOf(this.f1085c), Integer.valueOf(this.f1083a), Integer.valueOf(this.f1086d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f1086d != -1) {
            sb.append(" stream=");
            sb.append(this.f1086d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f1083a));
        sb.append(" content=");
        sb.append(this.f1084b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f1085c).toUpperCase());
        return sb.toString();
    }
}
