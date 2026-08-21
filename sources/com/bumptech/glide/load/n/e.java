package com.bumptech.glide.load.n;

import com.bumptech.glide.load.n.b0.a;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
class e<DataType> implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.d<DataType> f3536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataType f3537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.i f3538c;

    e(com.bumptech.glide.load.d<DataType> dVar, DataType datatype, com.bumptech.glide.load.i iVar) {
        this.f3536a = dVar;
        this.f3537b = datatype;
        this.f3538c = iVar;
    }

    @Override // com.bumptech.glide.load.n.b0.a.b
    public boolean a(File file) {
        return this.f3536a.a(this.f3537b, file, this.f3538c);
    }
}
