package com.bumptech.glide.load.n;

import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.n.f;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class w implements f, d.a<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a f3666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g<?> f3667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3669e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bumptech.glide.load.g f3670f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<com.bumptech.glide.load.o.n<File, ?>> f3671g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3672h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile n.a<?> f3673i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private File f3674j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private x f3675k;

    w(g<?> gVar, f.a aVar) {
        this.f3667c = gVar;
        this.f3666b = aVar;
    }

    private boolean b() {
        return this.f3672h < this.f3671g.size();
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Exception exc) {
        this.f3666b.a(this.f3675k, exc, this.f3673i.f3739c, com.bumptech.glide.load.a.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Object obj) {
        this.f3666b.a(this.f3670f, obj, this.f3673i.f3739c, com.bumptech.glide.load.a.RESOURCE_DISK_CACHE, this.f3675k);
    }

    @Override // com.bumptech.glide.load.n.f
    public boolean a() {
        List<com.bumptech.glide.load.g> listC = this.f3667c.c();
        boolean z = false;
        if (listC.isEmpty()) {
            return false;
        }
        List<Class<?>> listK = this.f3667c.k();
        if (listK.isEmpty()) {
            if (File.class.equals(this.f3667c.m())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f3667c.h() + " to " + this.f3667c.m());
        }
        while (true) {
            if (this.f3671g != null && b()) {
                this.f3673i = null;
                while (!z && b()) {
                    List<com.bumptech.glide.load.o.n<File, ?>> list = this.f3671g;
                    int i2 = this.f3672h;
                    this.f3672h = i2 + 1;
                    this.f3673i = list.get(i2).a(this.f3674j, this.f3667c.n(), this.f3667c.f(), this.f3667c.i());
                    if (this.f3673i != null && this.f3667c.c(this.f3673i.f3739c.a())) {
                        this.f3673i.f3739c.a(this.f3667c.j(), this);
                        z = true;
                    }
                }
                return z;
            }
            this.f3669e++;
            if (this.f3669e >= listK.size()) {
                this.f3668d++;
                if (this.f3668d >= listC.size()) {
                    return false;
                }
                this.f3669e = 0;
            }
            com.bumptech.glide.load.g gVar = listC.get(this.f3668d);
            Class<?> cls = listK.get(this.f3669e);
            this.f3675k = new x(this.f3667c.b(), gVar, this.f3667c.l(), this.f3667c.n(), this.f3667c.f(), this.f3667c.b(cls), cls, this.f3667c.i());
            this.f3674j = this.f3667c.d().a(this.f3675k);
            File file = this.f3674j;
            if (file != null) {
                this.f3670f = gVar;
                this.f3671g = this.f3667c.a(file);
                this.f3672h = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.n.f
    public void cancel() {
        n.a<?> aVar = this.f3673i;
        if (aVar != null) {
            aVar.f3739c.cancel();
        }
    }
}
