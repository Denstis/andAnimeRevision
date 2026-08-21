package com.bumptech.glide.load.o;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.o.n;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class a<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f3694c = 22;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssetManager f3695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0144a<Data> f3696b;

    /* JADX INFO: renamed from: com.bumptech.glide.load.o.a$a, reason: collision with other inner class name */
    public interface InterfaceC0144a<Data> {
        com.bumptech.glide.load.m.d<Data> a(AssetManager assetManager, String str);
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, InterfaceC0144a<ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AssetManager f3697a;

        public b(AssetManager assetManager) {
            this.f3697a = assetManager;
        }

        @Override // com.bumptech.glide.load.o.a.InterfaceC0144a
        public com.bumptech.glide.load.m.d<ParcelFileDescriptor> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.m.h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new a(this.f3697a, this);
        }
    }

    public static class c implements o<Uri, InputStream>, InterfaceC0144a<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AssetManager f3698a;

        public c(AssetManager assetManager) {
            this.f3698a = assetManager;
        }

        @Override // com.bumptech.glide.load.o.a.InterfaceC0144a
        public com.bumptech.glide.load.m.d<InputStream> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.m.m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new a(this.f3698a, this);
        }
    }

    public a(AssetManager assetManager, InterfaceC0144a<Data> interfaceC0144a) {
        this.f3695a = assetManager;
        this.f3696b = interfaceC0144a;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Uri uri, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(uri), this.f3696b.a(this.f3695a, uri.toString().substring(f3694c)));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }
}
