package com.bumptech.glide.load.p.c;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<com.bumptech.glide.load.b> f3819f = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", com.bumptech.glide.load.b.f3372d);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<Boolean> f3820g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.bumptech.glide.load.h<Boolean> f3821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Set<String> f3822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final b f3823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Set<ImageHeaderParser.ImageType> f3824k;
    private static final Queue<BitmapFactory.Options> l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DisplayMetrics f3826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<ImageHeaderParser> f3828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q f3829e = q.a();

    class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.p.c.l.b
        public void a() {
        }

        @Override // com.bumptech.glide.load.p.c.l.b
        public void a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap) {
        }
    }

    public interface b {
        void a();

        void a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap);
    }

    static {
        com.bumptech.glide.load.h<k> hVar = k.f3815f;
        f3820g = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", false);
        f3821h = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", false);
        f3822i = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f3823j = new a();
        f3824k = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        l = c.a.a.t.k.a(0);
    }

    public l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.n.a0.b bVar) {
        this.f3828d = list;
        c.a.a.t.j.a(displayMetrics);
        this.f3826b = displayMetrics;
        c.a.a.t.j.a(eVar);
        this.f3825a = eVar;
        c.a.a.t.j.a(bVar);
        this.f3827c = bVar;
    }

    private static int a(double d2) {
        int iB = b(d2);
        double d3 = iB;
        Double.isNaN(d3);
        int iC = c(d3 * d2);
        double d4 = iC / iB;
        Double.isNaN(d4);
        double d5 = iC;
        Double.isNaN(d5);
        return c((d2 / d4) * d5);
    }

    private Bitmap a(InputStream inputStream, BitmapFactory.Options options, k kVar, com.bumptech.glide.load.b bVar, boolean z, int i2, int i3, boolean z2, b bVar2) throws IOException {
        l lVar;
        int iRound;
        int iRound2;
        int i4;
        long jA = c.a.a.t.f.a();
        int[] iArrB = b(inputStream, options, bVar2, this.f3825a);
        int i5 = iArrB[0];
        int i6 = iArrB[1];
        String str = options.outMimeType;
        boolean z3 = (i5 == -1 || i6 == -1) ? false : z;
        int iA = com.bumptech.glide.load.f.a(this.f3828d, inputStream, this.f3827c);
        int iA2 = w.a(iA);
        boolean zB = w.b(iA);
        int i7 = i2 == Integer.MIN_VALUE ? i5 : i2;
        int i8 = i3 == Integer.MIN_VALUE ? i6 : i3;
        ImageHeaderParser.ImageType imageTypeB = com.bumptech.glide.load.f.b(this.f3828d, inputStream, this.f3827c);
        a(imageTypeB, inputStream, bVar2, this.f3825a, kVar, iA2, i5, i6, i7, i8, options);
        a(inputStream, bVar, z3, zB, options, i7, i8);
        boolean z4 = Build.VERSION.SDK_INT >= 19;
        if (options.inSampleSize == 1 || z4) {
            lVar = this;
            if (lVar.a(imageTypeB)) {
                if (i5 < 0 || i6 < 0 || !z2 || !z4) {
                    float f2 = b(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                    int i9 = options.inSampleSize;
                    float f3 = i9;
                    int iCeil = (int) Math.ceil(i5 / f3);
                    int iCeil2 = (int) Math.ceil(i6 / f3);
                    iRound = Math.round(iCeil * f2);
                    iRound2 = Math.round(iCeil2 * f2);
                    if (Log.isLoggable("Downsampler", 2)) {
                        Log.v("Downsampler", "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i5 + "x" + i6 + "], sampleSize: " + i9 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f2);
                    }
                } else {
                    iRound = i7;
                    iRound2 = i8;
                }
                if (iRound > 0 && iRound2 > 0) {
                    a(options, lVar.f3825a, iRound, iRound2);
                }
            }
        } else {
            lVar = this;
        }
        Bitmap bitmapA = a(inputStream, options, bVar2, lVar.f3825a);
        bVar2.a(lVar.f3825a, bitmapA);
        if (Log.isLoggable("Downsampler", 2)) {
            i4 = iA;
            a(i5, i6, str, options, bitmapA, i2, i3, jA);
        } else {
            i4 = iA;
        }
        Bitmap bitmapA2 = null;
        if (bitmapA != null) {
            bitmapA.setDensity(lVar.f3826b.densityDpi);
            bitmapA2 = w.a(lVar.f3825a, bitmapA, i4);
            if (!bitmapA.equals(bitmapA2)) {
                lVar.f3825a.a(bitmapA);
            }
        }
        return bitmapA2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Bitmap a(java.io.InputStream r6, android.graphics.BitmapFactory.Options r7, com.bumptech.glide.load.p.c.l.b r8, com.bumptech.glide.load.n.a0.e r9) throws java.io.IOException {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r7.inJustDecodeBounds
            if (r1 == 0) goto Lc
            r1 = 10485760(0xa00000, float:1.469368E-38)
            r6.mark(r1)
            goto Lf
        Lc:
            r8.a()
        Lf:
            int r1 = r7.outWidth
            int r2 = r7.outHeight
            java.lang.String r3 = r7.outMimeType
            java.util.concurrent.locks.Lock r4 = com.bumptech.glide.load.p.c.w.a()
            r4.lock()
            r4 = 0
            android.graphics.Bitmap r8 = android.graphics.BitmapFactory.decodeStream(r6, r4, r7)     // Catch: java.lang.Throwable -> L30 java.lang.IllegalArgumentException -> L32
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.p.c.w.a()
            r9.unlock()
            boolean r7 = r7.inJustDecodeBounds
            if (r7 == 0) goto L2f
            r6.reset()
        L2f:
            return r8
        L30:
            r6 = move-exception
            goto L5f
        L32:
            r5 = move-exception
            java.io.IOException r1 = a(r5, r1, r2, r3, r7)     // Catch: java.lang.Throwable -> L30
            r2 = 3
            boolean r2 = android.util.Log.isLoggable(r0, r2)     // Catch: java.lang.Throwable -> L30
            if (r2 == 0) goto L43
            java.lang.String r2 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r2, r1)     // Catch: java.lang.Throwable -> L30
        L43:
            android.graphics.Bitmap r0 = r7.inBitmap     // Catch: java.lang.Throwable -> L30
            if (r0 == 0) goto L5e
            r6.reset()     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L5d
            android.graphics.Bitmap r0 = r7.inBitmap     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L5d
            r9.a(r0)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L5d
            r7.inBitmap = r4     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L5d
            android.graphics.Bitmap r6 = a(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L5d
            java.util.concurrent.locks.Lock r7 = com.bumptech.glide.load.p.c.w.a()
            r7.unlock()
            return r6
        L5d:
            throw r1     // Catch: java.lang.Throwable -> L30
        L5e:
            throw r1     // Catch: java.lang.Throwable -> L30
        L5f:
            java.util.concurrent.locks.Lock r7 = com.bumptech.glide.load.p.c.w.a()
            r7.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p.c.l.a(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.p.c.l$b, com.bumptech.glide.load.n.a0.e):android.graphics.Bitmap");
    }

    private static synchronized BitmapFactory.Options a() {
        BitmapFactory.Options optionsPoll;
        synchronized (l) {
            optionsPoll = l.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            d(optionsPoll);
        }
        return optionsPoll;
    }

    private static IOException a(IllegalArgumentException illegalArgumentException, int i2, int i3, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + a(options), illegalArgumentException);
    }

    @TargetApi(19)
    private static String a(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    private static String a(BitmapFactory.Options options) {
        return a(options.inBitmap);
    }

    private static void a(int i2, int i3, String str, BitmapFactory.Options options, Bitmap bitmap, int i4, int i5, long j2) {
        Log.v("Downsampler", "Decoded " + a(bitmap) + " from [" + i2 + "x" + i3 + "] " + str + " with inBitmap " + a(options) + " for [" + i4 + "x" + i5 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + c.a.a.t.f.a(j2));
    }

    @TargetApi(26)
    private static void a(BitmapFactory.Options options, com.bumptech.glide.load.n.a0.e eVar, int i2, int i3) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = eVar.b(i2, i3, config);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(com.bumptech.glide.load.ImageHeaderParser.ImageType r18, java.io.InputStream r19, com.bumptech.glide.load.p.c.l.b r20, com.bumptech.glide.load.n.a0.e r21, com.bumptech.glide.load.p.c.k r22, int r23, int r24, int r25, int r26, int r27, android.graphics.BitmapFactory.Options r28) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 516
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p.c.l.a(com.bumptech.glide.load.ImageHeaderParser$ImageType, java.io.InputStream, com.bumptech.glide.load.p.c.l$b, com.bumptech.glide.load.n.a0.e, com.bumptech.glide.load.p.c.k, int, int, int, int, int, android.graphics.BitmapFactory$Options):void");
    }

    private void a(InputStream inputStream, com.bumptech.glide.load.b bVar, boolean z, boolean z2, BitmapFactory.Options options, int i2, int i3) {
        if (this.f3829e.a(i2, i3, options, bVar, z, z2)) {
            return;
        }
        if (bVar == com.bumptech.glide.load.b.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        boolean zHasAlpha = false;
        try {
            zHasAlpha = com.bumptech.glide.load.f.b(this.f3828d, inputStream, this.f3827c).hasAlpha();
        } catch (IOException e2) {
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + bVar, e2);
            }
        }
        options.inPreferredConfig = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        if (options.inPreferredConfig == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    private boolean a(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f3824k.contains(imageType);
    }

    private static int b(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    private static boolean b(BitmapFactory.Options options) {
        int i2;
        int i3 = options.inTargetDensity;
        return i3 > 0 && (i2 = options.inDensity) > 0 && i3 != i2;
    }

    private static int[] b(InputStream inputStream, BitmapFactory.Options options, b bVar, com.bumptech.glide.load.n.a0.e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        a(inputStream, options, bVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static int c(double d2) {
        return (int) (d2 + 0.5d);
    }

    private static void c(BitmapFactory.Options options) {
        d(options);
        synchronized (l) {
            l.offer(options);
        }
    }

    private static void d(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public com.bumptech.glide.load.n.v<Bitmap> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return a(inputStream, i2, i3, iVar, f3823j);
    }

    public com.bumptech.glide.load.n.v<Bitmap> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.i iVar, b bVar) {
        c.a.a.t.j.a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f3827c.b(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
        BitmapFactory.Options optionsA = a();
        optionsA.inTempStorage = bArr;
        com.bumptech.glide.load.b bVar2 = (com.bumptech.glide.load.b) iVar.a(f3819f);
        try {
            return d.a(a(inputStream, optionsA, (k) iVar.a(k.f3815f), bVar2, iVar.a(f3821h) != null && ((Boolean) iVar.a(f3821h)).booleanValue(), i2, i3, ((Boolean) iVar.a(f3820g)).booleanValue(), bVar), this.f3825a);
        } finally {
            c(optionsA);
            this.f3827c.a(bArr);
        }
    }

    public boolean a(InputStream inputStream) {
        return true;
    }

    public boolean a(ByteBuffer byteBuffer) {
        return true;
    }
}
