package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzoq extends zzkl {
    private static final int[] zzbhj = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private int zzagf;
    private boolean zzajm;
    private final zzou zzbhk;
    private final zzov zzbhl;
    private final long zzbhm;
    private final int zzbhn;
    private final boolean zzbho;
    private final long[] zzbhp;
    private zzgo[] zzbhq;
    private zzos zzbhr;
    private Surface zzbhs;
    private Surface zzbht;
    private int zzbhu;
    private boolean zzbhv;
    private long zzbhw;
    private long zzbhx;
    private int zzbhy;
    private int zzbhz;
    private int zzbia;
    private float zzbib;
    private int zzbic;
    private int zzbid;
    private int zzbie;
    private float zzbif;
    private int zzbig;
    private int zzbih;
    private int zzbii;
    private float zzbij;
    zzor zzbik;
    private long zzbil;
    private int zzbim;
    private final Context zzlk;

    public zzoq(Context context, zzkn zzknVar, long j2, Handler handler, zzow zzowVar, int i2) {
        this(context, zzknVar, 0L, null, false, handler, zzowVar, -1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzoq(Context context, zzkn zzknVar, long j2, zzis<Object> zzisVar, boolean z, Handler handler, zzow zzowVar, int i2) {
        super(2, zzknVar, null, false);
        boolean z2 = false;
        this.zzbhm = 0L;
        this.zzbhn = -1;
        this.zzlk = context.getApplicationContext();
        this.zzbhk = new zzou(context);
        this.zzbhl = new zzov(handler, zzowVar);
        if (zzof.SDK_INT <= 22 && "foster".equals(zzof.DEVICE) && "NVIDIA".equals(zzof.MANUFACTURER)) {
            z2 = true;
        }
        this.zzbho = z2;
        this.zzbhp = new long[10];
        this.zzbil = C.TIME_UNSET;
        this.zzbhw = C.TIME_UNSET;
        this.zzbic = -1;
        this.zzbid = -1;
        this.zzbif = -1.0f;
        this.zzbib = -1.0f;
        this.zzbhu = 1;
        zziw();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int zza(java.lang.String r7, int r8, int r9) {
        /*
            r0 = -1
            if (r8 == r0) goto L86
            if (r9 != r0) goto L7
            goto L86
        L7:
            int r1 = r7.hashCode()
            r2 = 5
            r3 = 1
            r4 = 3
            r5 = 4
            r6 = 2
            switch(r1) {
                case -1664118616: goto L46;
                case -1662541442: goto L3c;
                case 1187890754: goto L32;
                case 1331836730: goto L28;
                case 1599127256: goto L1e;
                case 1599127257: goto L14;
                default: goto L13;
            }
        L13:
            goto L50
        L14:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 5
            goto L51
        L1e:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 3
            goto L51
        L28:
            java.lang.String r1 = "video/avc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 2
            goto L51
        L32:
            java.lang.String r1 = "video/mp4v-es"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 1
            goto L51
        L3c:
            java.lang.String r1 = "video/hevc"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 4
            goto L51
        L46:
            java.lang.String r1 = "video/3gpp"
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L50
            r7 = 0
            goto L51
        L50:
            r7 = -1
        L51:
            if (r7 == 0) goto L7d
            if (r7 == r3) goto L7d
            if (r7 == r6) goto L61
            if (r7 == r4) goto L7d
            if (r7 == r5) goto L5e
            if (r7 == r2) goto L5e
            return r0
        L5e:
            int r8 = r8 * r9
            goto L80
        L61:
            java.lang.String r7 = com.google.android.gms.internal.ads.zzof.MODEL
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r7 = r1.equals(r7)
            if (r7 == 0) goto L6c
            return r0
        L6c:
            r7 = 16
            int r8 = com.google.android.gms.internal.ads.zzof.zze(r8, r7)
            int r7 = com.google.android.gms.internal.ads.zzof.zze(r9, r7)
            int r8 = r8 * r7
            int r7 = r8 << 4
            int r8 = r7 << 4
            goto L7f
        L7d:
            int r8 = r8 * r9
        L7f:
            r5 = 2
        L80:
            int r8 = r8 * 3
            int r5 = r5 * 2
            int r8 = r8 / r5
            return r8
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoq.zza(java.lang.String, int, int):int");
    }

    private final void zza(MediaCodec mediaCodec, int i2, long j2) {
        zzog.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i2, false);
        zzog.endSection();
        this.zzayw.zzamh++;
    }

    @TargetApi(21)
    private final void zza(MediaCodec mediaCodec, int i2, long j2, long j3) {
        zzix();
        zzog.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, j3);
        zzog.endSection();
        this.zzayw.zzamg++;
        this.zzbhz = 0;
        zziv();
    }

    private static boolean zza(boolean z, zzgo zzgoVar, zzgo zzgoVar2) {
        if (!zzgoVar.zzafc.equals(zzgoVar2.zzafc) || zzj(zzgoVar) != zzj(zzgoVar2)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzgoVar.width == zzgoVar2.width && zzgoVar.height == zzgoVar2.height;
    }

    private final void zzb(MediaCodec mediaCodec, int i2, long j2) {
        zzix();
        zzog.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, true);
        zzog.endSection();
        this.zzayw.zzamg++;
        this.zzbhz = 0;
        zziv();
    }

    private static boolean zzeg(long j2) {
        return j2 < -30000;
    }

    private static int zzi(zzgo zzgoVar) {
        int i2 = zzgoVar.zzafd;
        return i2 != -1 ? i2 : zza(zzgoVar.zzafc, zzgoVar.width, zzgoVar.height);
    }

    private final void zzit() {
        this.zzbhw = this.zzbhm > 0 ? SystemClock.elapsedRealtime() + this.zzbhm : C.TIME_UNSET;
    }

    private final void zziu() {
        MediaCodec mediaCodecZzgp;
        this.zzbhv = false;
        if (zzof.SDK_INT < 23 || !this.zzajm || (mediaCodecZzgp = zzgp()) == null) {
            return;
        }
        this.zzbik = new zzor(this, mediaCodecZzgp);
    }

    private final void zziw() {
        this.zzbig = -1;
        this.zzbih = -1;
        this.zzbij = -1.0f;
        this.zzbii = -1;
    }

    private final void zzix() {
        if (this.zzbig == this.zzbic && this.zzbih == this.zzbid && this.zzbii == this.zzbie && this.zzbij == this.zzbif) {
            return;
        }
        this.zzbhl.zza(this.zzbic, this.zzbid, this.zzbie, this.zzbif);
        this.zzbig = this.zzbic;
        this.zzbih = this.zzbid;
        this.zzbii = this.zzbie;
        this.zzbij = this.zzbif;
    }

    private final void zziy() {
        if (this.zzbig == -1 && this.zzbih == -1) {
            return;
        }
        this.zzbhl.zza(this.zzbic, this.zzbid, this.zzbie, this.zzbif);
    }

    private final void zziz() {
        if (this.zzbhy > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbhl.zze(this.zzbhy, jElapsedRealtime - this.zzbhx);
            this.zzbhy = 0;
            this.zzbhx = jElapsedRealtime;
        }
    }

    private static int zzj(zzgo zzgoVar) {
        int i2 = zzgoVar.zzafh;
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    private final boolean zzm(boolean z) {
        if (zzof.SDK_INT < 23 || this.zzajm) {
            return false;
        }
        return !z || zzom.zzc(this.zzlk);
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgx
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.zzbhv || (((surface = this.zzbht) != null && this.zzbhs == surface) || zzgp() == null))) {
            this.zzbhw = C.TIME_UNSET;
            return true;
        }
        if (this.zzbhw == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.zzbhw) {
            return true;
        }
        this.zzbhw = C.TIME_UNSET;
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.zzbic = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.zzbid = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.zzbif = this.zzbib;
        if (zzof.SDK_INT >= 21) {
            int i2 = this.zzbia;
            if (i2 == 90 || i2 == 270) {
                int i3 = this.zzbic;
                this.zzbic = this.zzbid;
                this.zzbid = i3;
                this.zzbif = 1.0f / this.zzbif;
            }
        } else {
            this.zzbie = this.zzbia;
        }
        mediaCodec.setVideoScalingMode(this.zzbhu);
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void onStarted() {
        super.onStarted();
        this.zzbhy = 0;
        this.zzbhx = SystemClock.elapsedRealtime();
        this.zzbhw = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void onStopped() {
        zziz();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final int zza(zzkn zzknVar, zzgo zzgoVar) {
        boolean z;
        int i2;
        int i3;
        String str = zzgoVar.zzafc;
        if (!zzny.zzbd(str)) {
            return 0;
        }
        zzin zzinVar = zzgoVar.zzaff;
        if (zzinVar != null) {
            z = false;
            for (int i4 = 0; i4 < zzinVar.zzaml; i4++) {
                z |= zzinVar.zzz(i4).zzamm;
            }
        } else {
            z = false;
        }
        zzkm zzkmVarZzc = zzknVar.zzc(str, z);
        if (zzkmVarZzc == null) {
            return 1;
        }
        boolean zZzaz = zzkmVarZzc.zzaz(zzgoVar.zzaez);
        if (zZzaz && (i2 = zzgoVar.width) > 0 && (i3 = zzgoVar.height) > 0) {
            if (zzof.SDK_INT >= 21) {
                zZzaz = zzkmVarZzc.zza(i2, i3, zzgoVar.zzafg);
            } else {
                zZzaz = i2 * i3 <= zzkp.zzgw();
                if (!zZzaz) {
                    int i5 = zzgoVar.width;
                    int i6 = zzgoVar.height;
                    String str2 = zzof.zzbgt;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                    sb.append("FalseCheck [legacyFrameSize, ");
                    sb.append(i5);
                    sb.append("x");
                    sb.append(i6);
                    sb.append("] [");
                    sb.append(str2);
                    sb.append("]");
                    Log.d("MediaCodecVideoRenderer", sb.toString());
                }
            }
        }
        return (zZzaz ? 3 : 2) | (zzkmVarZzc.zzayx ? 8 : 4) | (zzkmVarZzc.zzajm ? 16 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgb, com.google.android.gms.internal.ads.zzge
    public final void zza(int i2, Object obj) throws zzgd {
        if (i2 != 1) {
            if (i2 != 4) {
                super.zza(i2, obj);
                return;
            }
            this.zzbhu = ((Integer) obj).intValue();
            MediaCodec mediaCodecZzgp = zzgp();
            if (mediaCodecZzgp != null) {
                mediaCodecZzgp.setVideoScalingMode(this.zzbhu);
                return;
            }
            return;
        }
        Surface surface = (Surface) obj;
        if (surface == null) {
            Surface surface2 = this.zzbht;
            if (surface2 != null) {
                surface = surface2;
            } else {
                zzkm zzkmVarZzgq = zzgq();
                if (zzkmVarZzgq != null && zzm(zzkmVarZzgq.zzayy)) {
                    this.zzbht = zzom.zzc(this.zzlk, zzkmVarZzgq.zzayy);
                    surface = this.zzbht;
                }
            }
        }
        if (this.zzbhs == surface) {
            if (surface == null || surface == this.zzbht) {
                return;
            }
            zziy();
            if (this.zzbhv) {
                this.zzbhl.zza(this.zzbhs);
                return;
            }
            return;
        }
        this.zzbhs = surface;
        int state = getState();
        if (state == 1 || state == 2) {
            MediaCodec mediaCodecZzgp2 = zzgp();
            if (zzof.SDK_INT < 23 || mediaCodecZzgp2 == null || surface == null) {
                zzgr();
                zzgo();
            } else {
                mediaCodecZzgp2.setOutputSurface(surface);
            }
        }
        if (surface == null || surface == this.zzbht) {
            zziw();
            zziu();
            return;
        }
        zziy();
        zziu();
        if (state == 2) {
            zzit();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zza(long j2, boolean z) {
        super.zza(j2, z);
        zziu();
        this.zzbhz = 0;
        int i2 = this.zzbim;
        if (i2 != 0) {
            this.zzbil = this.zzbhp[i2 - 1];
            this.zzbim = 0;
        }
        if (z) {
            zzit();
        } else {
            this.zzbhw = C.TIME_UNSET;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zza(zzik zzikVar) {
        if (zzof.SDK_INT >= 23 || !this.zzajm) {
            return;
        }
        zziv();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zza(zzkm zzkmVar, MediaCodec mediaCodec, zzgo zzgoVar, MediaCrypto mediaCrypto) {
        zzos zzosVar;
        int i2;
        Point point;
        float f2;
        zzgo[] zzgoVarArr = this.zzbhq;
        int i3 = zzgoVar.width;
        int i4 = zzgoVar.height;
        int iZzi = zzi(zzgoVar);
        if (zzgoVarArr.length == 1) {
            zzosVar = new zzos(i3, i4, iZzi);
        } else {
            int iMax = i4;
            int iMax2 = iZzi;
            boolean z = false;
            int iMax3 = i3;
            for (zzgo zzgoVar2 : zzgoVarArr) {
                if (zza(zzkmVar.zzayx, zzgoVar, zzgoVar2)) {
                    z |= zzgoVar2.width == -1 || zzgoVar2.height == -1;
                    iMax3 = Math.max(iMax3, zzgoVar2.width);
                    int iMax4 = Math.max(iMax, zzgoVar2.height);
                    iMax2 = Math.max(iMax2, zzi(zzgoVar2));
                    iMax = iMax4;
                }
            }
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(iMax3);
                sb.append("x");
                sb.append(iMax);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                boolean z2 = zzgoVar.height > zzgoVar.width;
                int i5 = z2 ? zzgoVar.height : zzgoVar.width;
                int i6 = z2 ? zzgoVar.width : zzgoVar.height;
                float f3 = i6 / i5;
                int[] iArr = zzbhj;
                int length = iArr.length;
                int i7 = 0;
                while (i7 < length) {
                    int i8 = length;
                    int i9 = iArr[i7];
                    int[] iArr2 = iArr;
                    int i10 = (int) (i9 * f3);
                    if (i9 <= i5 || i10 <= i6) {
                        break;
                    }
                    int i11 = i5;
                    int i12 = i6;
                    if (zzof.SDK_INT >= 21) {
                        int i13 = z2 ? i10 : i9;
                        if (z2) {
                            i10 = i9;
                        }
                        Point pointZzc = zzkmVar.zzc(i13, i10);
                        i2 = iMax2;
                        f2 = f3;
                        if (zzkmVar.zza(pointZzc.x, pointZzc.y, zzgoVar.zzafg)) {
                            point = pointZzc;
                            break;
                        }
                        i7++;
                        length = i8;
                        iArr = iArr2;
                        i5 = i11;
                        i6 = i12;
                        iMax2 = i2;
                        f3 = f2;
                    } else {
                        i2 = iMax2;
                        f2 = f3;
                        int iZze = zzof.zze(i9, 16) << 4;
                        int iZze2 = zzof.zze(i10, 16) << 4;
                        if (iZze * iZze2 <= zzkp.zzgw()) {
                            int i14 = z2 ? iZze2 : iZze;
                            if (z2) {
                                iZze2 = iZze;
                            }
                            point = new Point(i14, iZze2);
                        } else {
                            i7++;
                            length = i8;
                            iArr = iArr2;
                            i5 = i11;
                            i6 = i12;
                            iMax2 = i2;
                            f3 = f2;
                        }
                    }
                }
                i2 = iMax2;
                point = null;
                if (point != null) {
                    iMax3 = Math.max(iMax3, point.x);
                    iMax = Math.max(iMax, point.y);
                    iMax2 = Math.max(i2, zza(zzgoVar.zzafc, iMax3, iMax));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(iMax3);
                    sb2.append("x");
                    sb2.append(iMax);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                } else {
                    iMax2 = i2;
                }
            }
            zzosVar = new zzos(iMax3, iMax, iMax2);
        }
        this.zzbhr = zzosVar;
        zzos zzosVar2 = this.zzbhr;
        boolean z3 = this.zzbho;
        int i15 = this.zzagf;
        MediaFormat mediaFormatZzek = zzgoVar.zzek();
        mediaFormatZzek.setInteger("max-width", zzosVar2.width);
        mediaFormatZzek.setInteger("max-height", zzosVar2.height);
        int i16 = zzosVar2.zzbio;
        if (i16 != -1) {
            mediaFormatZzek.setInteger("max-input-size", i16);
        }
        if (z3) {
            mediaFormatZzek.setInteger("auto-frc", 0);
        }
        if (i15 != 0) {
            mediaFormatZzek.setFeatureEnabled("tunneled-playback", true);
            mediaFormatZzek.setInteger("audio-session-id", i15);
        }
        if (this.zzbhs == null) {
            zznr.checkState(zzm(zzkmVar.zzayy));
            if (this.zzbht == null) {
                this.zzbht = zzom.zzc(this.zzlk, zzkmVar.zzayy);
            }
            this.zzbhs = this.zzbht;
        }
        mediaCodec.configure(mediaFormatZzek, this.zzbhs, (MediaCrypto) null, 0);
        if (zzof.SDK_INT < 23 || !this.zzajm) {
            return;
        }
        this.zzbik = new zzor(this, mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    protected final void zza(zzgo[] zzgoVarArr, long j2) {
        this.zzbhq = zzgoVarArr;
        if (this.zzbil == C.TIME_UNSET) {
            this.zzbil = j2;
        } else {
            int i2 = this.zzbim;
            long[] jArr = this.zzbhp;
            if (i2 == jArr.length) {
                long j3 = jArr[i2 - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j3);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.zzbim = i2 + 1;
            }
            this.zzbhp[this.zzbim - 1] = j2;
        }
        super.zza(zzgoVarArr, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final boolean zza(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z) {
        while (true) {
            int i4 = this.zzbim;
            if (i4 == 0) {
                break;
            }
            long[] jArr = this.zzbhp;
            if (j4 < jArr[0]) {
                break;
            }
            this.zzbil = jArr[0];
            this.zzbim = i4 - 1;
            System.arraycopy(jArr, 1, jArr, 0, this.zzbim);
        }
        long j5 = j4 - this.zzbil;
        if (z) {
            zza(mediaCodec, i2, j5);
            return true;
        }
        long j6 = j4 - j2;
        if (this.zzbhs == this.zzbht) {
            if (!zzeg(j6)) {
                return false;
            }
            zza(mediaCodec, i2, j5);
            return true;
        }
        if (!this.zzbhv) {
            if (zzof.SDK_INT >= 21) {
                zza(mediaCodec, i2, j5, System.nanoTime());
            } else {
                zzb(mediaCodec, i2, j5);
            }
            return true;
        }
        if (getState() != 2) {
            return false;
        }
        long jElapsedRealtime = j6 - ((SystemClock.elapsedRealtime() * 1000) - j3);
        long jNanoTime = System.nanoTime();
        long jZzf = this.zzbhk.zzf(j4, (jElapsedRealtime * 1000) + jNanoTime);
        long j7 = (jZzf - jNanoTime) / 1000;
        if (zzeg(j7)) {
            zzog.beginSection("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i2, false);
            zzog.endSection();
            zzil zzilVar = this.zzayw;
            zzilVar.zzami++;
            this.zzbhy++;
            this.zzbhz++;
            zzilVar.zzamj = Math.max(this.zzbhz, zzilVar.zzamj);
            if (this.zzbhy == this.zzbhn) {
                zziz();
            }
            return true;
        }
        if (zzof.SDK_INT >= 21) {
            if (j7 < 50000) {
                zza(mediaCodec, i2, j5, jZzf);
                return true;
            }
        } else if (j7 < 30000) {
            if (j7 > 11000) {
                try {
                    Thread.sleep((j7 - 10000) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            zzb(mediaCodec, i2, j5);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final boolean zza(MediaCodec mediaCodec, boolean z, zzgo zzgoVar, zzgo zzgoVar2) {
        if (!zza(z, zzgoVar, zzgoVar2)) {
            return false;
        }
        int i2 = zzgoVar2.width;
        zzos zzosVar = this.zzbhr;
        return i2 <= zzosVar.width && zzgoVar2.height <= zzosVar.height && zzgoVar2.zzafd <= zzosVar.zzbio;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final boolean zza(zzkm zzkmVar) {
        return this.zzbhs != null || zzm(zzkmVar.zzayy);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzc(String str, long j2, long j3) {
        this.zzbhl.zzb(str, j2, j3);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzd(zzgo zzgoVar) {
        super.zzd(zzgoVar);
        this.zzbhl.zzc(zzgoVar);
        float f2 = zzgoVar.zzafi;
        if (f2 == -1.0f) {
            f2 = 1.0f;
        }
        this.zzbib = f2;
        this.zzbia = zzj(zzgoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zzd(boolean z) {
        super.zzd(z);
        this.zzagf = zzds().zzagf;
        this.zzajm = this.zzagf != 0;
        this.zzbhl.zzc(this.zzayw);
        this.zzbhk.enable();
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zzdr() {
        this.zzbic = -1;
        this.zzbid = -1;
        this.zzbif = -1.0f;
        this.zzbib = -1.0f;
        this.zzbil = C.TIME_UNSET;
        this.zzbim = 0;
        zziw();
        zziu();
        this.zzbhk.disable();
        this.zzbik = null;
        this.zzajm = false;
        try {
            super.zzdr();
        } finally {
            this.zzayw.zzfy();
            this.zzbhl.zzd(this.zzayw);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzgr() {
        try {
            super.zzgr();
        } finally {
            Surface surface = this.zzbht;
            if (surface != null) {
                if (this.zzbhs == surface) {
                    this.zzbhs = null;
                }
                this.zzbht.release();
                this.zzbht = null;
            }
        }
    }

    final void zziv() {
        if (this.zzbhv) {
            return;
        }
        this.zzbhv = true;
        this.zzbhl.zza(this.zzbhs);
    }
}
