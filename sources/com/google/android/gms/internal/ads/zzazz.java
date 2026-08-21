package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
final class zzazz implements zzne {
    private static final Pattern zzbem = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> zzben = new AtomicReference<>();
    private final int zzbep;
    private final int zzbeq;
    private final String zzber;
    private final zzns<? super zzazz> zzbev;
    private zznf zzbew;
    private HttpURLConnection zzbex;
    private InputStream zzbey;
    private boolean zzbez;
    private long zzbfa;
    private long zzbfb;
    private long zzbfc;
    private long zzcc;
    private int zzebt;
    private SSLSocketFactory zzebs = new zzbac(this);
    private Set<Socket> zzebu = new HashSet();
    private final zznm zzbeu = new zznm();

    zzazz(String str, zzns<? super zzazz> zznsVar, int i2, int i3, int i4) {
        this.zzber = zznr.checkNotEmpty(str);
        this.zzbev = zznsVar;
        this.zzbep = i2;
        this.zzbeq = i3;
        this.zzebt = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Socket socket) {
        this.zzebu.add(socket);
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
                zzaxi.zzes(sb.toString());
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
            zzaxi.zzeu(sb2.toString());
            return Math.max(j2, j3);
        } catch (NumberFormatException unused2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(headerField2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(headerField2);
            sb3.append("]");
            zzaxi.zzes(sb3.toString());
            return j2;
        }
    }

