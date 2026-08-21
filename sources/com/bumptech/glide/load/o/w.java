package com.bumptech.glide.load.o;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.o.n;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class w<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<String> f3773b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", FirebaseAnalytics.Param.CONTENT)));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<Data> f3774a;

    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f3775a;

        public a(ContentResolver contentResolver) {
            this.f3775a = contentResolver;
        }

        @Override // com.bumptech.glide.load.o.w.c
        public com.bumptech.glide.load.m.d<AssetFileDescriptor> a(Uri uri) {
            return new com.bumptech.glide.load.m.a(this.f3775a, uri);
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, AssetFileDescriptor> a(r rVar) {
            return new w(this);
        }
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f3776a;

        public b(ContentResolver contentResolver) {
            this.f3776a = contentResolver;
        }

        @Override // com.bumptech.glide.load.o.w.c
        public com.bumptech.glide.load.m.d<ParcelFileDescriptor> a(Uri uri) {
            return new com.bumptech.glide.load.m.i(this.f3776a, uri);
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, ParcelFileDescriptor> a(r rVar) {
            return new w(this);
        }
    }

    public interface c<Data> {
        com.bumptech.glide.load.m.d<Data> a(Uri uri);
    }

    public static class d implements o<Uri, InputStream>, c<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f3777a;

        public d(ContentResolver contentResolver) {
            this.f3777a = contentResolver;
        }

        @Override // com.bumptech.glide.load.o.w.c
        public com.bumptech.glide.load.m.d<InputStream> a(Uri uri) {
            return new com.bumptech.glide.load.m.n(this.f3777a, uri);
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new w(this);
        }
    }

    public w(c<Data> cVar) {
        this.f3774a = cVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Uri uri, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(uri), this.f3774a.a(uri));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return f3773b.contains(uri.getScheme());
    }
}
