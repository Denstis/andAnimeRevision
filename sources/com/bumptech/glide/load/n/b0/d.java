package com.bumptech.glide.load.n.b0;

import com.bumptech.glide.load.n.b0.a;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class d implements a.InterfaceC0137a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f3486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f3487b;

    public interface a {
        File a();
    }

    public d(a aVar, long j2) {
        this.f3486a = j2;
        this.f3487b = aVar;
    }

    @Override // com.bumptech.glide.load.n.b0.a.InterfaceC0137a
    public com.bumptech.glide.load.n.b0.a a() {
        File fileA = this.f3487b.a();
        if (fileA == null) {
            return null;
        }
        if (fileA.mkdirs() || (fileA.exists() && fileA.isDirectory())) {
            return e.a(fileA, this.f3486a);
        }
        return null;
    }
}
