package com.bumptech.glide.load.n;

import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.n.f;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class c implements f, d.a<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.bumptech.glide.load.g> f3514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g<?> f3515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f.a f3516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bumptech.glide.load.g f3518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<com.bumptech.glide.load.o.n<File, ?>> f3519g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile n.a<?> f3521i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private File f3522j;

    c(g<?> gVar, f.a aVar) {
        this(gVar.c(), gVar, aVar);
    }

    c(List<com.bumptech.glide.load.g> list, g<?> gVar, f.a aVar) {
        this.f3517e = -1;
        this.f3514b = list;
        this.f3515c = gVar;
        this.f3516d = aVar;
    }

    private boolean b() {
        return this.f3520h < this.f3519g.size();
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Exception exc) {
        this.f3516d.a(this.f3518f, exc, this.f3521i.f3739c, com.bumptech.glide.load.a.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.m.d.a
    public void a(Object obj) {
        this.f3516d.a(this.f3518f, obj, this.f3521i.f3739c, com.bumptech.glide.load.a.DATA_DISK_CACHE, this.f3518f);
    }

    @Override // com.bumptech.glide.load.n.f
    public boolean a() {
        while (true) {
            boolean z = false;
            if (this.f3519g != null && b()) {
                this.f3521i = null;
                while (!z && b()) {
                    List<com.bumptech.glide.load.o.n<File, ?>> list = this.f3519g;
                    int i2 = this.f3520h;
                    this.f3520h = i2 + 1;
                    this.f3521i = list.get(i2).a(this.f3522j, this.f3515c.n(), this.f3515c.f(), this.f3515c.i());
                    if (this.f3521i != null && this.f3515c.c(this.f3521i.f3739c.a())) {
                        this.f3521i.f3739c.a(this.f3515c.j(), this);
                        z = true;
                    }
                }
                return z;
            }
            this.f3517e++;
            if (this.f3517e >= this.f3514b.size()) {
                return false;
            }
            com.bumptech.glide.load.g gVar = this.f3514b.get(this.f3517e);
            this.f3522j = this.f3515c.d().a(new d(gVar, this.f3515c.l()));
            File file = this.f3522j;
            if (file != null) {
                this.f3518f = gVar;
                this.f3519g = this.f3515c.a(file);
                this.f3520h = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.n.f
    public void cancel() {
        n.a<?> aVar = this.f3521i;
        if (aVar != null) {
            aVar.f3739c.cancel();
        }
    }
}
