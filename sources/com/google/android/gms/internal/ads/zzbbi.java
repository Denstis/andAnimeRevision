package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbbi extends zzbax {
    private static final Set<String> zzedr = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzeds = new DecimalFormat("#,###");
    private File zzedt;
    private boolean zzedu;

    public zzbbi(zzazj zzazjVar) {
        super(zzazjVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzaxi.zzeu("Context.getCacheDir() returned null");
            return;
        }
        this.zzedt = new File(cacheDir, "admobVideoStreams");
        if (!this.zzedt.isDirectory() && !this.zzedt.mkdirs()) {
            String strValueOf = String.valueOf(this.zzedt.getAbsolutePath());
            zzaxi.zzeu(strValueOf.length() != 0 ? "Could not create preload cache directory at ".concat(strValueOf) : new String("Could not create preload cache directory at "));
            this.zzedt = null;
        } else {
            if (this.zzedt.setReadable(true, false) && this.zzedt.setExecutable(true, false)) {
                return;
            }
            String strValueOf2 = String.valueOf(this.zzedt.getAbsolutePath());
            zzaxi.zzeu(strValueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(strValueOf2) : new String("Could not set cache file permissions at "));
            this.zzedt = null;
        }
    }

    private final File zzc(File file) {
        return new File(this.zzedt, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void abort() {
        this.zzedu = true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:64|(1:299)|(2:66|(14:68|69|(3:288|71|(2:73|(2:75|(3:85|(2:87|322)(2:88|321)|89)(5:320|79|(1:81)(1:82)|83|84))(3:319|90|91))(3:318|92|93))(1:317)|98|247|(1:249)|274|250|253|(1:255)(1:256)|257|(3:261|(1:263)(1:264)|265)|266|267)(4:316|233|234|235))(3:315|236|237)|246|247|(0)|274|250|253|(0)(0)|257|(4:259|261|(0)(0)|265)|266|267) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ee, code lost:
    
        if ((r5 instanceof java.net.HttpURLConnection) == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f0, code lost:
    
        r1 = r5.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f6, code lost:
    
        if (r1 < 400) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f8, code lost:
    
        r15 = "badUrl";
        r2 = java.lang.String.valueOf(java.lang.Integer.toString(r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0208, code lost:
    
        if (r2.length() == 0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x020a, code lost:
    
        r2 = "HTTP request failed. Code: ".concat(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0210, code lost:
    
        r2 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0215, code lost:
    
        r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r31).length() + 32);
        r4.append("HTTP status code ");
        r4.append(r1);
        r4.append(" at ");
        r4.append(r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x023d, code lost:
    
        throw new java.io.IOException(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x023e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0240, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0242, code lost:
    
        r7 = r5.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0246, code lost:
    
        if (r7 >= 0) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0248, code lost:
    
        r1 = java.lang.String.valueOf(r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0252, code lost:
    
        if (r1.length() == 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0254, code lost:
    
        r0 = "Stream cache aborted, missing content-length header at ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0259, code lost:
    
        r0 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x025f, code lost:
    
        com.google.android.gms.internal.ads.zzaxi.zzeu(r0);
        zza(r31, r12.getAbsolutePath(), "contentLengthMissing", null);
        com.google.android.gms.internal.ads.zzbbi.zzedr.remove(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0270, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0271, code lost:
    
        r1 = com.google.android.gms.internal.ads.zzbbi.zzeds.format(r7);
        r3 = ((java.lang.Integer) com.google.android.gms.internal.ads.zzuv.zzon().zzd(com.google.android.gms.internal.ads.zzza.zzchh)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0288, code lost:
    
        if (r7 <= r3) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x028a, code lost:
    
        r2 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 33) + java.lang.String.valueOf(r31).length());
        r2.append("Content length ");
        r2.append(r1);
        r2.append(" exceeds limit at ");
        r2.append(r31);
        com.google.android.gms.internal.ads.zzaxi.zzeu(r2.toString());
        r1 = java.lang.String.valueOf(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02c3, code lost:
    
        if (r1.length() == 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02c5, code lost:
    
        r0 = "File too big for full file cache. Size: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02ca, code lost:
    
        r0 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02d0, code lost:
    
        zza(r31, r12.getAbsolutePath(), "sizeExceeded", r0);
        com.google.android.gms.internal.ads.zzbbi.zzedr.remove(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02de, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02df, code lost:
    
        r4 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 20) + java.lang.String.valueOf(r31).length());
        r4.append("Caching ");
        r4.append(r1);
        r4.append(" bytes from ");
        r4.append(r31);
        com.google.android.gms.internal.ads.zzaxi.zzdv(r4.toString());
        r5 = java.nio.channels.Channels.newChannel(r5.getInputStream());
        r4 = new java.io.FileOutputStream(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x031a, code lost:
    
        r2 = r4.getChannel();
        r1 = java.nio.ByteBuffer.allocate(com.google.android.exoplayer2.source.ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        r16 = com.google.android.gms.ads.internal.zzq.zzkq();
        r17 = r16.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0338, code lost:
    
        r10 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0339, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzawo(((java.lang.Long) com.google.android.gms.internal.ads.zzuv.zzon().zzd(com.google.android.gms.internal.ads.zzza.zzchk)).longValue());
        r13 = ((java.lang.Long) com.google.android.gms.internal.ads.zzuv.zzon().zzd(com.google.android.gms.internal.ads.zzza.zzchj)).longValue();
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0352, code lost:
    
        r20 = r5.read(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0356, code lost:
    
        if (r20 < 0) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0358, code lost:
    
        r11 = r11 + r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x035a, code lost:
    
        if (r11 <= r3) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x035c, code lost:
    
        r15 = "sizeExceeded";
        r1 = java.lang.String.valueOf(java.lang.Integer.toString(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x036c, code lost:
    
        if (r1.length() == 0) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x036e, code lost:
    
        r1 = "File too big for full file cache. Size: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0374, code lost:
    
        r1 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0380, code lost:
    
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0383, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0384, code lost:
    
        r2 = r1;
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0389, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x038a, code lost:
    
        r1 = r10;
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x038c, code lost:
    
        r10 = r4;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x038f, code lost:
    
        r1.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0396, code lost:
    
        if (r2.write(r1) > 0) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0398, code lost:
    
        r1.clear();
        r24 = ((r16.currentTimeMillis() - r17) > (1000 * r13) ? 1 : ((r16.currentTimeMillis() - r17) == (1000 * r13) ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x03a7, code lost:
    
        if (r24 > 0) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x03a9, code lost:
    
        r20 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x03ad, code lost:
    
        if (r30.zzedu != false) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x03b3, code lost:
    
        if (r6.tryAcquire() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x03bb, code lost:
    
        r22 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x03bf, code lost:
    
        r24 = r10;
        r25 = r2;
        r26 = r3;
        r27 = r4;
        r21 = r5;
        r19 = r6;
        r29 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03dd, code lost:
    
        com.google.android.gms.internal.ads.zzawy.zzzb.post(new com.google.android.gms.internal.ads.zzbba(r30, r31, r12.getAbsolutePath(), r11, r7, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03e4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03e6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03e7, code lost:
    
        r27 = r4;
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x03ec, code lost:
    
        r25 = r2;
        r26 = r3;
        r27 = r4;
        r21 = r5;
        r19 = r6;
        r29 = r7;
        r24 = r10;
        r22 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03fe, code lost:
    
        r6 = r19;
        r1 = r20;
        r5 = r21;
        r15 = r22;
        r10 = r24;
        r2 = r25;
        r3 = r26;
        r4 = r27;
        r7 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0421, code lost:
    
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0422, code lost:
    
        r27 = r4;
        r24 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0428, code lost:
    
        r15 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x042a, code lost:
    
        r0 = java.lang.Long.toString(r13);
        r2 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
        r2.append("Timeout exceeded. Limit: ");
        r2.append(r0);
        r2.append(" sec");
        r10 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0455, code lost:
    
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0456, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0459, code lost:
    
        r2 = r10;
        r1 = r24;
        r10 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0460, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0462, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0468, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x046b, code lost:
    
        r27 = r4;
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0472, code lost:
    
        r27 = r4;
        r24 = r10;
        r22 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x047a, code lost:
    
        r27.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0481, code lost:
    
        if (com.google.android.gms.internal.ads.zzaxi.isLoggable(3) == false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0483, code lost:
    
        r1 = com.google.android.gms.internal.ads.zzbbi.zzeds.format(r11);
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r1).length() + 22) + java.lang.String.valueOf(r31).length());
        r3.append("Preloaded ");
        r3.append(r1);
        r3.append(" bytes from ");
        r3.append(r31);
        com.google.android.gms.internal.ads.zzaxi.zzdv(r3.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x04ba, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x04bc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x04bd, code lost:
    
        r15 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x04bf, code lost:
    
        r1 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x04c4, code lost:
    
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x04cb, code lost:
    
        if (r0.isFile() == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x04cd, code lost:
    
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x04d5, code lost:
    
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x04ee, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x04ef, code lost:
    
        r1 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x04f6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04f7, code lost:
    
        r27 = r4;
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04fd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04fe, code lost:
    
        r27 = r4;
        r1 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0501, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0520: MOVE (r15 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY]), block:B:241:0x0520 */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05a9  */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v74 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r1v90 */
    /* JADX WARN: Type inference failed for: r1v91 */
    /* JADX WARN: Type inference failed for: r1v92 */
    /* JADX WARN: Type inference failed for: r1v93 */
    /* JADX WARN: Type inference failed for: r1v94 */
    /* JADX WARN: Type inference failed for: r1v95 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4, types: [int] */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    @Override // com.google.android.gms.internal.ads.zzbax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzfd(java.lang.String r31) {
        /*
            Method dump skipped, instruction units count: 1477
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbi.zzfd(java.lang.String):boolean");
    }
}
