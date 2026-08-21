package com.bumptech.glide.load.m;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.m.d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f3409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f3410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f3411d;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f3410c = contentResolver;
        this.f3409b = uri;
    }

    protected abstract T a(Uri uri, ContentResolver contentResolver);

    @Override // com.bumptech.glide.load.m.d
    public final void a(c.a.a.h hVar, d.a<? super T> aVar) {
        try {
            this.f3411d = a(this.f3409b, this.f3410c);
            aVar.a(this.f3411d);
        } catch (FileNotFoundException e2) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    protected abstract void a(T t);

    @Override // com.bumptech.glide.load.m.d
    public void b() {
        T t = this.f3411d;
        if (t != null) {
            try {
                a(t);
            } catch (IOException unused) {
            }
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
