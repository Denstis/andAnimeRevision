package com.bumptech.glide.load.m;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.load.m.d;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AssetManager f3386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f3387d;

    public b(AssetManager assetManager, String str) {
        this.f3386c = assetManager;
        this.f3385b = str;
    }

    protected abstract T a(AssetManager assetManager, String str);

    @Override // com.bumptech.glide.load.m.d
    public void a(c.a.a.h hVar, d.a<? super T> aVar) {
        try {
            this.f3387d = a(this.f3386c, this.f3385b);
            aVar.a(this.f3387d);
        } catch (IOException e2) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    protected abstract void a(T t);

    @Override // com.bumptech.glide.load.m.d
    public void b() {
        T t = this.f3387d;
        if (t == null) {
            return;
        }
        try {
            a(t);
        } catch (IOException unused) {
        }
    }

    @Override // com.bumptech.glide.load.m.d
    public com.bumptech.glide.load.a c() {
        return com.bumptech.glide.load.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.m.d
    public void cancel() {
    }
}
