package g.q;

import g.m.y;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class c extends y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4398e;

    public c(int i2, int i3, int i4) {
        this.f4398e = i4;
        this.f4395b = i3;
        boolean z = true;
        if (this.f4398e <= 0 ? i2 < i3 : i2 > i3) {
            z = false;
        }
        this.f4396c = z;
        this.f4397d = this.f4396c ? i2 : this.f4395b;
    }

    @Override // g.m.y
    public int a() {
        int i2 = this.f4397d;
        if (i2 != this.f4395b) {
            this.f4397d = this.f4398e + i2;
        } else {
            if (!this.f4396c) {
                throw new NoSuchElementException();
            }
            this.f4396c = false;
        }
        return i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4396c;
    }
}
