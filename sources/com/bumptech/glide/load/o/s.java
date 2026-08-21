package com.bumptech.glide.load.o;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.o.n;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class s<Data> implements n<Integer, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<Uri, Data> f3762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f3763b;

    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Resources f3764a;

        public a(Resources resources) {
            this.f3764a = resources;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Integer, AssetFileDescriptor> a(r rVar) {
            return new s(this.f3764a, rVar.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Resources f3765a;

        public b(Resources resources) {
            this.f3765a = resources;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Integer, ParcelFileDescriptor> a(r rVar) {
            return new s(this.f3765a, rVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements o<Integer, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Resources f3766a;

        public c(Resources resources) {
            this.f3766a = resources;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Integer, InputStream> a(r rVar) {
            return new s(this.f3766a, rVar.a(Uri.class, InputStream.class));
        }
    }

    public static class d implements o<Integer, Uri> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Resources f3767a;

        public d(Resources resources) {
            this.f3767a = resources;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Integer, Uri> a(r rVar) {
            return new s(this.f3767a, v.a());
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f3763b = resources;
        this.f3762a = nVar;
    }

    private Uri b(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f3763b.getResourcePackageName(num.intValue()) + '/' + this.f3763b.getResourceTypeName(num.intValue()) + '/' + this.f3763b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e2) {
            if (!Log.isLoggable("ResourceLoader", 5)) {
                return null;
            }
            Log.w("ResourceLoader", "Received invalid resource id: " + num, e2);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Integer num, int i2, int i3, com.bumptech.glide.load.i iVar) {
        Uri uriB = b(num);
        if (uriB == null) {
            return null;
        }
        return this.f3762a.a(uriB, i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Integer num) {
        return true;
    }
}
