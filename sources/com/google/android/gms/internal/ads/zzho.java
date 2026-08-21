package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.util.Log;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public final class zzho {
    private static boolean zzahn = false;
    private static boolean zzaho = false;
    private int streamType;
    private zzgu zzadh;
    private int zzafn;
    private final zzhz zzahq;
    private final zzie zzahr;
    private final zzhe[] zzahs;
    private final zzhu zzaht;
    private final long[] zzahv;
    private final zzhq zzahw;
    private final LinkedList<zzhx> zzahx;
    private AudioTrack zzahy;
    private int zzahz;
    private int zzaia;
    private int zzaib;
    private boolean zzaic;
    private int zzaid;
    private long zzaie;
    private zzgu zzaif;
    private long zzaig;
    private long zzaih;
    private ByteBuffer zzaii;
    private int zzaij;
    private int zzaik;
    private int zzail;
    private long zzaim;
    private long zzain;
    private boolean zzaio;
    private long zzaip;
    private Method zzaiq;
    private int zzair;
    private long zzais;
    private long zzait;
    private int zzaiu;
    private long zzaiv;
    private long zzaiw;
    private int zzaix;
    private int zzaiy;
    private long zzaiz;
    private long zzaja;
    private long zzajb;
    private zzhe[] zzajc;
    private ByteBuffer[] zzajd;
    private ByteBuffer zzaje;
    private ByteBuffer zzajf;
    private byte[] zzajg;
    private int zzajh;
    private int zzaji;
    private boolean zzajj;
    private boolean zzajk;
    private int zzajl;
    private boolean zzajm;
    private boolean zzajn;
    private long zzajo;
    private float zzcw;
    private final zzhf zzahp = null;
    private final ConditionVariable zzahu = new ConditionVariable(true);

    public zzho(zzhf zzhfVar, zzhe[] zzheVarArr, zzhu zzhuVar) {
        zzhr zzhrVar = null;
        this.zzaht = zzhuVar;
        if (zzof.SDK_INT >= 18) {
            try {
                this.zzaiq = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzof.SDK_INT >= 19) {
            this.zzahw = new zzht();
        } else {
            this.zzahw = new zzhq(zzhrVar);
        }
        this.zzahq = new zzhz();
        this.zzahr = new zzie();
        this.zzahs = new zzhe[zzheVarArr.length + 3];
        this.zzahs[0] = new zzic();
        zzhe[] zzheVarArr2 = this.zzahs;
        zzheVarArr2[1] = this.zzahq;
        System.arraycopy(zzheVarArr, 0, zzheVarArr2, 2, zzheVarArr.length);
        this.zzahs[zzheVarArr.length + 2] = this.zzahr;
        this.zzahv = new long[10];
        this.zzcw = 1.0f;
        this.zzaiy = 0;
        this.streamType = 3;
        this.zzajl = 0;
        this.zzadh = zzgu.zzafz;
        this.zzaji = -1;
        this.zzajc = new zzhe[0];
        this.zzajd = new ByteBuffer[0];
        this.zzahx = new LinkedList<>();
    }

    private final boolean isInitialized() {
        return this.zzahy != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int zzaw(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1095064472: goto L2a;
                case 187078296: goto L20;
                case 1504578661: goto L16;
                case 1505942594: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L34
        Lc:
            java.lang.String r0 = "audio/vnd.dts.hd"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 3
            goto L35
        L16:
            java.lang.String r0 = "audio/eac3"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 1
            goto L35
        L20:
            java.lang.String r0 = "audio/ac3"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 0
            goto L35
        L2a:
            java.lang.String r0 = "audio/vnd.dts"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 2
            goto L35
        L34:
            r5 = -1
        L35:
            if (r5 == 0) goto L45
            if (r5 == r4) goto L43
            if (r5 == r3) goto L41
            if (r5 == r2) goto L3e
            return r1
        L3e:
            r5 = 8
            return r5
        L41:
            r5 = 7
            return r5
        L43:
            r5 = 6
            return r5
        L45:
            r5 = 5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzho.zzaw(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzb(java.nio.ByteBuffer r9, long r10) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instruction units count: 287
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzho.zzb(java.nio.ByteBuffer, long):boolean");
    }

    private final void zzdp(long j2) throws zzhw {
        ByteBuffer byteBuffer;
        int length = this.zzajc.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.zzajd[i2 - 1];
            } else {
                byteBuffer = this.zzaje;
                if (byteBuffer == null) {
                    byteBuffer = zzhe.zzagy;
                }
            }
            if (i2 == length) {
                zzb(byteBuffer, j2);
            } else {
                zzhe zzheVar = this.zzajc[i2];
                zzheVar.zzi(byteBuffer);
                ByteBuffer byteBufferZzew = zzheVar.zzew();
                this.zzajd[i2] = byteBufferZzew;
                if (byteBufferZzew.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    private final long zzdq(long j2) {
        return (j2 * 1000000) / ((long) this.zzafn);
    }

    private final long zzdr(long j2) {
        return (j2 * ((long) this.zzafn)) / 1000000;
    }

    private final void zzex() {
        ArrayList arrayList = new ArrayList();
        for (zzhe zzheVar : this.zzahs) {
            if (zzheVar.isActive()) {
                arrayList.add(zzheVar);
            } else {
                zzheVar.flush();
            }
        }
        int size = arrayList.size();
        this.zzajc = (zzhe[]) arrayList.toArray(new zzhe[size]);
        this.zzajd = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            zzhe zzheVar2 = this.zzajc[i2];
            zzheVar2.flush();
            this.zzajd[i2] = zzheVar2.zzew();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0032 -> B:8:0x0010). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzfa() throws com.google.android.gms.internal.ads.zzhw {
        /*
            r9 = this;
            int r0 = r9.zzaji
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L14
            boolean r0 = r9.zzaic
            if (r0 == 0) goto Lf
            com.google.android.gms.internal.ads.zzhe[] r0 = r9.zzajc
            int r0 = r0.length
            goto L10
        Lf:
            r0 = 0
        L10:
            r9.zzaji = r0
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            int r4 = r9.zzaji
            com.google.android.gms.internal.ads.zzhe[] r5 = r9.zzajc
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L36
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.zzev()
        L28:
            r9.zzdp(r7)
            boolean r0 = r4.zzeo()
            if (r0 != 0) goto L32
            return r3
        L32:
            int r0 = r9.zzaji
            int r0 = r0 + r2
            goto L10
        L36:
            java.nio.ByteBuffer r0 = r9.zzajf
            if (r0 == 0) goto L42
            r9.zzb(r0, r7)
            java.nio.ByteBuffer r0 = r9.zzajf
            if (r0 == 0) goto L42
            return r3
        L42:
            r9.zzaji = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzho.zzfa():boolean");
    }

    private final void zzfe() {
        if (isInitialized()) {
            if (zzof.SDK_INT >= 21) {
                this.zzahy.setVolume(this.zzcw);
                return;
            }
            AudioTrack audioTrack = this.zzahy;
            float f2 = this.zzcw;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    private final long zzff() {
        return this.zzaic ? this.zzaiw : this.zzaiv / ((long) this.zzaiu);
    }

    private final void zzfg() {
        this.zzaim = 0L;
        this.zzail = 0;
        this.zzaik = 0;
        this.zzain = 0L;
        this.zzaio = false;
        this.zzaip = 0L;
    }

    private final boolean zzfh() {
        if (zzof.SDK_INT >= 23) {
            return false;
        }
        int i2 = this.zzaib;
        return i2 == 5 || i2 == 6;
    }

    public final void pause() {
        this.zzajk = false;
        if (isInitialized()) {
            zzfg();
            this.zzahw.pause();
        }
    }

    public final void play() {
        this.zzajk = true;
        if (isInitialized()) {
            this.zzaja = System.nanoTime() / 1000;
            this.zzahy.play();
        }
    }

    public final void release() {
        reset();
        for (zzhe zzheVar : this.zzahs) {
            zzheVar.reset();
        }
        this.zzajl = 0;
        this.zzajk = false;
    }

    public final void reset() {
        if (isInitialized()) {
            this.zzais = 0L;
            this.zzait = 0L;
            this.zzaiv = 0L;
            this.zzaiw = 0L;
            this.zzaix = 0;
            zzgu zzguVar = this.zzaif;
            if (zzguVar != null) {
                this.zzadh = zzguVar;
                this.zzaif = null;
            } else if (!this.zzahx.isEmpty()) {
                this.zzadh = this.zzahx.getLast().zzadh;
            }
            this.zzahx.clear();
            this.zzaig = 0L;
            this.zzaih = 0L;
            this.zzaje = null;
            this.zzajf = null;
            int i2 = 0;
            while (true) {
                zzhe[] zzheVarArr = this.zzajc;
                if (i2 >= zzheVarArr.length) {
                    break;
                }
                zzhe zzheVar = zzheVarArr[i2];
                zzheVar.flush();
                this.zzajd[i2] = zzheVar.zzew();
                i2++;
            }
            this.zzajj = false;
            this.zzaji = -1;
            this.zzaii = null;
            this.zzaij = 0;
            this.zzaiy = 0;
            this.zzajb = 0L;
            zzfg();
            if (this.zzahy.getPlayState() == 3) {
                this.zzahy.pause();
            }
            AudioTrack audioTrack = this.zzahy;
            this.zzahy = null;
            this.zzahw.zza(null, false);
            this.zzahu.close();
            new zzhr(this, audioTrack).start();
        }
    }

    public final void setStreamType(int i2) {
        if (this.streamType == i2) {
            return;
        }
        this.streamType = i2;
        if (this.zzajm) {
            return;
        }
        reset();
        this.zzajl = 0;
    }

    public final void setVolume(float f2) {
        if (this.zzcw != f2) {
            this.zzcw = f2;
            zzfe();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) throws com.google.android.gms.internal.ads.zzhs {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzho.zza(java.lang.String, int, int, int, int, int[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zza(java.nio.ByteBuffer r25, long r26) throws com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instruction units count: 598
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzho.zza(java.nio.ByteBuffer, long):boolean");
    }

    public final boolean zzav(String str) {
        zzhf zzhfVar = this.zzahp;
        return zzhfVar != null && zzhfVar.zzp(zzaw(str));
    }

    public final zzgu zzb(zzgu zzguVar) {
        if (this.zzaic) {
            this.zzadh = zzgu.zzafz;
            return this.zzadh;
        }
        zzgu zzguVar2 = new zzgu(this.zzahr.zza(zzguVar.zzaga), this.zzahr.zzb(zzguVar.zzagb));
        zzgu zzguVar3 = this.zzaif;
        if (zzguVar3 == null) {
            zzguVar3 = !this.zzahx.isEmpty() ? this.zzahx.getLast().zzadh : this.zzadh;
        }
        if (!zzguVar2.equals(zzguVar3)) {
            if (isInitialized()) {
                this.zzaif = zzguVar2;
            } else {
                this.zzadh = zzguVar2;
            }
        }
        return this.zzadh;
    }

    public final boolean zzeo() {
        if (isInitialized()) {
            return this.zzajj && !zzfb();
        }
        return true;
    }

    public final void zzey() {
        if (this.zzaiy == 1) {
            this.zzaiy = 2;
        }
    }

    public final void zzez() {
        if (!this.zzajj && isInitialized() && zzfa()) {
            this.zzahw.zzds(zzff());
            this.zzaij = 0;
            this.zzajj = true;
        }
    }

    public final boolean zzfb() {
        if (isInitialized()) {
            if (zzff() <= this.zzahw.zzfi()) {
                if (zzfh() && this.zzahy.getPlayState() == 2 && this.zzahy.getPlaybackHeadPosition() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final zzgu zzfc() {
        return this.zzadh;
    }

    public final void zzfd() {
        if (this.zzajm) {
            this.zzajm = false;
            this.zzajl = 0;
            reset();
        }
    }

    public final long zzi(boolean z) {
        long jZzfj;
        long j2;
        long jZza;
        long j3;
        StringBuilder sb;
        String str;
        if (!(isInitialized() && this.zzaiy != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.zzahy.getPlayState() == 3) {
            long jZzfj2 = this.zzahw.zzfj();
            if (jZzfj2 != 0) {
                long jNanoTime = System.nanoTime() / 1000;
                if (jNanoTime - this.zzain >= 30000) {
                    long[] jArr = this.zzahv;
                    int i2 = this.zzaik;
                    jArr[i2] = jZzfj2 - jNanoTime;
                    this.zzaik = (i2 + 1) % 10;
                    int i3 = this.zzail;
                    if (i3 < 10) {
                        this.zzail = i3 + 1;
                    }
                    this.zzain = jNanoTime;
                    this.zzaim = 0L;
                    int i4 = 0;
                    while (true) {
                        int i5 = this.zzail;
                        if (i4 >= i5) {
                            break;
                        }
                        this.zzaim += this.zzahv[i4] / ((long) i5);
                        i4++;
                    }
                }
                if (!zzfh() && jNanoTime - this.zzaip >= 500000) {
                    this.zzaio = this.zzahw.zzfk();
                    if (this.zzaio) {
                        long jZzfl = this.zzahw.zzfl() / 1000;
                        long jZzfm = this.zzahw.zzfm();
                        if (jZzfl >= this.zzaja) {
                            if (Math.abs(jZzfl - jNanoTime) > 5000000) {
                                sb = new StringBuilder(136);
                                str = "Spurious audio timestamp (system clock mismatch): ";
                            } else if (Math.abs(zzdq(jZzfm) - jZzfj2) > 5000000) {
                                sb = new StringBuilder(TsExtractor.TS_STREAM_TYPE_DTS);
                                str = "Spurious audio timestamp (frame position mismatch): ";
                            }
                            sb.append(str);
                            sb.append(jZzfm);
                            sb.append(", ");
                            sb.append(jZzfl);
                            sb.append(", ");
                            sb.append(jNanoTime);
                            sb.append(", ");
                            sb.append(jZzfj2);
                            Log.w("AudioTrack", sb.toString());
                            this.zzaio = false;
                        } else {
                            this.zzaio = false;
                        }
                    }
                    Method method = this.zzaiq;
                    if (method != null && !this.zzaic) {
                        try {
                            this.zzajb = (((long) ((Integer) method.invoke(this.zzahy, null)).intValue()) * 1000) - this.zzaie;
                            this.zzajb = Math.max(this.zzajb, 0L);
                            if (this.zzajb > 5000000) {
                                long j4 = this.zzajb;
                                StringBuilder sb2 = new StringBuilder(61);
                                sb2.append("Ignoring impossibly large audio latency: ");
                                sb2.append(j4);
                                Log.w("AudioTrack", sb2.toString());
                                this.zzajb = 0L;
                            }
                        } catch (Exception unused) {
                            this.zzaiq = null;
                        }
                    }
                    this.zzaip = jNanoTime;
                }
            }
        }
        long jNanoTime2 = System.nanoTime() / 1000;
        if (this.zzaio) {
            jZzfj = zzdq(this.zzahw.zzfm() + zzdr(jNanoTime2 - (this.zzahw.zzfl() / 1000)));
        } else {
            jZzfj = this.zzail == 0 ? this.zzahw.zzfj() : jNanoTime2 + this.zzaim;
            if (!z) {
                jZzfj -= this.zzajb;
            }
        }
        long j5 = this.zzaiz;
        while (!this.zzahx.isEmpty() && jZzfj >= this.zzahx.getFirst().zzaev) {
            zzhx zzhxVarRemove = this.zzahx.remove();
            this.zzadh = zzhxVarRemove.zzadh;
            this.zzaih = zzhxVarRemove.zzaev;
            this.zzaig = zzhxVarRemove.zzake - this.zzaiz;
        }
        if (this.zzadh.zzaga == 1.0f) {
            j3 = (jZzfj + this.zzaig) - this.zzaih;
        } else {
            if (!this.zzahx.isEmpty() || this.zzahr.zzfq() < 1024) {
                j2 = this.zzaig;
                double d2 = this.zzadh.zzaga;
                double d3 = jZzfj - this.zzaih;
                Double.isNaN(d2);
                Double.isNaN(d3);
                jZza = (long) (d2 * d3);
            } else {
                j2 = this.zzaig;
                jZza = zzof.zza(jZzfj - this.zzaih, this.zzahr.zzfp(), this.zzahr.zzfq());
            }
            j3 = jZza + j2;
        }
        return j5 + j3;
    }

    public final void zzs(int i2) {
        zznr.checkState(zzof.SDK_INT >= 21);
        if (this.zzajm && this.zzajl == i2) {
            return;
        }
        this.zzajm = true;
        this.zzajl = i2;
        reset();
    }
}
