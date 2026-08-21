package com.bumptech.glide.load.p.c;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class y<T> implements com.bumptech.glide.load.j<T, Bitmap> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<Long> f3860d = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<Integer> f3861e = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d f3862f = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e<T> f3863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f3865c;

    class a implements h.b<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f3866a = ByteBuffer.allocate(8);

        a() {
        }

        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f3866a) {
                this.f3866a.position(0);
                messageDigest.update(this.f3866a.putLong(l.longValue()).array());
            }
        }
    }

    class b implements h.b<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ByteBuffer f3867a = ByteBuffer.allocate(4);

        b() {
        }

        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f3867a) {
                this.f3867a.position(0);
                messageDigest.update(this.f3867a.putInt(num.intValue()).array());
            }
        }
    }

    private static final class c implements e<AssetFileDescriptor> {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        @Override // com.bumptech.glide.load.p.c.y.e
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    static class d {
        d() {
        }

        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    interface e<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    static final class f implements e<ParcelFileDescriptor> {
        f() {
        }

        @Override // com.bumptech.glide.load.p.c.y.e
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    y(com.bumptech.glide.load.n.a0.e eVar, e<T> eVar2) {
        this(eVar, eVar2, f3862f);
    }

    y(com.bumptech.glide.load.n.a0.e eVar, e<T> eVar2, d dVar) {
        this.f3864b = eVar;
        this.f3863a = eVar2;
        this.f3865c = dVar;
    }

    private static Bitmap a(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2) {
        return mediaMetadataRetriever.getFrameAtTime(j2, i2);
    }

    private static Bitmap a(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2, int i3, int i4, k kVar) {
        Bitmap bitmapB = (Build.VERSION.SDK_INT < 27 || i3 == Integer.MIN_VALUE || i4 == Integer.MIN_VALUE || kVar == k.f3813d) ? null : b(mediaMetadataRetriever, j2, i2, i3, i4, kVar);
        return bitmapB == null ? a(mediaMetadataRetriever, j2, i2) : bitmapB;
    }

    public static com.bumptech.glide.load.j<AssetFileDescriptor, Bitmap> a(com.bumptech.glide.load.n.a0.e eVar) {
        return new y(eVar, new c(null));
    }

    @TargetApi(27)
    private static Bitmap b(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2, int i3, int i4, k kVar) {
        try {
            int i5 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int i6 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int i7 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i7 == 90 || i7 == 270) {
                i6 = i5;
                i5 = i6;
            }
            float fB = kVar.b(i5, i6, i3, i4);
            return mediaMetadataRetriever.getScaledFrameAtTime(j2, i2, Math.round(i5 * fB), Math.round(fB * i6));
        } catch (Throwable th) {
            if (!Log.isLoggable("VideoDecoder", 3)) {
                return null;
            }
            Log.d("VideoDecoder", "Exception trying to decode frame on oreo+", th);
            return null;
        }
    }

    public static com.bumptech.glide.load.j<ParcelFileDescriptor, Bitmap> b(com.bumptech.glide.load.n.a0.e eVar) {
        return new y(eVar, new f());
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<Bitmap> a(T t, int i2, int i3, com.bumptech.glide.load.i iVar) throws IOException {
        long jLongValue = ((Long) iVar.a(f3860d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) iVar.a(f3861e);
        if (num == null) {
            num = 2;
        }
        k kVar = (k) iVar.a(k.f3815f);
        if (kVar == null) {
            kVar = k.f3814e;
        }
        k kVar2 = kVar;
        MediaMetadataRetriever mediaMetadataRetrieverA = this.f3865c.a();
        try {
            try {
                this.f3863a.a(mediaMetadataRetrieverA, t);
                Bitmap bitmapA = a(mediaMetadataRetrieverA, jLongValue, num.intValue(), i2, i3, kVar2);
                mediaMetadataRetrieverA.release();
                return com.bumptech.glide.load.p.c.d.a(bitmapA, this.f3864b);
            } catch (RuntimeException e2) {
                throw new IOException(e2);
            }
        } catch (Throwable th) {
            mediaMetadataRetrieverA.release();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(T t, com.bumptech.glide.load.i iVar) {
        return true;
    }
}
