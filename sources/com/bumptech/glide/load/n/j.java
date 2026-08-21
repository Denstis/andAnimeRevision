package com.bumptech.glide.load.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f3587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j f3588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f3589c;

    class a extends j {
        a() {
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return (aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean b() {
            return true;
        }
    }

    class b extends j {
        b() {
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(com.bumptech.glide.load.a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean b() {
            return false;
        }
    }

    class c extends j {
        c() {
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(com.bumptech.glide.load.a aVar) {
            return (aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean b() {
            return false;
        }
    }

    class d extends j {
        d() {
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(com.bumptech.glide.load.a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return (aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || aVar == com.bumptech.glide.load.a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean b() {
            return true;
        }
    }

    class e extends j {
        e() {
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(com.bumptech.glide.load.a aVar) {
            return aVar == com.bumptech.glide.load.a.REMOTE;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar) {
            return ((z && aVar == com.bumptech.glide.load.a.DATA_DISK_CACHE) || aVar == com.bumptech.glide.load.a.LOCAL) && cVar == com.bumptech.glide.load.c.TRANSFORMED;
        }

        @Override // com.bumptech.glide.load.n.j
        public boolean b() {
            return true;
        }
    }

    static {
        new a();
        f3587a = new b();
        f3588b = new c();
        new d();
        f3589c = new e();
    }

    public abstract boolean a();

    public abstract boolean a(com.bumptech.glide.load.a aVar);

    public abstract boolean a(boolean z, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.c cVar);

    public abstract boolean b();
}
