package com.bumptech.glide.load.p.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import c.a.a.n.a;
import c.a.a.t.k;
import com.bumptech.glide.load.ImageHeaderParser;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.bumptech.glide.load.j<ByteBuffer, c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final C0150a f3873f = new C0150a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b f3874g = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<ImageHeaderParser> f3876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f3877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C0150a f3878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bumptech.glide.load.p.g.b f3879e;

    /* JADX INFO: renamed from: com.bumptech.glide.load.p.g.a$a, reason: collision with other inner class name */
    static class C0150a {
        C0150a() {
        }

        c.a.a.n.a a(a.InterfaceC0128a interfaceC0128a, c.a.a.n.c cVar, ByteBuffer byteBuffer, int i2) {
            return new c.a.a.n.e(interfaceC0128a, cVar, byteBuffer, i2);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue<c.a.a.n.d> f3880a = k.a(0);

        b() {
        }

        synchronized c.a.a.n.d a(ByteBuffer byteBuffer) {
            c.a.a.n.d dVarPoll;
            dVarPoll = this.f3880a.poll();
            if (dVarPoll == null) {
                dVarPoll = new c.a.a.n.d();
            }
            dVarPoll.a(byteBuffer);
            return dVarPoll;
        }

        synchronized void a(c.a.a.n.d dVar) {
            dVar.a();
            this.f3880a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.n.a0.b bVar) {
        this(context, list, eVar, bVar, f3874g, f3873f);
    }

    a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.n.a0.b bVar, b bVar2, C0150a c0150a) {
        this.f3875a = context.getApplicationContext();
        this.f3876b = list;
        this.f3878d = c0150a;
        this.f3879e = new com.bumptech.glide.load.p.g.b(eVar, bVar);
        this.f3877c = bVar2;
    }

    private static int a(c.a.a.n.c cVar, int i2, int i3) {
        int iMin = Math.min(cVar.a() / i3, cVar.d() / i2);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + iMax + ", target dimens: [" + i2 + "x" + i3 + "], actual dimens: [" + cVar.d() + "x" + cVar.a() + "]");
        }
        return iMax;
    }

    private e a(ByteBuffer byteBuffer, int i2, int i3, c.a.a.n.d dVar, com.bumptech.glide.load.i iVar) {
        long jA = c.a.a.t.f.a();
        try {
            c.a.a.n.c cVarB = dVar.b();
            if (cVarB.b() > 0 && cVarB.c() == 0) {
                Bitmap.Config config = iVar.a(i.f3912a) == com.bumptech.glide.load.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                c.a.a.n.a aVarA = this.f3878d.a(this.f3879e, cVarB, byteBuffer, a(cVarB, i2, i3));
                aVarA.a(config);
                aVarA.b();
                Bitmap bitmapA = aVarA.a();
                if (bitmapA == null) {
                    return null;
                }
                e eVar = new e(new c(this.f3875a, aVarA, com.bumptech.glide.load.p.b.a(), i2, i3, bitmapA));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.a.a.t.f.a(jA));
                }
                return eVar;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.a.a.t.f.a(jA));
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.a.a.t.f.a(jA));
            }
        }
    }

    @Override // com.bumptech.glide.load.j
    public e a(ByteBuffer byteBuffer, int i2, int i3, com.bumptech.glide.load.i iVar) {
        c.a.a.n.d dVarA = this.f3877c.a(byteBuffer);
        try {
            return a(byteBuffer, i2, i3, dVarA, iVar);
        } finally {
            this.f3877c.a(dVarA);
        }
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(ByteBuffer byteBuffer, com.bumptech.glide.load.i iVar) {
        return !((Boolean) iVar.a(i.f3913b)).booleanValue() && com.bumptech.glide.load.f.a(this.f3876b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }
}
