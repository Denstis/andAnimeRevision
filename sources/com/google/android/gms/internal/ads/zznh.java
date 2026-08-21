package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zznh implements zzne {
    private static final Pattern zzbem = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzben = new AtomicReference<>();
    private final int zzbep;
    private final int zzbeq;
    private final String zzber;
    private final zzns<? super zznh> zzbev;
    private zznf zzbew;
    private HttpURLConnection zzbex;
    private InputStream zzbey;
    private boolean zzbez;
    private long zzbfa;
    private long zzbfb;
    private long zzbfc;
    private long zzcc;
    private final zzoe<String> zzbes = null;
    private final zznm zzbeu = new zznm();
    private final boolean zzbeo = true;
    private final zznm zzbet = null;

    public zznh(String str, zzoe<String> zzoeVar, zzns<? super zznh> zznsVar, int i2, int i3, boolean z, zznm zznmVar) {
        this.zzber = zznr.checkNotEmpty(str);
        this.zzbev = zznsVar;
        this.zzbep = i2;
        this.zzbeq = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.net.HttpURLConnection zza(java.net.URL r6, byte[] r7, long r8, long r10, boolean r12, boolean r13) throws java.io.IOException {
        /*
            r5 = this;
            java.net.URLConnection r6 = r6.openConnection()
            java.net.HttpURLConnection r6 = (java.net.HttpURLConnection) r6
            int r0 = r5.zzbep
            r6.setConnectTimeout(r0)
            int r0 = r5.zzbeq
            r6.setReadTimeout(r0)
            com.google.android.gms.internal.ads.zznm r0 = r5.zzbeu
            java.util.Map r0 = r0.zzif()
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r6.setRequestProperty(r2, r1)
            goto L1e
        L3a:
            r0 = 0
            r2 = -1
            int r4 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r4 != 0) goto L46
            int r0 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r0 == 0) goto L88
        L46:
            r0 = 27
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "bytes="
            r1.append(r0)
            r1.append(r8)
            java.lang.String r0 = "-"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            int r1 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r1 == 0) goto L83
            java.lang.String r0 = java.lang.String.valueOf(r0)
            long r8 = r8 + r10
            r10 = 1
            long r8 = r8 - r10
            java.lang.String r10 = java.lang.String.valueOf(r0)
            int r10 = r10.length()
            int r10 = r10 + 20
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>(r10)
            r11.append(r0)
            r11.append(r8)
            java.lang.String r0 = r11.toString()
        L83:
            java.lang.String r8 = "Range"
            r6.setRequestProperty(r8, r0)
        L88:
            java.lang.String r8 = r5.zzber
            java.lang.String r9 = "User-Agent"
            r6.setRequestProperty(r9, r8)
            if (r12 != 0) goto L98
            java.lang.String r8 = "Accept-Encoding"
            java.lang.String r9 = "identity"
            r6.setRequestProperty(r8, r9)
        L98:
            r6.setInstanceFollowRedirects(r13)
            if (r7 == 0) goto L9f
            r8 = 1
            goto La0
        L9f:
            r8 = 0
        La0:
            r6.setDoOutput(r8)
            if (r7 == 0) goto Lbf
            java.lang.String r8 = "POST"
            r6.setRequestMethod(r8)
            int r8 = r7.length
            if (r8 == 0) goto Lbf
            int r8 = r7.length
            r6.setFixedLengthStreamingMode(r8)
            r6.connect()
            java.io.OutputStream r8 = r6.getOutputStream()
            r8.write(r7)
            r8.close()
            goto Lc2
        Lbf:
            r6.connect()
        Lc2:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznh.zza(java.net.URL, byte[], long, long, boolean, boolean):java.net.HttpURLConnection");
    }

    private static long zzc(HttpURLConnection httpURLConnection) {
        long j2;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (TextUtils.isEmpty(headerField)) {
            j2 = -1;
        } else {
            try {
                j2 = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(headerField).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(headerField);
                sb.append("]");
                Log.e("DefaultHttpDataSource", sb.toString());
                j2 = -1;
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (TextUtils.isEmpty(headerField2)) {
            return j2;
        }
        Matcher matcher = zzbem.matcher(headerField2);
        if (!matcher.find()) {
            return j2;
        }
        try {
            long j3 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j2 < 0) {
                return j3;
            }
            if (j2 == j3) {
                return j2;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(headerField).length() + 26 + String.valueOf(headerField2).length());
            sb2.append("Inconsistent headers [");
            sb2.append(headerField);
            sb2.append("] [");
            sb2.append(headerField2);
            sb2.append("]");
            Log.w("DefaultHttpDataSource", sb2.toString());
            return Math.max(j2, j3);
        } catch (NumberFormatException unused2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(headerField2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(headerField2);
            sb3.append("]");
            Log.e("DefaultHttpDataSource", sb3.toString());
            return j2;
        }
    }

    private final void zzic() {
        HttpURLConnection httpURLConnection = this.zzbex;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.zzbex = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: Exception -> 0x006b, all -> 0x008e, TryCatch #0 {Exception -> 0x006b, blocks: (B:14:0x0024, B:16:0x002c, B:21:0x003a, B:23:0x004a, B:25:0x0052), top: B:45:0x0024 }] */
    @Override // com.google.android.gms.internal.ads.zzne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r9.zzbey     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L7b
            java.net.HttpURLConnection r2 = r9.zzbex     // Catch: java.lang.Throwable -> L8e
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L8e
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L8e
            goto L18
        L13:
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L8e
            long r7 = r9.zzcc     // Catch: java.lang.Throwable -> L8e
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.zzof.SDK_INT     // Catch: java.lang.Throwable -> L8e
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.zzof.SDK_INT     // Catch: java.lang.Throwable -> L8e
            r8 = 20
            if (r7 != r8) goto L6b
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6b
        L34:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6b
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            if (r3 == 0) goto L6b
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L8e
        L6b:
            java.io.InputStream r2 = r9.zzbey     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L8e
            r2.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L8e
            goto L7b
        L71:
            r2 = move-exception
            com.google.android.gms.internal.ads.zznk r3 = new com.google.android.gms.internal.ads.zznk     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zznf r4 = r9.zzbew     // Catch: java.lang.Throwable -> L8e
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L8e
            throw r3     // Catch: java.lang.Throwable -> L8e
        L7b:
            r9.zzbey = r0
            r9.zzic()
            boolean r0 = r9.zzbez
            if (r0 == 0) goto L8d
            r9.zzbez = r1
            com.google.android.gms.internal.ads.zzns<? super com.google.android.gms.internal.ads.zznh> r0 = r9.zzbev
            if (r0 == 0) goto L8d
            r0.zze(r9)
        L8d:
            return
        L8e:
            r2 = move-exception
            r9.zzbey = r0
            r9.zzic()
            boolean r0 = r9.zzbez
            if (r0 == 0) goto La1
            r9.zzbez = r1
            com.google.android.gms.internal.ads.zzns<? super com.google.android.gms.internal.ads.zznh> r0 = r9.zzbev
            if (r0 == 0) goto La1
            r0.zze(r9)
        La1:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznh.close():void");
    }

    public final Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.zzbex;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.zzbex;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int read(byte[] bArr, int i2, int i3) throws zznk {
        try {
            if (this.zzbfc != this.zzbfa) {
                byte[] andSet = zzben.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[MpegAudioHeader.MAX_FRAME_SIZE_BYTES];
                }
                while (this.zzbfc != this.zzbfa) {
                    int i4 = this.zzbey.read(andSet, 0, (int) Math.min(this.zzbfa - this.zzbfc, andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i4 == -1) {
                        throw new EOFException();
                    }
                    this.zzbfc += (long) i4;
                    if (this.zzbev != null) {
                        this.zzbev.zzc(this, i4);
                    }
                }
                zzben.set(andSet);
            }
            if (i3 == 0) {
                return 0;
            }
            if (this.zzbfb != -1) {
                long j2 = this.zzbfb - this.zzcc;
                if (j2 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i3, j2);
            }
            int i5 = this.zzbey.read(bArr, i2, i3);
            if (i5 == -1) {
                if (this.zzbfb == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.zzcc += (long) i5;
            if (this.zzbev != null) {
                this.zzbev.zzc(this, i5);
            }
            return i5;
        } catch (IOException e2) {
            throw new zznk(e2, this.zzbew, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cc  */
    @Override // com.google.android.gms.internal.ads.zzne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zza(com.google.android.gms.internal.ads.zznf r25) throws com.google.android.gms.internal.ads.zznk {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznh.zza(com.google.android.gms.internal.ads.zznf):long");
    }
}