    private final void zzic() {
        HttpURLConnection httpURLConnection = this.zzbex;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                zzaxi.zzc("Unexpected error while disconnecting", e2);
            }
            this.zzbex = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: Exception -> 0x006b, all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:3:0x0002, B:5:0x0006, B:7:0x0010, B:9:0x0018, B:11:0x001e, B:26:0x006b, B:29:0x0072, B:30:0x007a, B:14:0x0024, B:16:0x002c, B:21:0x003a, B:23:0x004a, B:25:0x0052, B:8:0x0013), top: B:47:0x0002, inners: #2 }] */
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
            java.io.InputStream r2 = r9.zzbey     // Catch: java.lang.Throwable -> L93
            if (r2 == 0) goto L7b
            java.net.HttpURLConnection r2 = r9.zzbex     // Catch: java.lang.Throwable -> L93
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L93
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L13
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L93
            goto L18
        L13:
            long r3 = r9.zzbfb     // Catch: java.lang.Throwable -> L93
            long r7 = r9.zzcc     // Catch: java.lang.Throwable -> L93
            long r3 = r3 - r7
        L18:
            int r7 = com.google.android.gms.internal.ads.zzof.SDK_INT     // Catch: java.lang.Throwable -> L93
            r8 = 19
            if (r7 == r8) goto L24
            int r7 = com.google.android.gms.internal.ads.zzof.SDK_INT     // Catch: java.lang.Throwable -> L93
            r8 = 20
            if (r7 != r8) goto L6b
        L24:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L34
            int r3 = r2.read()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r4 = -1
            if (r3 != r4) goto L3a
            goto L6b
        L34:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L6b
        L3a:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            if (r4 != 0) goto L52
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            if (r3 == 0) goto L6b
        L52:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L93
        L6b:
            java.io.InputStream r2 = r9.zzbey     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L93
            r2.close()     // Catch: java.io.IOException -> L71 java.lang.Throwable -> L93
            goto L7b
        L71:
            r2 = move-exception
            com.google.android.gms.internal.ads.zznk r3 = new com.google.android.gms.internal.ads.zznk     // Catch: java.lang.Throwable -> L93
            com.google.android.gms.internal.ads.zznf r4 = r9.zzbew     // Catch: java.lang.Throwable -> L93
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L93
            throw r3     // Catch: java.lang.Throwable -> L93
        L7b:
            r9.zzbey = r0
            r9.zzic()
            boolean r0 = r9.zzbez
            if (r0 == 0) goto L8d
            r9.zzbez = r1
            com.google.android.gms.internal.ads.zzns<? super com.google.android.gms.internal.ads.zzazz> r0 = r9.zzbev
            if (r0 == 0) goto L8d
            r0.zze(r9)
        L8d:
            java.util.Set<java.net.Socket> r0 = r9.zzebu
            r0.clear()
            return
        L93:
            r2 = move-exception
            r9.zzbey = r0
            r9.zzic()
            boolean r0 = r9.zzbez
            if (r0 == 0) goto La6
            r9.zzbez = r1
            com.google.android.gms.internal.ads.zzns<? super com.google.android.gms.internal.ads.zzazz> r0 = r9.zzbev
            if (r0 == 0) goto La6
            r0.zze(r9)
        La6:
            java.util.Set<java.net.Socket> r0 = r9.zzebu
            r0.clear()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazz.close():void");
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

    final void setReceiveBufferSize(int i2) {
        this.zzebt = i2;
        for (Socket socket : this.zzebu) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzebt);
                } catch (SocketException e2) {
                    zzaxi.zzd("Failed to update receive buffer size.", e2);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012d, code lost:
    
        r23.zzbex = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012f, code lost:
    
        r0 = r23.zzbex.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0137, code lost:
    
        if (r0 < 200) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013b, code lost:
    
        if (r0 <= 299) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013e, code lost:
    
        if (r0 != 200) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0140, code lost:
    
        r4 = r24.zzamq;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0146, code lost:
    
        if (r4 == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0149, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014c, code lost:
    
        r23.zzbfa = r4;
        r0 = r24.zzaz(1);
        r3 = r24.zzcb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0155, code lost:
    
        if (r0 != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015b, code lost:
    
        if (r3 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x015e, code lost:
    
        r3 = zzc(r23.zzbex);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0166, code lost:
    
        if (r3 == (-1)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0168, code lost:
    
        r3 = r3 - r23.zzbfa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016c, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x016d, code lost:
    
        r23.zzbfb = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x016f, code lost:
    
        r23.zzbey = r23.zzbex.getInputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0177, code lost:
    
        r23.zzbez = true;
        r0 = r23.zzbev;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x017c, code lost:
    
        if (r0 == null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017e, code lost:
    
        r0.zza(r23, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0183, code lost:
    
        return r23.zzbfb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0184, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0185, code lost:
    
        zzic();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018e, code lost:
    
        throw new com.google.android.gms.internal.ads.zznk(r0, r24, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x018f, code lost:
    
        r3 = r23.zzbex.getHeaderFields();
        zzic();
        r4 = new com.google.android.gms.internal.ads.zznj(r0, r3, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x019f, code lost:
    
        if (r0 != 416) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01a1, code lost:
    
        r4.initCause(new com.google.android.gms.internal.ads.zzng(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01aa, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01ab, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ac, code lost:
    
        zzic();
        r5 = java.lang.String.valueOf(r24.uri.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01bf, code lost:
    
        if (r5.length() != 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c1, code lost:
    
        r3 = "Unable to connect to ".concat(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c6, code lost:
    
        r3 = new java.lang.String("Unable to connect to ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d0, code lost:
    
        throw new com.google.android.gms.internal.ads.zznk(r3, r0, r24, 1);
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010a A[Catch: IOException -> 0x023e, TryCatch #1 {IOException -> 0x023e, blocks: (B:3:0x000f, B:4:0x0027, B:6:0x002d, B:8:0x0037, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:24:0x00d2, B:26:0x00db, B:27:0x00e2, B:31:0x00eb, B:33:0x00f0, B:35:0x00f8, B:37:0x010d, B:51:0x012d, B:95:0x01d5, B:97:0x01e0, B:99:0x01f1, B:101:0x01f9, B:103:0x0207, B:105:0x0211, B:106:0x0214, B:104:0x020c, B:108:0x021d, B:109:0x0224, B:36:0x010a, B:19:0x0087, B:21:0x00a3, B:23:0x00cd, B:110:0x0225, B:111:0x023d), top: B:122:0x000f }] */
    @Override // com.google.android.gms.internal.ads.zzne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zza(com.google.android.gms.internal.ads.zznf r24) throws com.google.android.gms.internal.ads.zznk {
        /*
            Method dump skipped, instruction units count: 611
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazz.zza(com.google.android.gms.internal.ads.zznf):long");
    }
}
