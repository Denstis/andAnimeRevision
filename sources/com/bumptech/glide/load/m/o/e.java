package com.bumptech.glide.load.m.o;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f3420f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f3421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f3422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ContentResolver f3424d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<ImageHeaderParser> f3425e;

    e(List<ImageHeaderParser> list, a aVar, d dVar, com.bumptech.glide.load.n.a0.b bVar, ContentResolver contentResolver) {
        this.f3421a = aVar;
        this.f3422b = dVar;
        this.f3423c = bVar;
        this.f3424d = contentResolver;
        this.f3425e = list;
    }

    e(List<ImageHeaderParser> list, d dVar, com.bumptech.glide.load.n.a0.b bVar, ContentResolver contentResolver) {
        this(list, f3420f, dVar, bVar, contentResolver);
    }

    private boolean a(File file) {
        return this.f3421a.a(file) && 0 < this.f3421a.b(file);
    }

    private String c(Uri uri) {
        Cursor cursorA = this.f3422b.a(uri);
        if (cursorA != null) {
            try {
                if (cursorA.moveToFirst()) {
                    return cursorA.getString(0);
                }
            } finally {
                if (cursorA != null) {
                    cursorA.close();
                }
            }
        }
        if (cursorA != null) {
            cursorA.close();
        }
        return null;
    }

    int a(Uri uri) {
        InputStream inputStreamOpenInputStream = null;
        try {
            try {
                inputStreamOpenInputStream = this.f3424d.openInputStream(uri);
                int iA = f.a(this.f3425e, inputStreamOpenInputStream, this.f3423c);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return iA;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | NullPointerException e2) {
            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e2);
            }
            if (inputStreamOpenInputStream == null) {
                return -1;
            }
            try {
                inputStreamOpenInputStream.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        }
    }

    public InputStream b(Uri uri) throws FileNotFoundException {
        String strC = c(uri);
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        File fileA = this.f3421a.a(strC);
        if (!a(fileA)) {
            return null;
        }
        Uri uriFromFile = Uri.fromFile(fileA);
        try {
            return this.f3424d.openInputStream(uriFromFile);
        } catch (NullPointerException e2) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e2));
        }
    }
}
