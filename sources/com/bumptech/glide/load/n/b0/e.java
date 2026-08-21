package com.bumptech.glide.load.n.b0;

import android.util.Log;
import c.a.a.m.a;
import com.bumptech.glide.load.n.b0.a;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class e implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f3489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f3490c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c.a.a.m.a f3492e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f3491d = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f3488a = new j();

    @Deprecated
    protected e(File file, long j2) {
        this.f3489b = file;
        this.f3490c = j2;
    }

    private synchronized c.a.a.m.a a() {
        if (this.f3492e == null) {
            this.f3492e = c.a.a.m.a.a(this.f3489b, 1, 1, this.f3490c);
        }
        return this.f3492e;
    }

    public static a a(File file, long j2) {
        return new e(file, j2);
    }

    @Override // com.bumptech.glide.load.n.b0.a
    public File a(com.bumptech.glide.load.g gVar) {
        String strA = this.f3488a.a(gVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strA + " for for Key: " + gVar);
        }
        try {
            a.e eVarC = a().c(strA);
            if (eVarC != null) {
                return eVarC.a(0);
            }
            return null;
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.n.b0.a
    public void a(com.bumptech.glide.load.g gVar, a.b bVar) {
        c.a.a.m.a aVarA;
        String strA = this.f3488a.a(gVar);
        this.f3491d.a(strA);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strA + " for for Key: " + gVar);
            }
            try {
                aVarA = a();
            } catch (IOException e2) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e2);
                }
            }
            if (aVarA.c(strA) != null) {
                return;
            }
            a.c cVarB = aVarA.b(strA);
            if (cVarB == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + strA);
            }
            try {
                if (bVar.a(cVarB.a(0))) {
                    cVarB.c();
                }
                cVarB.b();
            } catch (Throwable th) {
                cVarB.b();
                throw th;
            }
        } finally {
            this.f3491d.b(strA);
        }
    }
}
