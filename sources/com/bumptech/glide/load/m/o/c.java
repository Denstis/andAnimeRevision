package com.bumptech.glide.load.m.o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import c.a.a.h;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.m.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.bumptech.glide.load.m.d<InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f3413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f3414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InputStream f3415d;

    static class a implements d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String[] f3416b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f3417a;

        a(ContentResolver contentResolver) {
            this.f3417a = contentResolver;
        }

        @Override // com.bumptech.glide.load.m.o.d
        public Cursor a(Uri uri) {
            return this.f3417a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f3416b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    static class b implements d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String[] f3418b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f3419a;

        b(ContentResolver contentResolver) {
            this.f3419a = contentResolver;
        }

        @Override // com.bumptech.glide.load.m.o.d
        public Cursor a(Uri uri) {
            return this.f3419a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f3418b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    c(Uri uri, e eVar) {
        this.f3413b = uri;
        this.f3414c = eVar;
    }

    public static c a(Context context, Uri uri) {
        return a(context, uri, new a(context.getContentResolver()));
    }

    private static c a(Context context, Uri uri, d dVar) {
        return new c(uri, new e(c.a.a.c.b(context).g().a(), dVar, c.a.a.c.b(context).b(), context.getContentResolver()));
    }

    public static c b(Context context, Uri uri) {
        return a(context, uri, new b(context.getContentResolver()));
    }

    private InputStream d() throws FileNotFoundException {
        InputStream inputStreamB = this.f3414c.b(this.f3413b);
        int iA = inputStreamB != null ? this.f3414c.a(this.f3413b) : -1;
        return iA != -1 ? new g(inputStreamB, iA) : inputStreamB;
    }

    @Override // com.bumptech.glide.load.m.d
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.m.d
    public void a(h hVar, d.a<? super InputStream> aVar) {
        try {
            this.f3415d = d();
            aVar.a(this.f3415d);
        } catch (FileNotFoundException e2) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    @Override // com.bumptech.glide.load.m.d
    public void b() {
        InputStream inputStream = this.f3415d;
        if (inputStream != null) {
            try {
                inputStream.close();
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
