package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.ads.zzkx;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class zzjt {
    private static final int zzaum = zzof.zzbi("vide");
    private static final int zzaun = zzof.zzbi("soun");
    private static final int zzauo = zzof.zzbi(MimeTypes.BASE_TYPE_TEXT);
    private static final int zzaup = zzof.zzbi("sbtl");
    private static final int zzauq = zzof.zzbi("subt");
    private static final int zzaur = zzof.zzbi("clcp");
    private static final int zzaus = zzof.zzbi(C.CENC_TYPE_cenc);
    private static final int zzaty = zzof.zzbi("meta");

    private static int zza(zzoc zzocVar, int i2, int i3, zzjy zzjyVar, int i4) {
        zzkk zzkkVar;
        int position = zzocVar.getPosition();
        while (true) {
            if (position - i2 >= i3) {
                return 0;
            }
            zzocVar.zzbg(position);
            int i5 = zzocVar.readInt();
            zznr.checkArgument(i5 > 0, "childAtomSize should be positive");
            if (zzocVar.readInt() == zzjs.zzass) {
                int i6 = position + 8;
                Pair pairCreate = null;
                Integer numValueOf = null;
                zzkk zzkkVar2 = null;
                boolean z = false;
                while (i6 - position < i5) {
                    zzocVar.zzbg(i6);
                    int i7 = zzocVar.readInt();
                    int i8 = zzocVar.readInt();
                    if (i8 == zzjs.zzasy) {
                        numValueOf = Integer.valueOf(zzocVar.readInt());
                    } else if (i8 == zzjs.zzast) {
                        zzocVar.zzbh(4);
                        z = zzocVar.readInt() == zzaus;
                    } else if (i8 == zzjs.zzasu) {
                        int i9 = i6 + 8;
                        while (true) {
                            if (i9 - i6 >= i7) {
                                zzkkVar = null;
                                break;
                            }
                            zzocVar.zzbg(i9);
                            int i10 = zzocVar.readInt();
                            if (zzocVar.readInt() == zzjs.zzasv) {
                                zzocVar.zzbh(6);
                                boolean z2 = zzocVar.readUnsignedByte() == 1;
                                int unsignedByte = zzocVar.readUnsignedByte();
                                byte[] bArr = new byte[16];
                                zzocVar.zze(bArr, 0, 16);
                                zzkkVar = new zzkk(z2, unsignedByte, bArr);
                            } else {
                                i9 += i10;
                            }
                        }
                        zzkkVar2 = zzkkVar;
                    }
                    i6 += i7;
                }
                if (z) {
                    zznr.checkArgument(numValueOf != null, "frma atom is mandatory");
                    zznr.checkArgument(zzkkVar2 != null, "schi->tenc atom is mandatory");
                    pairCreate = Pair.create(numValueOf, zzkkVar2);
                }
                if (pairCreate != null) {
                    zzjyVar.zzavd[i4] = (zzkk) pairCreate.second;
                    return ((Integer) pairCreate.first).intValue();
                }
            }
            position += i5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:275:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x06e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0471 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzkh zza(com.google.android.gms.internal.ads.zzjr r43, com.google.android.gms.internal.ads.zzju r44, long r45, com.google.android.gms.internal.ads.zzin r47, boolean r48) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 1820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjt.zza(com.google.android.gms.internal.ads.zzjr, com.google.android.gms.internal.ads.zzju, long, com.google.android.gms.internal.ads.zzin, boolean):com.google.android.gms.internal.ads.zzkh");
    }

    public static zzkj zza(zzkh zzkhVar, zzjr zzjrVar, zzja zzjaVar) throws zzgv {
        zzjv zzkaVar;
        boolean z;
        int iZzir;
        int iZzir2;
        int i2;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i3;
        long j2;
        long j3;
        int[] iArr3;
        int[] iArr4;
        int i4;
        long[] jArr3;
        boolean z2;
        int[] iArr5;
        long[] jArr4;
        int i5;
        int i6;
        zzkh zzkhVar2 = zzkhVar;
        zzju zzjuVarZzak = zzjrVar.zzak(zzjs.zzatn);
        if (zzjuVarZzak != null) {
            zzkaVar = new zzjx(zzjuVarZzak);
        } else {
            zzju zzjuVarZzak2 = zzjrVar.zzak(zzjs.zzato);
            if (zzjuVarZzak2 == null) {
                throw new zzgv("Track has no sample table size information");
            }
            zzkaVar = new zzka(zzjuVarZzak2);
        }
        int iZzgj = zzkaVar.zzgj();
        if (iZzgj == 0) {
            return new zzkj(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        zzju zzjuVarZzak3 = zzjrVar.zzak(zzjs.zzatp);
        if (zzjuVarZzak3 == null) {
            zzjuVarZzak3 = zzjrVar.zzak(zzjs.zzatq);
            z = true;
        } else {
            z = false;
        }
        zzoc zzocVar = zzjuVarZzak3.zzaut;
        zzoc zzocVar2 = zzjrVar.zzak(zzjs.zzatm).zzaut;
        zzoc zzocVar3 = zzjrVar.zzak(zzjs.zzatj).zzaut;
        zzju zzjuVarZzak4 = zzjrVar.zzak(zzjs.zzatk);
        zzoc zzocVar4 = zzjuVarZzak4 != null ? zzjuVarZzak4.zzaut : null;
        zzju zzjuVarZzak5 = zzjrVar.zzak(zzjs.zzatl);
        zzoc zzocVar5 = zzjuVarZzak5 != null ? zzjuVarZzak5.zzaut : null;
        zzjw zzjwVar = new zzjw(zzocVar2, zzocVar, z);
        zzocVar3.zzbg(12);
        int iZzir3 = zzocVar3.zzir() - 1;
        int iZzir4 = zzocVar3.zzir();
        int iZzir5 = zzocVar3.zzir();
        if (zzocVar5 != null) {
            zzocVar5.zzbg(12);
            iZzir = zzocVar5.zzir();
        } else {
            iZzir = 0;
        }
        int iZzir6 = -1;
        if (zzocVar4 != null) {
            zzocVar4.zzbg(12);
            iZzir2 = zzocVar4.zzir();
            if (iZzir2 > 0) {
                iZzir6 = zzocVar4.zzir() - 1;
            } else {
                zzocVar4 = null;
            }
        } else {
            iZzir2 = 0;
        }
        long j4 = 0;
        if (zzkaVar.zzgl() && MimeTypes.AUDIO_RAW.equals(zzkhVar2.zzafx.zzafc) && iZzir3 == 0 && iZzir == 0 && iZzir2 == 0) {
            i2 = iZzgj;
            zzjv zzjvVar = zzkaVar;
            int i7 = zzjwVar.length;
            long[] jArr5 = new long[i7];
            int[] iArr6 = new int[i7];
            while (zzjwVar.zzgm()) {
                int i8 = zzjwVar.index;
                jArr5[i8] = zzjwVar.zzauv;
                iArr6[i8] = zzjwVar.zzauu;
            }
            int iZzgk = zzjvVar.zzgk();
            long j5 = iZzir5;
            int i9 = 8192 / iZzgk;
            int iZze = 0;
            for (int i10 : iArr6) {
                iZze += zzof.zze(i10, i9);
            }
            long[] jArr6 = new long[iZze];
            int[] iArr7 = new int[iZze];
            long[] jArr7 = new long[iZze];
            int[] iArr8 = new int[iZze];
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            while (i11 < iArr6.length) {
                int i15 = iArr6[i11];
                long j6 = jArr5[i11];
                int i16 = i12;
                int iMax = i14;
                while (i15 > 0) {
                    int iMin = Math.min(i9, i15);
                    jArr6[i13] = j6;
                    iArr7[i13] = iZzgk * iMin;
                    iMax = Math.max(iMax, iArr7[i13]);
                    jArr7[i13] = ((long) i16) * j5;
                    iArr8[i13] = 1;
                    j6 += (long) iArr7[i13];
                    i16 += iMin;
                    i15 -= iMin;
                    i13++;
                    iArr6 = iArr6;
                    jArr5 = jArr5;
                }
                i11++;
                i14 = iMax;
                i12 = i16;
            }
            zzkb zzkbVar = new zzkb(jArr6, iArr7, i14, jArr7, iArr8);
            jArr = zzkbVar.zzamv;
            iArr = zzkbVar.zzamu;
            int i17 = zzkbVar.zzavi;
            jArr2 = zzkbVar.zzavj;
            iArr2 = zzkbVar.zzavk;
            i3 = i17;
            j2 = 0;
        } else {
            jArr = new long[iZzgj];
            iArr = new int[iZzgj];
            jArr2 = new long[iZzgj];
            int i18 = iZzir2;
            iArr2 = new int[iZzgj];
            int i19 = i18;
            int i20 = iZzir5;
            int i21 = iZzir;
            int iZzir7 = iZzir6;
            long j7 = 0;
            long j8 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int iZzir8 = 0;
            int iZzir9 = iZzir4;
            int i25 = iZzir3;
            int i26 = 0;
            while (i26 < iZzgj) {
                long j9 = j7;
                int i27 = i22;
                while (i27 == 0) {
                    zznr.checkState(zzjwVar.zzgm());
                    j9 = zzjwVar.zzauv;
                    i27 = zzjwVar.zzauu;
                    i25 = i25;
                    i20 = i20;
                }
                int i28 = i25;
                int i29 = i20;
                if (zzocVar5 != null) {
                    while (iZzir8 == 0 && i21 > 0) {
                        iZzir8 = zzocVar5.zzir();
                        i24 = zzocVar5.readInt();
                        i21--;
                    }
                    iZzir8--;
                }
                int i30 = i24;
                jArr[i26] = j9;
                iArr[i26] = zzkaVar.zzgk();
                if (iArr[i26] > i23) {
                    i5 = iZzgj;
                    i23 = iArr[i26];
                } else {
                    i5 = iZzgj;
                }
                zzjv zzjvVar2 = zzkaVar;
                jArr2[i26] = j8 + ((long) i30);
                iArr2[i26] = zzocVar4 == null ? 1 : 0;
                if (i26 == iZzir7) {
                    iArr2[i26] = 1;
                    i19--;
                    if (i19 > 0) {
                        iZzir7 = zzocVar4.zzir() - 1;
                    }
                }
                int i31 = i19;
                int i32 = iZzir7;
                int iZzir10 = i29;
                j8 += (long) iZzir10;
                iZzir9--;
                if (iZzir9 != 0 || i28 <= 0) {
                    i6 = i28;
                } else {
                    i6 = i28 - 1;
                    iZzir9 = zzocVar3.zzir();
                    iZzir10 = zzocVar3.zzir();
                }
                int i33 = i6;
                long j10 = j9 + ((long) iArr[i26]);
                i26++;
                iZzir7 = i32;
                iZzgj = i5;
                i22 = i27 - 1;
                i24 = i30;
                i25 = i33;
                j7 = j10;
                i20 = iZzir10;
                i19 = i31;
                zzkaVar = zzjvVar2;
            }
            i2 = iZzgj;
            int i34 = i25;
            zznr.checkArgument(iZzir8 == 0);
            while (i21 > 0) {
                zznr.checkArgument(zzocVar5.zzir() == 0);
                zzocVar5.readInt();
                i21--;
            }
            if (i19 == 0 && iZzir9 == 0 && i22 == 0 && i34 == 0) {
                zzkhVar2 = zzkhVar;
            } else {
                int i35 = i19;
                zzkhVar2 = zzkhVar;
                int i36 = zzkhVar2.id;
                StringBuilder sb = new StringBuilder(215);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i36);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i35);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(iZzir9);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i22);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i34);
                Log.w("AtomParsers", sb.toString());
            }
            j2 = j8;
            i3 = i23;
        }
        if (zzkhVar2.zzaxf == null || zzjaVar.zzgf()) {
            int[] iArr9 = iArr;
            zzof.zza(jArr2, 1000000L, zzkhVar2.zzct);
            return new zzkj(jArr, iArr9, i3, jArr2, iArr2);
        }
        long[] jArr8 = zzkhVar2.zzaxf;
        if (jArr8.length == 1 && zzkhVar2.type == 1 && jArr2.length >= 2) {
            long j11 = zzkhVar2.zzaxg[0];
            long jZza = zzof.zza(jArr8[0], zzkhVar2.zzct, zzkhVar2.zzaxc) + j11;
            if (jArr2[0] <= j11 && j11 < jArr2[1] && jArr2[jArr2.length - 1] < jZza && jZza <= j2) {
                long j12 = j2 - jZza;
                long jZza2 = zzof.zza(j11 - jArr2[0], zzkhVar2.zzafx.zzafn, zzkhVar2.zzct);
                long jZza3 = zzof.zza(j12, zzkhVar2.zzafx.zzafn, zzkhVar2.zzct);
                if ((jZza2 != 0 || jZza3 != 0) && jZza2 <= 2147483647L && jZza3 <= 2147483647L) {
                    zzjaVar.zzafp = (int) jZza2;
                    zzjaVar.zzafq = (int) jZza3;
                    zzof.zza(jArr2, 1000000L, zzkhVar2.zzct);
                    return new zzkj(jArr, iArr, i3, jArr2, iArr2);
                }
            }
        }
        long[] jArr9 = zzkhVar2.zzaxf;
        if (jArr9.length == 1) {
            char c2 = 0;
            if (jArr9[0] == 0) {
                int i37 = 0;
                while (i37 < jArr2.length) {
                    jArr2[i37] = zzof.zza(jArr2[i37] - zzkhVar2.zzaxg[c2], 1000000L, zzkhVar2.zzct);
                    i37++;
                    c2 = 0;
                }
                return new zzkj(jArr, iArr, i3, jArr2, iArr2);
            }
        }
        boolean z3 = zzkhVar2.type == 1;
        int i38 = 0;
        boolean z4 = false;
        int i39 = 0;
        int i40 = 0;
        while (true) {
            long[] jArr10 = zzkhVar2.zzaxf;
            j3 = -1;
            if (i38 >= jArr10.length) {
                break;
            }
            int[] iArr10 = iArr;
            long j13 = zzkhVar2.zzaxg[i38];
            if (j13 != -1) {
                long jZza4 = zzof.zza(jArr10[i38], zzkhVar2.zzct, zzkhVar2.zzaxc);
                int iZzb = zzof.zzb(jArr2, j13, true, true);
                int iZzb2 = zzof.zzb(jArr2, j13 + jZza4, z3, false);
                i39 += iZzb2 - iZzb;
                z4 |= i40 != iZzb;
                i40 = iZzb2;
            }
            i38++;
            iArr = iArr10;
        }
        int[] iArr11 = iArr;
        boolean z5 = (i39 != i2) | z4;
        long[] jArr11 = z5 ? new long[i39] : jArr;
        int[] iArr12 = z5 ? new int[i39] : iArr11;
        if (z5) {
            i3 = 0;
        }
        int[] iArr13 = z5 ? new int[i39] : iArr2;
        long[] jArr12 = new long[i39];
        int i41 = i3;
        int i42 = 0;
        int i43 = 0;
        while (true) {
            long[] jArr13 = zzkhVar2.zzaxf;
            if (i42 >= jArr13.length) {
                break;
            }
            long[] jArr14 = jArr11;
            long[] jArr15 = jArr12;
            long j14 = zzkhVar2.zzaxg[i42];
            long j15 = jArr13[i42];
            if (j14 != j3) {
                iArr4 = iArr13;
                i4 = i42;
                long jZza5 = zzof.zza(j15, zzkhVar2.zzct, zzkhVar2.zzaxc) + j14;
                int iZzb3 = zzof.zzb(jArr2, j14, true, true);
                int iZzb4 = zzof.zzb(jArr2, jZza5, z3, false);
                if (z5) {
                    int i44 = iZzb4 - iZzb3;
                    jArr3 = jArr14;
                    System.arraycopy(jArr, iZzb3, jArr3, i43, i44);
                    z2 = z3;
                    iArr5 = iArr11;
                    System.arraycopy(iArr5, iZzb3, iArr12, i43, i44);
                    System.arraycopy(iArr2, iZzb3, iArr4, i43, i44);
                } else {
                    jArr3 = jArr14;
                    z2 = z3;
                    iArr5 = iArr11;
                }
                int i45 = i41;
                while (iZzb3 < iZzb4) {
                    long[] jArr16 = jArr;
                    int[] iArr14 = iArr2;
                    long j16 = j14;
                    jArr15[i43] = zzof.zza(j4, 1000000L, zzkhVar2.zzaxc) + zzof.zza(jArr2[iZzb3] - j14, 1000000L, zzkhVar2.zzct);
                    if (z5 && iArr12[i43] > i45) {
                        i45 = iArr5[iZzb3];
                    }
                    i43++;
                    iZzb3++;
                    jArr = jArr16;
                    j14 = j16;
                    iArr2 = iArr14;
                }
                jArr4 = jArr;
                iArr3 = iArr2;
                i41 = i45;
            } else {
                iArr3 = iArr2;
                iArr4 = iArr13;
                i4 = i42;
                jArr3 = jArr14;
                z2 = z3;
                iArr5 = iArr11;
                jArr4 = jArr;
            }
            j4 += j15;
            i42 = i4 + 1;
            jArr = jArr4;
            iArr11 = iArr5;
            iArr13 = iArr4;
            jArr11 = jArr3;
            z3 = z2;
            iArr2 = iArr3;
            jArr12 = jArr15;
            j3 = -1;
        }
        long[] jArr17 = jArr11;
        long[] jArr18 = jArr12;
        int[] iArr15 = iArr13;
        boolean z6 = false;
        for (int i46 = 0; i46 < iArr15.length && !z6; i46++) {
            z6 |= (iArr15[i46] & 1) != 0;
        }
        if (z6) {
            return new zzkj(jArr17, iArr12, i41, jArr18, iArr15);
        }
        throw new zzgv("The edited sample sequence does not contain a sync sample.");
    }

    public static zzkx zza(zzju zzjuVar, boolean z) {
        if (z) {
            return null;
        }
        zzoc zzocVar = zzjuVar.zzaut;
        zzocVar.zzbg(8);
        while (zzocVar.zzim() >= 8) {
            int position = zzocVar.getPosition();
            int i2 = zzocVar.readInt();
            if (zzocVar.readInt() == zzjs.zzaty) {
                zzocVar.zzbg(position);
                int i3 = position + i2;
                zzocVar.zzbh(12);
                while (true) {
                    if (zzocVar.getPosition() >= i3) {
                        break;
                    }
                    int position2 = zzocVar.getPosition();
                    int i4 = zzocVar.readInt();
                    if (zzocVar.readInt() == zzjs.zzatz) {
                        zzocVar.zzbg(position2);
                        int i5 = position2 + i4;
                        zzocVar.zzbh(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzocVar.getPosition() < i5) {
                            zzkx.zza zzaVarZzd = zzke.zzd(zzocVar);
                            if (zzaVarZzd != null) {
                                arrayList.add(zzaVarZzd);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzkx(arrayList);
                        }
                    } else {
                        zzocVar.zzbh(i4 - 8);
                    }
                }
                return null;
            }
            zzocVar.zzbh(i2 - 8);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.util.Pair<java.lang.String, byte[]> zzb(com.google.android.gms.internal.ads.zzoc r3, int r4) {
        /*
            int r4 = r4 + 8
            int r4 = r4 + 4
            r3.zzbg(r4)
            r4 = 1
            r3.zzbh(r4)
            zzc(r3)
            r0 = 2
            r3.zzbh(r0)
            int r1 = r3.readUnsignedByte()
            r2 = r1 & 128(0x80, float:1.8E-43)
            if (r2 == 0) goto L1d
            r3.zzbh(r0)
        L1d:
            r2 = r1 & 64
            if (r2 == 0) goto L28
            int r2 = r3.readUnsignedShort()
            r3.zzbh(r2)
        L28:
            r2 = 32
            r1 = r1 & r2
            if (r1 == 0) goto L30
            r3.zzbh(r0)
        L30:
            r3.zzbh(r4)
            zzc(r3)
            int r0 = r3.readUnsignedByte()
            r1 = 0
            if (r0 == r2) goto L80
            r2 = 33
            if (r0 == r2) goto L7d
            r2 = 35
            if (r0 == r2) goto L7a
            r2 = 64
            if (r0 == r2) goto L77
            r2 = 107(0x6b, float:1.5E-43)
            if (r0 == r2) goto L70
            r2 = 165(0xa5, float:2.31E-43)
            if (r0 == r2) goto L6d
            r2 = 166(0xa6, float:2.33E-43)
            if (r0 == r2) goto L6a
            switch(r0) {
                case 102: goto L77;
                case 103: goto L77;
                case 104: goto L77;
                default: goto L58;
            }
        L58:
            switch(r0) {
                case 169: goto L63;
                case 170: goto L5c;
                case 171: goto L5c;
                case 172: goto L63;
                default: goto L5b;
            }
        L5b:
            goto L82
        L5c:
            java.lang.String r3 = "audio/vnd.dts.hd"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L63:
            java.lang.String r3 = "audio/vnd.dts"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L6a:
            java.lang.String r1 = "audio/eac3"
            goto L82
        L6d:
            java.lang.String r1 = "audio/ac3"
            goto L82
        L70:
            java.lang.String r3 = "audio/mpeg"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L77:
            java.lang.String r1 = "audio/mp4a-latm"
            goto L82
        L7a:
            java.lang.String r1 = "video/hevc"
            goto L82
        L7d:
            java.lang.String r1 = "video/avc"
            goto L82
        L80:
            java.lang.String r1 = "video/mp4v-es"
        L82:
            r0 = 12
            r3.zzbh(r0)
            r3.zzbh(r4)
            int r4 = zzc(r3)
            byte[] r0 = new byte[r4]
            r2 = 0
            r3.zze(r0, r2, r4)
            android.util.Pair r3 = android.util.Pair.create(r1, r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjt.zzb(com.google.android.gms.internal.ads.zzoc, int):android.util.Pair");
    }

    private static int zzc(zzoc zzocVar) {
        int unsignedByte = zzocVar.readUnsignedByte();
        int i2 = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = zzocVar.readUnsignedByte();
            i2 = (i2 << 7) | (unsignedByte & 127);
        }
        return i2;
    }
}
