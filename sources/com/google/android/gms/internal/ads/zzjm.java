package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.ads.zzin;
import com.google.firebase.FirebaseError;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzjm implements zziw {
    private static final zzix zzank = new zzjl();
    private static final byte[] zzanl = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzanm = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzann = new UUID(72057594037932032L, -9223371306706625679L);
    private long zzagh;
    private final zzjp zzanc;
    private final zzjk zzano;
    private final SparseArray<zzjn> zzanp;
    private final boolean zzanq;
    private final zzoc zzanr;
    private final zzoc zzans;
    private final zzoc zzant;
    private final zzoc zzanu;
    private final zzoc zzanv;
    private final zzoc zzanw;
    private final zzoc zzanx;
    private final zzoc zzany;
    private final zzoc zzanz;
    private ByteBuffer zzaoa;
    private long zzaob;
    private long zzaoc;
    private long zzaod;
    private long zzaoe;
    private zzjn zzaof;
    private boolean zzaog;
    private int zzaoh;
    private long zzaoi;
    private boolean zzaoj;
    private long zzaok;
    private long zzaol;
    private long zzaom;
    private zznw zzaon;
    private zznw zzaoo;
    private boolean zzaop;
    private int zzaoq;
    private long zzaor;
    private long zzaos;
    private int zzaot;
    private int zzaou;
    private int[] zzaov;
    private int zzaow;
    private int zzaox;
    private int zzaoy;
    private int zzaoz;
    private boolean zzapa;
    private boolean zzapb;
    private boolean zzapc;
    private boolean zzapd;
    private byte zzape;
    private int zzapf;
    private int zzapg;
    private int zzaph;
    private boolean zzapi;
    private boolean zzapj;
    private zziy zzapk;

    public zzjm() {
        this(0);
    }

    private zzjm(int i2) {
        this(new zzjf(), 0);
    }

    private zzjm(zzjk zzjkVar, int i2) {
        this.zzaoc = -1L;
        this.zzaod = C.TIME_UNSET;
        this.zzaoe = C.TIME_UNSET;
        this.zzagh = C.TIME_UNSET;
        this.zzaok = -1L;
        this.zzaol = -1L;
        this.zzaom = C.TIME_UNSET;
        this.zzano = zzjkVar;
        this.zzano.zza(new zzjo(this, null));
        this.zzanq = true;
        this.zzanc = new zzjp();
        this.zzanp = new SparseArray<>();
        this.zzant = new zzoc(4);
        this.zzanu = new zzoc(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzanv = new zzoc(4);
        this.zzanr = new zzoc(zznx.zzbfz);
        this.zzans = new zzoc(4);
        this.zzanw = new zzoc();
        this.zzanx = new zzoc();
        this.zzany = new zzoc(8);
        this.zzanz = new zzoc();
    }

    private final int zza(zziv zzivVar, zzjd zzjdVar, int i2) {
        int iZza;
        int iZzim = this.zzanw.zzim();
        if (iZzim > 0) {
            iZza = Math.min(i2, iZzim);
            zzjdVar.zza(this.zzanw, iZza);
        } else {
            iZza = zzjdVar.zza(zzivVar, i2, false);
        }
        this.zzaoz += iZza;
        this.zzaph += iZza;
        return iZza;
    }

    private final void zza(zziv zzivVar, zzjn zzjnVar, int i2) throws zzgv {
        int i3;
        if ("S_TEXT/UTF8".equals(zzjnVar.zzapl)) {
            int length = zzanl.length + i2;
            if (this.zzanx.capacity() < length) {
                this.zzanx.data = Arrays.copyOf(zzanl, length + i2);
            }
            zzivVar.readFully(this.zzanx.data, zzanl.length, i2);
            this.zzanx.zzbg(0);
            this.zzanx.zzbf(length);
            return;
        }
        zzjd zzjdVar = zzjnVar.zzaqp;
        if (!this.zzapa) {
            if (zzjnVar.zzapn) {
                this.zzaoy &= -1073741825;
                if (!this.zzapb) {
                    zzivVar.readFully(this.zzant.data, 0, 1);
                    this.zzaoz++;
                    byte[] bArr = this.zzant.data;
                    if ((bArr[0] & 128) == 128) {
                        throw new zzgv("Extension bit is set in signal byte");
                    }
                    this.zzape = bArr[0];
                    this.zzapb = true;
                }
                byte b2 = this.zzape;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.zzaoy |= 1073741824;
                    if (!this.zzapc) {
                        zzivVar.readFully(this.zzany.data, 0, 8);
                        this.zzaoz += 8;
                        this.zzapc = true;
                        this.zzant.data[0] = (byte) ((z ? 128 : 0) | 8);
                        this.zzant.zzbg(0);
                        zzjdVar.zza(this.zzant, 1);
                        this.zzaph++;
                        this.zzany.zzbg(0);
                        zzjdVar.zza(this.zzany, 8);
                        this.zzaph += 8;
                    }
                    if (z) {
                        if (!this.zzapd) {
                            zzivVar.readFully(this.zzant.data, 0, 1);
                            this.zzaoz++;
                            this.zzant.zzbg(0);
                            this.zzapf = this.zzant.readUnsignedByte();
                            this.zzapd = true;
                        }
                        int i4 = this.zzapf << 2;
                        this.zzant.reset(i4);
                        zzivVar.readFully(this.zzant.data, 0, i4);
                        this.zzaoz += i4;
                        short s = (short) ((this.zzapf / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.zzaoa;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.zzaoa = ByteBuffer.allocate(i5);
                        }
                        this.zzaoa.position(0);
                        this.zzaoa.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i3 = this.zzapf;
                            if (i6 >= i3) {
                                break;
                            }
                            int iZzir = this.zzant.zzir();
                            if (i6 % 2 == 0) {
                                this.zzaoa.putShort((short) (iZzir - i7));
                            } else {
                                this.zzaoa.putInt(iZzir - i7);
                            }
                            i6++;
                            i7 = iZzir;
                        }
                        int i8 = (i2 - this.zzaoz) - i7;
                        int i9 = i3 % 2;
                        ByteBuffer byteBuffer2 = this.zzaoa;
                        if (i9 == 1) {
                            byteBuffer2.putInt(i8);
                        } else {
                            byteBuffer2.putShort((short) i8);
                            this.zzaoa.putInt(0);
                        }
                        this.zzanz.zzb(this.zzaoa.array(), i5);
                        zzjdVar.zza(this.zzanz, i5);
                        this.zzaph += i5;
                    }
                }
            } else {
                byte[] bArr2 = zzjnVar.zzapo;
                if (bArr2 != null) {
                    this.zzanw.zzb(bArr2, bArr2.length);
                }
            }
            this.zzapa = true;
        }
        int iLimit = i2 + this.zzanw.limit();
        if (!"V_MPEG4/ISO/AVC".equals(zzjnVar.zzapl) && !"V_MPEGH/ISO/HEVC".equals(zzjnVar.zzapl)) {
            while (true) {
                int i10 = this.zzaoz;
                if (i10 >= iLimit) {
                    break;
                } else {
                    zza(zzivVar, zzjdVar, iLimit - i10);
                }
            }
        } else {
            byte[] bArr3 = this.zzans.data;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i11 = zzjnVar.zzaqq;
            int i12 = 4 - i11;
            while (this.zzaoz < iLimit) {
                int i13 = this.zzapg;
                if (i13 == 0) {
                    int iMin = Math.min(i11, this.zzanw.zzim());
                    zzivVar.readFully(bArr3, i12 + iMin, i11 - iMin);
                    if (iMin > 0) {
                        this.zzanw.zze(bArr3, i12, iMin);
                    }
                    this.zzaoz += i11;
                    this.zzans.zzbg(0);
                    this.zzapg = this.zzans.zzir();
                    this.zzanr.zzbg(0);
                    zzjdVar.zza(this.zzanr, 4);
                    this.zzaph += 4;
                } else {
                    this.zzapg = i13 - zza(zzivVar, zzjdVar, i13);
                }
            }
        }
        if ("A_VORBIS".equals(zzjnVar.zzapl)) {
            this.zzanu.zzbg(0);
            zzjdVar.zza(this.zzanu, 4);
            this.zzaph += 4;
        }
    }

    private final void zza(zzjn zzjnVar, long j2) {
        byte[] bArrZzbh;
        if ("S_TEXT/UTF8".equals(zzjnVar.zzapl)) {
            byte[] bArr = this.zzanx.data;
            long j3 = this.zzaos;
            if (j3 == C.TIME_UNSET) {
                bArrZzbh = zzanm;
            } else {
                int i2 = (int) (j3 / 3600000000L);
                long j4 = j3 - (((long) i2) * 3600000000L);
                int i3 = (int) (j4 / 60000000);
                long j5 = j4 - ((long) (60000000 * i3));
                int i4 = (int) (j5 / 1000000);
                bArrZzbh = zzof.zzbh(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j5 - ((long) (1000000 * i4))) / 1000))));
            }
            System.arraycopy(bArrZzbh, 0, bArr, 19, 12);
            zzjd zzjdVar = zzjnVar.zzaqp;
            zzoc zzocVar = this.zzanx;
            zzjdVar.zza(zzocVar, zzocVar.limit());
            this.zzaph += this.zzanx.limit();
        }
        zzjnVar.zzaqp.zza(j2, this.zzaoy, this.zzaph, 0, zzjnVar.zzapp);
        this.zzapi = true;
        zzgg();
    }

    private static int[] zza(int[] iArr, int i2) {
        return iArr == null ? new int[i2] : iArr.length >= i2 ? iArr : new int[Math.max(iArr.length << 1, i2)];
    }

    static int zzag(int i2) {
        switch (i2) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    static boolean zzah(int i2) {
        return i2 == 357149030 || i2 == 524531317 || i2 == 475249515 || i2 == 374648427;
    }

    private final void zzb(zziv zzivVar, int i2) {
        if (this.zzant.limit() >= i2) {
            return;
        }
        if (this.zzant.capacity() < i2) {
            zzoc zzocVar = this.zzant;
            byte[] bArr = zzocVar.data;
            zzocVar.zzb(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i2)), this.zzant.limit());
        }
        zzoc zzocVar2 = this.zzant;
        zzivVar.readFully(zzocVar2.data, zzocVar2.limit(), i2 - this.zzant.limit());
        this.zzant.zzbf(i2);
    }

    private final long zzdu(long j2) throws zzgv {
        long j3 = this.zzaod;
        if (j3 != C.TIME_UNSET) {
            return zzof.zza(j2, j3, 1000L);
        }
        throw new zzgv("Can't scale timecode prior to timecodeScale being set.");
    }

    private final void zzgg() {
        this.zzaoz = 0;
        this.zzaph = 0;
        this.zzapg = 0;
        this.zzapa = false;
        this.zzapb = false;
        this.zzapd = false;
        this.zzapf = 0;
        this.zzape = (byte) 0;
        this.zzapc = false;
        this.zzanw.reset();
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void release() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0005 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zziw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(com.google.android.gms.internal.ads.zziv r9, com.google.android.gms.internal.ads.zzjc r10) {
        /*
            r8 = this;
            r0 = 0
            r8.zzapi = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3a
            boolean r3 = r8.zzapi
            if (r3 != 0) goto L3a
            com.google.android.gms.internal.ads.zzjk r2 = r8.zzano
            boolean r2 = r2.zzb(r9)
            if (r2 == 0) goto L5
            long r3 = r9.getPosition()
            boolean r5 = r8.zzaoj
            if (r5 == 0) goto L25
            r8.zzaol = r3
            long r3 = r8.zzaok
            r10.zzamq = r3
            r8.zzaoj = r0
        L23:
            r3 = 1
            goto L37
        L25:
            boolean r3 = r8.zzaog
            if (r3 == 0) goto L36
            long r3 = r8.zzaol
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L36
            r10.zzamq = r3
            r8.zzaol = r5
            goto L23
        L36:
            r3 = 0
        L37:
            if (r3 == 0) goto L5
            return r1
        L3a:
            if (r2 == 0) goto L3d
            return r0
        L3d:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.zza(com.google.android.gms.internal.ads.zziv, com.google.android.gms.internal.ads.zzjc):int");
    }

    final void zza(int i2, double d2) {
        if (i2 == 181) {
            this.zzaof.zzafn = (int) d2;
            return;
        }
        if (i2 == 17545) {
            this.zzaoe = (long) d2;
            return;
        }
        switch (i2) {
            case 21969:
                this.zzaof.zzaqa = (float) d2;
                break;
            case 21970:
                this.zzaof.zzaqb = (float) d2;
                break;
            case 21971:
                this.zzaof.zzaqc = (float) d2;
                break;
            case 21972:
                this.zzaof.zzaqd = (float) d2;
                break;
            case 21973:
                this.zzaof.zzaqe = (float) d2;
                break;
            case 21974:
                this.zzaof.zzaqf = (float) d2;
                break;
            case 21975:
                this.zzaof.zzaqg = (float) d2;
                break;
            case 21976:
                this.zzaof.zzaqh = (float) d2;
                break;
            case 21977:
                this.zzaof.zzaqi = (float) d2;
                break;
            case 21978:
                this.zzaof.zzaqj = (float) d2;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x01fd, code lost:
    
        throw new com.google.android.gms.internal.ads.zzgv("EBML lacing sample size out of range.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zza(int r20, int r21, com.google.android.gms.internal.ads.zziv r22) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 692
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjm.zza(int, int, com.google.android.gms.internal.ads.zziv):void");
    }

    final void zza(int i2, String str) throws zzgv {
        if (i2 == 134) {
            this.zzaof.zzapl = str;
            return;
        }
        if (i2 != 17026) {
            if (i2 != 2274716) {
                return;
            }
            this.zzaof.zzaft = str;
        } else {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzgv(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zza(zziy zziyVar) {
        this.zzapk = zziyVar;
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final boolean zza(zziv zzivVar) {
        return new zzjq().zza(zzivVar);
    }

    final void zzai(int i2) throws zzgv {
        zzjb zzjeVar;
        zznw zznwVar;
        zznw zznwVar2;
        int i3;
        if (i2 == 160) {
            if (this.zzaoq != 2) {
                return;
            }
            if (!this.zzapj) {
                this.zzaoy |= 1;
            }
            zza(this.zzanp.get(this.zzaow), this.zzaor);
            this.zzaoq = 0;
            return;
        }
        if (i2 == 174) {
            String str = this.zzaof.zzapl;
            if ((("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) ? 1 : 0) != 0) {
                zzjn zzjnVar = this.zzaof;
                zzjnVar.zza(this.zzapk, zzjnVar.number);
                SparseArray<zzjn> sparseArray = this.zzanp;
                zzjn zzjnVar2 = this.zzaof;
                sparseArray.put(zzjnVar2.number, zzjnVar2);
            }
            this.zzaof = null;
            return;
        }
        if (i2 == 19899) {
            int i4 = this.zzaoh;
            if (i4 != -1) {
                long j2 = this.zzaoi;
                if (j2 != -1) {
                    if (i4 == 475249515) {
                        this.zzaok = j2;
                        return;
                    }
                    return;
                }
            }
            throw new zzgv("Mandatory element SeekID or SeekPosition not found");
        }
        if (i2 == 25152) {
            zzjn zzjnVar3 = this.zzaof;
            if (zzjnVar3.zzapn) {
                zzjg zzjgVar = zzjnVar3.zzapp;
                if (zzjgVar == null) {
                    throw new zzgv("Encrypted Track found but ContentEncKeyID was not found");
                }
                zzjnVar3.zzaff = new zzin(new zzin.zza(zzga.zzaca, MimeTypes.VIDEO_WEBM, zzjgVar.zzani));
                return;
            }
            return;
        }
        if (i2 == 28032) {
            zzjn zzjnVar4 = this.zzaof;
            if (zzjnVar4.zzapn && zzjnVar4.zzapo != null) {
                throw new zzgv("Combining encryption and compression is not supported");
            }
            return;
        }
        if (i2 == 357149030) {
            if (this.zzaod == C.TIME_UNSET) {
                this.zzaod = 1000000L;
            }
            long j3 = this.zzaoe;
            if (j3 != C.TIME_UNSET) {
                this.zzagh = zzdu(j3);
                return;
            }
            return;
        }
        if (i2 == 374648427) {
            if (this.zzanp.size() == 0) {
                throw new zzgv("No valid tracks were found");
            }
            this.zzapk.zzge();
            return;
        }
        if (i2 == 475249515 && !this.zzaog) {
            zziy zziyVar = this.zzapk;
            if (this.zzaoc == -1 || this.zzagh == C.TIME_UNSET || (zznwVar = this.zzaon) == null || zznwVar.size() == 0 || (zznwVar2 = this.zzaoo) == null || zznwVar2.size() != this.zzaon.size()) {
                this.zzaon = null;
                this.zzaoo = null;
                zzjeVar = new zzje(this.zzagh);
            } else {
                int size = this.zzaon.size();
                int[] iArr = new int[size];
                long[] jArr = new long[size];
                long[] jArr2 = new long[size];
                long[] jArr3 = new long[size];
                for (int i5 = 0; i5 < size; i5++) {
                    jArr3[i5] = this.zzaon.get(i5);
                    jArr[i5] = this.zzaoc + this.zzaoo.get(i5);
                }
                while (true) {
                    i3 = size - 1;
                    if (i >= i3) {
                        break;
                    }
                    int i6 = i + 1;
                    iArr[i] = (int) (jArr[i6] - jArr[i]);
                    jArr2[i] = jArr3[i6] - jArr3[i];
                    i = i6;
                }
                iArr[i3] = (int) ((this.zzaoc + this.zzaob) - jArr[i3]);
                jArr2[i3] = this.zzagh - jArr3[i3];
                this.zzaon = null;
                this.zzaoo = null;
                zzjeVar = new zziu(iArr, jArr, jArr2, jArr3);
            }
            zziyVar.zza(zzjeVar);
            this.zzaog = true;
        }
    }

    final void zzc(int i2, long j2) throws zzgv {
        if (i2 == 20529) {
            if (j2 == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j2);
            sb.append(" not supported");
            throw new zzgv(sb.toString());
        }
        if (i2 == 20530) {
            if (j2 == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j2);
            sb2.append(" not supported");
            throw new zzgv(sb2.toString());
        }
        switch (i2) {
            case 131:
                this.zzaof.type = (int) j2;
                return;
            case 136:
                this.zzaof.zzaqn = j2 == 1;
                return;
            case 155:
                this.zzaos = zzdu(j2);
                return;
            case 159:
                this.zzaof.zzafm = (int) j2;
                return;
            case 176:
                this.zzaof.width = (int) j2;
                return;
            case 179:
                this.zzaon.add(zzdu(j2));
                return;
            case 186:
                this.zzaof.height = (int) j2;
                return;
            case 215:
                this.zzaof.number = (int) j2;
                return;
            case 231:
                this.zzaom = zzdu(j2);
                return;
            case 241:
                if (this.zzaop) {
                    return;
                }
                this.zzaoo.add(j2);
                this.zzaop = true;
                return;
            case 251:
                this.zzapj = true;
                return;
            case 16980:
                if (j2 == 3) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j2);
                sb3.append(" not supported");
                throw new zzgv(sb3.toString());
            case 17029:
                if (j2 < 1 || j2 > 2) {
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j2);
                    sb4.append(" not supported");
                    throw new zzgv(sb4.toString());
                }
                return;
            case 17143:
                if (j2 == 1) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j2);
                sb5.append(" not supported");
                throw new zzgv(sb5.toString());
            case 18401:
                if (j2 == 5) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j2);
                sb6.append(" not supported");
                throw new zzgv(sb6.toString());
            case 18408:
                if (j2 == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j2);
                sb7.append(" not supported");
                throw new zzgv(sb7.toString());
            case 21420:
                this.zzaoi = j2 + this.zzaoc;
                return;
            case 21432:
                int i3 = (int) j2;
                if (i3 == 0) {
                    this.zzaof.zzafj = 0;
                    return;
                }
                if (i3 == 1) {
                    this.zzaof.zzafj = 2;
                    return;
                } else if (i3 == 3) {
                    this.zzaof.zzafj = 1;
                    return;
                } else {
                    if (i3 != 15) {
                        return;
                    }
                    this.zzaof.zzafj = 3;
                    return;
                }
            case 21680:
                this.zzaof.zzapr = (int) j2;
                return;
            case 21682:
                this.zzaof.zzapt = (int) j2;
                return;
            case 21690:
                this.zzaof.zzaps = (int) j2;
                return;
            case 21930:
                this.zzaof.zzaqo = j2 == 1;
                return;
            case 22186:
                this.zzaof.zzaql = j2;
                return;
            case 22203:
                this.zzaof.zzaqm = j2;
                return;
            case 25188:
                this.zzaof.zzaqk = (int) j2;
                return;
            case 2352003:
                this.zzaof.zzapm = (int) j2;
                return;
            case 2807729:
                this.zzaod = j2;
                return;
            default:
                switch (i2) {
                    case 21945:
                        int i4 = (int) j2;
                        if (i4 == 1) {
                            this.zzaof.zzapx = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.zzaof.zzapx = 1;
                            return;
                        }
                    case 21946:
                        int i5 = (int) j2;
                        if (i5 != 1) {
                            if (i5 == 16) {
                                this.zzaof.zzapw = 6;
                                return;
                            } else if (i5 == 18) {
                                this.zzaof.zzapw = 7;
                                return;
                            } else if (i5 != 6 && i5 != 7) {
                                return;
                            }
                        }
                        this.zzaof.zzapw = 3;
                        return;
                    case 21947:
                        zzjn zzjnVar = this.zzaof;
                        zzjnVar.zzapu = true;
                        int i6 = (int) j2;
                        if (i6 == 1) {
                            zzjnVar.zzapv = 1;
                            return;
                        }
                        if (i6 == 9) {
                            zzjnVar.zzapv = 6;
                            return;
                        } else {
                            if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                this.zzaof.zzapv = 2;
                                return;
                            }
                            return;
                        }
                    case 21948:
                        this.zzaof.zzapy = (int) j2;
                        return;
                    case 21949:
                        this.zzaof.zzapz = (int) j2;
                        return;
                    default:
                        return;
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zzc(long j2, long j3) {
        this.zzaom = C.TIME_UNSET;
        this.zzaoq = 0;
        this.zzano.reset();
        this.zzanc.reset();
        zzgg();
    }

    final void zzd(int i2, long j2, long j3) throws zzgv {
        if (i2 == 160) {
            this.zzapj = false;
            return;
        }
        if (i2 == 174) {
            this.zzaof = new zzjn(null);
            return;
        }
        if (i2 == 187) {
            this.zzaop = false;
            return;
        }
        if (i2 == 19899) {
            this.zzaoh = -1;
            this.zzaoi = -1L;
            return;
        }
        if (i2 == 20533) {
            this.zzaof.zzapn = true;
            return;
        }
        if (i2 == 21968) {
            this.zzaof.zzapu = true;
            return;
        }
        if (i2 != 25152) {
            if (i2 == 408125543) {
                long j4 = this.zzaoc;
                if (j4 != -1 && j4 != j2) {
                    throw new zzgv("Multiple Segment elements not supported");
                }
                this.zzaoc = j2;
                this.zzaob = j3;
                return;
            }
            if (i2 == 475249515) {
                this.zzaon = new zznw();
                this.zzaoo = new zznw();
            } else if (i2 == 524531317 && !this.zzaog) {
                if (this.zzanq && this.zzaok != -1) {
                    this.zzaoj = true;
                } else {
                    this.zzapk.zza(new zzje(this.zzagh));
                    this.zzaog = true;
                }
            }
        }
    }
}
