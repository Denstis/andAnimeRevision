package com.bumptech.glide.load.o;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes.dex */
public final class k implements n<Uri, File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3727a;

    public static final class a implements o<Uri, File> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3728a;

        public a(Context context) {
            this.f3728a = context;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, File> a(r rVar) {
            return new k(this.f3728a);
        }
    }

    private static class b implements com.bumptech.glide.load.m.d<File> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final String[] f3729d = {"_data"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f3730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Uri f3731c;

        b(Context context, Uri uri) {
            this.f3730b = context;
            this.f3731c = uri;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super File> aVar) {
            Cursor cursorQuery = this.f3730b.getContentResolver().query(this.f3731c, f3729d, null, null, null);
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    cursorQuery.close();
                }
            }
            if (!TextUtils.isEmpty(string)) {
                aVar.a(new File(string));
                return;
            }
            aVar.a((Exception) new FileNotFoundException("Failed to find file path for: " + this.f3731c));
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.m.d
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.m.d
        public void cancel() {
        }
    }

    public k(Context context) {
        this.f3727a = context;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<File> a(Uri uri, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(uri), new b(this.f3727a, uri));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return com.bumptech.glide.load.m.o.b.b(uri);
    }
}
