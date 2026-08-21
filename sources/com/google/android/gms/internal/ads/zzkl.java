package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public abstract class zzkl extends zzgb {
    private static final byte[] zzaxm = zzof.zzbj("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private zzgo zzafx;
    private ByteBuffer[] zzajd;
    private final zzkn zzaxn;
    private final zzis<Object> zzaxo;
    private final boolean zzaxp;
    private final zzik zzaxq;
    private final zzik zzaxr;
    private final zzgq zzaxs;
    private final List<Long> zzaxt;
    private final MediaCodec.BufferInfo zzaxu;
    private zziq<Object> zzaxv;
    private zziq<Object> zzaxw;
    private MediaCodec zzaxx;
    private zzkm zzaxy;
    private boolean zzaxz;
    private boolean zzaya;
    private boolean zzayb;
    private boolean zzayc;
    private boolean zzayd;
    private boolean zzaye;
    private boolean zzayf;
    private boolean zzayg;
    private boolean zzayh;
    private ByteBuffer[] zzayi;
    private long zzayj;
    private int zzayk;
    private int zzayl;
    private boolean zzaym;
    private boolean zzayn;
    private int zzayo;
    private int zzayp;
    private boolean zzayq;
    private boolean zzayr;
    private boolean zzays;
    private boolean zzayt;
    private boolean zzayu;
    private boolean zzayv;
    protected zzil zzayw;

    public zzkl(int i2, zzkn zzknVar, zzis<Object> zzisVar, boolean z) {
        super(i2);
        zznr.checkState(zzof.SDK_INT >= 16);
        this.zzaxn = (zzkn) zznr.checkNotNull(zzknVar);
        this.zzaxo = zzisVar;
        this.zzaxp = z;
        this.zzaxq = new zzik(0);
        this.zzaxr = new zzik(0);
        this.zzaxs = new zzgq();
        this.zzaxt = new ArrayList();
        this.zzaxu = new MediaCodec.BufferInfo();
        this.zzayo = 0;
        this.zzayp = 0;
    }

    private final void zza(zzko zzkoVar) throws zzgd {
        throw zzgd.zza(zzkoVar, getIndex());
    }

    private final boolean zzd(long j2, long j3) throws zzgd {
        boolean zZza;
        boolean z;
        if (this.zzayl < 0) {
            if (this.zzaye && this.zzayr) {
                try {
                    this.zzayl = this.zzaxx.dequeueOutputBuffer(this.zzaxu, 0L);
                } catch (IllegalStateException unused) {
                    zzgt();
                    if (this.zzayt) {
                        zzgr();
                    }
                    return false;
                }
            } else {
                this.zzayl = this.zzaxx.dequeueOutputBuffer(this.zzaxu, 0L);
            }
            int i2 = this.zzayl;
            if (i2 < 0) {
                if (i2 != -2) {
                    if (i2 == -3) {
                        this.zzajd = this.zzaxx.getOutputBuffers();
                        return true;
                    }
                    if (this.zzayc && (this.zzays || this.zzayp == 2)) {
                        zzgt();
                    }
                    return false;
                }
                MediaFormat outputFormat = this.zzaxx.getOutputFormat();
                if (this.zzayb && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.zzayh = true;
                } else {
                    if (this.zzayf) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    onOutputFormatChanged(this.zzaxx, outputFormat);
                }
                return true;
            }
            if (this.zzayh) {
                this.zzayh = false;
                this.zzaxx.releaseOutputBuffer(i2, false);
                this.zzayl = -1;
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.zzaxu;
            if ((bufferInfo.flags & 4) != 0) {
                zzgt();
                this.zzayl = -1;
                return false;
            }
            ByteBuffer byteBuffer = this.zzajd[i2];
            if (byteBuffer != null) {
                byteBuffer.position(bufferInfo.offset);
                MediaCodec.BufferInfo bufferInfo2 = this.zzaxu;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            long j4 = this.zzaxu.presentationTimeUs;
            int size = this.zzaxt.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    z = false;
                    break;
                }
                if (this.zzaxt.get(i3).longValue() == j4) {
                    this.zzaxt.remove(i3);
                    z = true;
                    break;
                }
                i3++;
            }
            this.zzaym = z;
        }
        if (this.zzaye && this.zzayr) {
            try {
                zZza = zza(j2, j3, this.zzaxx, this.zzajd[this.zzayl], this.zzayl, this.zzaxu.flags, this.zzaxu.presentationTimeUs, this.zzaym);
            } catch (IllegalStateException unused2) {
                zzgt();
                if (this.zzayt) {
                    zzgr();
                }
                return false;
            }
        } else {
            MediaCodec mediaCodec = this.zzaxx;
            ByteBuffer[] byteBufferArr = this.zzajd;
            int i4 = this.zzayl;
            ByteBuffer byteBuffer2 = byteBufferArr[i4];
            MediaCodec.BufferInfo bufferInfo3 = this.zzaxu;
            zZza = zza(j2, j3, mediaCodec, byteBuffer2, i4, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.zzaym);
        }
        if (!zZza) {
            return false;
        }
        long j5 = this.zzaxu.presentationTimeUs;
        this.zzayl = -1;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzgs() throws com.google.android.gms.internal.ads.zzgd {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkl.zzgs():boolean");
    }

    private final void zzgt() throws zzgd {
        if (this.zzayp == 2) {
            zzgr();
            zzgo();
        } else {
            this.zzayt = true;
            zzfo();
        }
    }

    public boolean isReady() {
        if (this.zzafx == null || this.zzayu) {
            return false;
        }
        if (zzdt() || this.zzayl >= 0) {
            return true;
        }
        return this.zzayj != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.zzayj;
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected void onStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected void onStopped() {
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final int zza(zzgo zzgoVar) throws zzgd {
        try {
            return zza(this.zzaxn, zzgoVar);
        } catch (zzkt e2) {
            throw zzgd.zza(e2, getIndex());
        }
    }

    protected abstract int zza(zzkn zzknVar, zzgo zzgoVar);

    protected zzkm zza(zzkn zzknVar, zzgo zzgoVar, boolean z) {
        return zzknVar.zzc(zzgoVar.zzafc, z);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected void zza(long j2, boolean z) {
        this.zzays = false;
        this.zzayt = false;
        if (this.zzaxx != null) {
            this.zzayj = C.TIME_UNSET;
            this.zzayk = -1;
            this.zzayl = -1;
            this.zzayv = true;
            this.zzayu = false;
            this.zzaym = false;
            this.zzaxt.clear();
            this.zzayg = false;
            this.zzayh = false;
            if (this.zzaya || ((this.zzayd && this.zzayr) || this.zzayp != 0)) {
                zzgr();
                zzgo();
            } else {
                this.zzaxx.flush();
                this.zzayq = false;
            }
            if (!this.zzayn || this.zzafx == null) {
                return;
            }
            this.zzayo = 1;
        }
    }

    protected void zza(zzik zzikVar) {
    }

    protected abstract void zza(zzkm zzkmVar, MediaCodec mediaCodec, zzgo zzgoVar, MediaCrypto mediaCrypto);

    protected abstract boolean zza(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z);

    protected boolean zza(MediaCodec mediaCodec, boolean z, zzgo zzgoVar, zzgo zzgoVar2) {
        return false;
    }

    protected boolean zza(zzkm zzkmVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zzb(long j2, long j3) throws zzgd {
        if (this.zzayt) {
            zzfo();
            return;
        }
        if (this.zzafx == null) {
            this.zzaxr.clear();
            int iZza = zza(this.zzaxs, this.zzaxr, true);
            if (iZza != -5) {
                if (iZza == -4) {
                    zznr.checkState(this.zzaxr.zzfv());
                    this.zzays = true;
                    zzgt();
                    return;
                }
                return;
            }
            zzd(this.zzaxs.zzafx);
        }
        zzgo();
        if (this.zzaxx != null) {
            zzog.beginSection("drainAndFeed");
            while (zzd(j2, j3)) {
            }
            while (zzgs()) {
            }
            zzog.endSection();
        } else {
            zzdj(j2);
            this.zzaxr.clear();
            int iZza2 = zza(this.zzaxs, this.zzaxr, false);
            if (iZza2 == -5) {
                zzd(this.zzaxs.zzafx);
            } else if (iZza2 == -4) {
                zznr.checkState(this.zzaxr.zzfv());
                this.zzays = true;
                zzgt();
            }
        }
        this.zzayw.zzfy();
    }

    protected void zzc(String str, long j2, long j3) {
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void zzd(com.google.android.gms.internal.ads.zzgo r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzgo r0 = r4.zzafx
            r4.zzafx = r5
            com.google.android.gms.internal.ads.zzgo r5 = r4.zzafx
            com.google.android.gms.internal.ads.zzin r5 = r5.zzaff
            r1 = 0
            if (r0 != 0) goto Ld
            r2 = r1
            goto Lf
        Ld:
            com.google.android.gms.internal.ads.zzin r2 = r0.zzaff
        Lf:
            boolean r5 = com.google.android.gms.internal.ads.zzof.zza(r5, r2)
            r2 = 1
            r5 = r5 ^ r2
            if (r5 == 0) goto L4d
            com.google.android.gms.internal.ads.zzgo r5 = r4.zzafx
            com.google.android.gms.internal.ads.zzin r5 = r5.zzaff
            if (r5 == 0) goto L4b
            com.google.android.gms.internal.ads.zzis<java.lang.Object> r5 = r4.zzaxo
            if (r5 == 0) goto L3b
            android.os.Looper r1 = android.os.Looper.myLooper()
            com.google.android.gms.internal.ads.zzgo r3 = r4.zzafx
            com.google.android.gms.internal.ads.zzin r3 = r3.zzaff
            com.google.android.gms.internal.ads.zziq r5 = r5.zza(r1, r3)
            r4.zzaxw = r5
            com.google.android.gms.internal.ads.zziq<java.lang.Object> r5 = r4.zzaxw
            com.google.android.gms.internal.ads.zziq<java.lang.Object> r1 = r4.zzaxv
            if (r5 != r1) goto L4d
            com.google.android.gms.internal.ads.zzis<java.lang.Object> r1 = r4.zzaxo
            r1.zza(r5)
            goto L4d
        L3b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            int r0 = r4.getIndex()
            com.google.android.gms.internal.ads.zzgd r5 = com.google.android.gms.internal.ads.zzgd.zza(r5, r0)
            throw r5
        L4b:
            r4.zzaxw = r1
        L4d:
            com.google.android.gms.internal.ads.zziq<java.lang.Object> r5 = r4.zzaxw
            com.google.android.gms.internal.ads.zziq<java.lang.Object> r1 = r4.zzaxv
            if (r5 != r1) goto L7e
            android.media.MediaCodec r5 = r4.zzaxx
            if (r5 == 0) goto L7e
            com.google.android.gms.internal.ads.zzkm r1 = r4.zzaxy
            boolean r1 = r1.zzayx
            com.google.android.gms.internal.ads.zzgo r3 = r4.zzafx
            boolean r5 = r4.zza(r5, r1, r0, r3)
            if (r5 == 0) goto L7e
            r4.zzayn = r2
            r4.zzayo = r2
            boolean r5 = r4.zzayb
            if (r5 == 0) goto L7a
            com.google.android.gms.internal.ads.zzgo r5 = r4.zzafx
            int r1 = r5.width
            int r3 = r0.width
            if (r1 != r3) goto L7a
            int r5 = r5.height
            int r0 = r0.height
            if (r5 != r0) goto L7a
            goto L7b
        L7a:
            r2 = 0
        L7b:
            r4.zzayg = r2
            return
        L7e:
            boolean r5 = r4.zzayq
            if (r5 == 0) goto L85
            r4.zzayp = r2
            return
        L85:
            r4.zzgr()
            r4.zzgo()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkl.zzd(com.google.android.gms.internal.ads.zzgo):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected void zzd(boolean z) {
        this.zzayw = new zzil();
    }

    @Override // com.google.android.gms.internal.ads.zzgb, com.google.android.gms.internal.ads.zzgw
    public final int zzdq() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected void zzdr() {
        this.zzafx = null;
        try {
            zzgr();
            try {
                if (this.zzaxv != null) {
                    this.zzaxo.zza(this.zzaxv);
                }
                try {
                    if (this.zzaxw != null && this.zzaxw != this.zzaxv) {
                        this.zzaxo.zza(this.zzaxw);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.zzaxw != null && this.zzaxw != this.zzaxv) {
                        this.zzaxo.zza(this.zzaxw);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.zzaxv != null) {
                    this.zzaxo.zza(this.zzaxv);
                }
                try {
                    if (this.zzaxw != null && this.zzaxw != this.zzaxv) {
                        this.zzaxo.zza(this.zzaxw);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.zzaxw != null && this.zzaxw != this.zzaxv) {
                        this.zzaxo.zza(this.zzaxw);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    public boolean zzeo() {
        return this.zzayt;
    }

    protected void zzfo() {
    }

    protected final void zzgo() throws zzgd {
        zzgo zzgoVar;
        if (this.zzaxx != null || (zzgoVar = this.zzafx) == null) {
            return;
        }
        this.zzaxv = this.zzaxw;
        String str = zzgoVar.zzafc;
        zziq<Object> zziqVar = this.zzaxv;
        if (zziqVar != null) {
            int state = zziqVar.getState();
            if (state == 0) {
                throw zzgd.zza(this.zzaxv.zzga(), getIndex());
            }
            if (state == 3 || state == 4) {
                this.zzaxv.zzfz();
                throw new NoSuchMethodError();
            }
            return;
        }
        if (this.zzaxy == null) {
            try {
                this.zzaxy = zza(this.zzaxn, zzgoVar, false);
                zzkm zzkmVar = this.zzaxy;
            } catch (zzkt e2) {
                zza(new zzko(this.zzafx, (Throwable) e2, false, -49998));
            }
            if (this.zzaxy == null) {
                zza(new zzko(this.zzafx, (Throwable) null, false, -49999));
            }
        }
        if (zza(this.zzaxy)) {
            String str2 = this.zzaxy.name;
            this.zzaxz = zzof.SDK_INT < 21 && this.zzafx.zzafe.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
            int i2 = zzof.SDK_INT;
            this.zzaya = i2 < 18 || (i2 == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (zzof.SDK_INT == 19 && zzof.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
            this.zzayb = zzof.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(zzof.DEVICE) || "flounder_lte".equals(zzof.DEVICE) || "grouper".equals(zzof.DEVICE) || "tilapia".equals(zzof.DEVICE));
            this.zzayc = zzof.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
            this.zzayd = (zzof.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (zzof.SDK_INT <= 19 && "hb2000".equals(zzof.DEVICE) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
            this.zzaye = zzof.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str2);
            this.zzayf = zzof.SDK_INT <= 18 && this.zzafx.zzafm == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                String strValueOf = String.valueOf(str2);
                zzog.beginSection(strValueOf.length() != 0 ? "createCodec:".concat(strValueOf) : new String("createCodec:"));
                this.zzaxx = MediaCodec.createByCodecName(str2);
                zzog.endSection();
                zzog.beginSection("configureCodec");
                zza(this.zzaxy, this.zzaxx, this.zzafx, (MediaCrypto) null);
                zzog.endSection();
                zzog.beginSection("startCodec");
                this.zzaxx.start();
                zzog.endSection();
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                zzc(str2, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                this.zzayi = this.zzaxx.getInputBuffers();
                this.zzajd = this.zzaxx.getOutputBuffers();
            } catch (Exception e3) {
                zza(new zzko(this.zzafx, (Throwable) e3, false, str2));
            }
            this.zzayj = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : C.TIME_UNSET;
            this.zzayk = -1;
            this.zzayl = -1;
            this.zzayv = true;
            this.zzayw.zzamd++;
        }
    }

    protected final MediaCodec zzgp() {
        return this.zzaxx;
    }

    protected final zzkm zzgq() {
        return this.zzaxy;
    }

    protected void zzgr() {
        this.zzayj = C.TIME_UNSET;
        this.zzayk = -1;
        this.zzayl = -1;
        this.zzayu = false;
        this.zzaym = false;
        this.zzaxt.clear();
        this.zzayi = null;
        this.zzajd = null;
        this.zzaxy = null;
        this.zzayn = false;
        this.zzayq = false;
        this.zzaxz = false;
        this.zzaya = false;
        this.zzayb = false;
        this.zzayc = false;
        this.zzayd = false;
        this.zzayf = false;
        this.zzayg = false;
        this.zzayh = false;
        this.zzayr = false;
        this.zzayo = 0;
        this.zzayp = 0;
        this.zzaxq.zzcq = null;
        MediaCodec mediaCodec = this.zzaxx;
        if (mediaCodec != null) {
            this.zzayw.zzame++;
            try {
                mediaCodec.stop();
                try {
                    this.zzaxx.release();
                    this.zzaxx = null;
                    zziq<Object> zziqVar = this.zzaxv;
                    if (zziqVar == null || this.zzaxw == zziqVar) {
                        return;
                    }
                    try {
                        this.zzaxo.zza(zziqVar);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.zzaxx = null;
                    zziq<Object> zziqVar2 = this.zzaxv;
                    if (zziqVar2 != null && this.zzaxw != zziqVar2) {
                        try {
                            this.zzaxo.zza(zziqVar2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.zzaxx.release();
                    this.zzaxx = null;
                    zziq<Object> zziqVar3 = this.zzaxv;
                    if (zziqVar3 != null && this.zzaxw != zziqVar3) {
                        try {
                            this.zzaxo.zza(zziqVar3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.zzaxx = null;
                    zziq<Object> zziqVar4 = this.zzaxv;
                    if (zziqVar4 != null && this.zzaxw != zziqVar4) {
                        try {
                            this.zzaxo.zza(zziqVar4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }
}
