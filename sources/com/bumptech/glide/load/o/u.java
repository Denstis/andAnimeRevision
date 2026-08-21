package com.bumptech.glide.load.o;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class u<Data> implements n<String, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<Uri, Data> f3769a;

    public static final class a implements o<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.o.o
        public n<String, AssetFileDescriptor> a(r rVar) {
            return new u(rVar.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements o<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.o.o
        public n<String, ParcelFileDescriptor> a(r rVar) {
            return new u(rVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements o<String, InputStream> {
        @Override // com.bumptech.glide.load.o.o
        public n<String, InputStream> a(r rVar) {
            return new u(rVar.a(Uri.class, InputStream.class));
        }
    }

    public u(n<Uri, Data> nVar) {
        this.f3769a = nVar;
    }

    private static Uri b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) != '/') {
            Uri uri = Uri.parse(str);
            if (uri.getScheme() != null) {
                return uri;
            }
        }
        return c(str);
    }

    private static Uri c(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(String str, int i2, int i3, com.bumptech.glide.load.i iVar) {
        Uri uriB = b(str);
        if (uriB == null || !this.f3769a.a(uriB)) {
            return null;
        }
        return this.f3769a.a(uriB, i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(String str) {
        return true;
    }
}
