package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzdq {
    static int zza(int i2, byte[] bArr, int i3, int i4, zzdt zzdtVar) {
        if ((i2 >>> 3) == 0) {
            throw zzfo.zzd();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return zzb(bArr, i3, zzdtVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return zza(bArr, i3, zzdtVar) + zzdtVar.zza;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw zzfo.zzd();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = zza(bArr, i3, zzdtVar);
            i7 = zzdtVar.zza;
            if (i7 == i6) {
                break;
            }
            i3 = zza(i7, bArr, i3, i4, zzdtVar);
        }
        if (i3 > i4 || i7 != i6) {
            throw zzfo.zzg();
        }
        return i3;
    }

    static int zza(int i2, byte[] bArr, int i3, int i4, zzfl<?> zzflVar, zzdt zzdtVar) {
        zzfg zzfgVar = (zzfg) zzflVar;
        int iZza = zza(bArr, i3, zzdtVar);
        while (true) {
            zzfgVar.zzd(zzdtVar.zza);
            if (iZza >= i4) {
                break;
            }
            int iZza2 = zza(bArr, iZza, zzdtVar);
            if (i2 != zzdtVar.zza) {
                break;
            }
            iZza = zza(bArr, iZza2, zzdtVar);
        }
        return iZza;
    }

    static int zza(int i2, byte[] bArr, int i3, int i4, zzhy zzhyVar, zzdt zzdtVar) {
        if ((i2 >>> 3) == 0) {
            throw zzfo.zzd();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iZzb = zzb(bArr, i3, zzdtVar);
            zzhyVar.zza(i2, Long.valueOf(zzdtVar.zzb));
            return iZzb;
        }
        if (i5 == 1) {
            zzhyVar.zza(i2, Long.valueOf(zzb(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int iZza = zza(bArr, i3, zzdtVar);
            int i6 = zzdtVar.zza;
            if (i6 < 0) {
                throw zzfo.zzb();
            }
            if (i6 > bArr.length - iZza) {
                throw zzfo.zza();
            }
            zzhyVar.zza(i2, i6 == 0 ? zzdu.zza : zzdu.zza(bArr, iZza, i6));
            return iZza + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw zzfo.zzd();
            }
            zzhyVar.zza(i2, Integer.valueOf(zza(bArr, i3)));
            return i3 + 4;
        }
        zzhy zzhyVarZzb = zzhy.zzb();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int iZza2 = zza(bArr, i3, zzdtVar);
            int i9 = zzdtVar.zza;
            i8 = i9;
            if (i9 == i7) {
                i3 = iZza2;
                break;
            }
            int iZza3 = zza(i8, bArr, iZza2, i4, zzhyVarZzb, zzdtVar);
            i8 = i9;
            i3 = iZza3;
        }
        if (i3 > i4 || i8 != i7) {
            throw zzfo.zzg();
        }
        zzhyVar.zza(i2, zzhyVarZzb);
        return i3;
    }

    static int zza(int i2, byte[] bArr, int i3, zzdt zzdtVar) {
        int i4;
        int i5;
        int i6 = i2 & 127;
        int i7 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 < 0) {
            int i8 = i6 | ((b2 & 127) << 7);
            int i9 = i7 + 1;
            byte b3 = bArr[i7];
            if (b3 >= 0) {
                i4 = b3 << 14;
            } else {
                i6 = i8 | ((b3 & 127) << 14);
                i7 = i9 + 1;
                byte b4 = bArr[i9];
                if (b4 >= 0) {
                    i5 = b4 << 21;
                } else {
                    i8 = i6 | ((b4 & 127) << 21);
                    i9 = i7 + 1;
                    byte b5 = bArr[i7];
                    if (b5 >= 0) {
                        i4 = b5 << 28;
                    } else {
                        int i10 = i8 | ((b5 & 127) << 28);
                        while (true) {
                            int i11 = i9 + 1;
                            if (bArr[i9] >= 0) {
                                zzdtVar.zza = i10;
                                return i11;
                            }
                            i9 = i11;
                        }
                    }
                }
            }
            zzdtVar.zza = i8 | i4;
            return i9;
        }
        i5 = b2 << 7;
        zzdtVar.zza = i6 | i5;
        return i7;
    }

    static int zza(zzhd<?> zzhdVar, int i2, byte[] bArr, int i3, int i4, zzfl<?> zzflVar, zzdt zzdtVar) {
        int iZza = zza(zzhdVar, bArr, i3, i4, zzdtVar);
        while (true) {
            zzflVar.add(zzdtVar.zzc);
            if (iZza >= i4) {
                break;
            }
            int iZza2 = zza(bArr, iZza, zzdtVar);
            if (i2 != zzdtVar.zza) {
                break;
            }
            iZza = zza(zzhdVar, bArr, iZza2, i4, zzdtVar);
        }
        return iZza;
    }

    static int zza(zzhd zzhdVar, byte[] bArr, int i2, int i3, int i4, zzdt zzdtVar) {
        zzgs zzgsVar = (zzgs) zzhdVar;
        Object objZza = zzgsVar.zza();
        int iZza = zzgsVar.zza(objZza, bArr, i2, i3, i4, zzdtVar);
        zzgsVar.zzc(objZza);
        zzdtVar.zzc = objZza;
        return iZza;
    }

    static int zza(zzhd zzhdVar, byte[] bArr, int i2, int i3, zzdt zzdtVar) {
        int iZza = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iZza = zza(i4, bArr, iZza, zzdtVar);
            i4 = zzdtVar.zza;
        }
        int i5 = iZza;
        if (i4 < 0 || i4 > i3 - i5) {
            throw zzfo.zza();
        }
        Object objZza = zzhdVar.zza();
        int i6 = i4 + i5;
        zzhdVar.zza(objZza, bArr, i5, i6, zzdtVar);
        zzhdVar.zzc(objZza);
        zzdtVar.zzc = objZza;
        return i6;
    }

    static int zza(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    static int zza(byte[] bArr, int i2, zzdt zzdtVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return zza(b2, bArr, i3, zzdtVar);
        }
        zzdtVar.zza = b2;
        return i3;
    }

    static int zza(byte[] bArr, int i2, zzfl<?> zzflVar, zzdt zzdtVar) {
        zzfg zzfgVar = (zzfg) zzflVar;
        int iZza = zza(bArr, i2, zzdtVar);
        int i3 = zzdtVar.zza + iZza;
        while (iZza < i3) {
            iZza = zza(bArr, iZza, zzdtVar);
            zzfgVar.zzd(zzdtVar.zza);
        }
        if (iZza == i3) {
            return iZza;
        }
        throw zzfo.zza();
    }

    static int zzb(byte[] bArr, int i2, zzdt zzdtVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            zzdtVar.zzb = j2;
            return i3;
        }
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | (((long) (b2 & 127)) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            byte b3 = bArr[i4];
            i5 += 7;
            j3 |= ((long) (b3 & 127)) << i5;
            b2 = b3;
            i4 = i6;
        }
        zzdtVar.zzb = j3;
        return i4;
    }

    static long zzb(byte[] bArr, int i2) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    static double zzc(byte[] bArr, int i2) {
        return Double.longBitsToDouble(zzb(bArr, i2));
    }

    static int zzc(byte[] bArr, int i2, zzdt zzdtVar) {
        int iZza = zza(bArr, i2, zzdtVar);
        int i3 = zzdtVar.zza;
        if (i3 < 0) {
            throw zzfo.zzb();
        }
        if (i3 == 0) {
            zzdtVar.zzc = "";
            return iZza;
        }
        zzdtVar.zzc = new String(bArr, iZza, i3, zzff.zza);
        return iZza + i3;
    }

    static float zzd(byte[] bArr, int i2) {
        return Float.intBitsToFloat(zza(bArr, i2));
    }

    static int zzd(byte[] bArr, int i2, zzdt zzdtVar) {
        int iZza = zza(bArr, i2, zzdtVar);
        int i3 = zzdtVar.zza;
        if (i3 < 0) {
            throw zzfo.zzb();
        }
        if (i3 == 0) {
            zzdtVar.zzc = "";
            return iZza;
        }
        zzdtVar.zzc = zzie.zzb(bArr, iZza, i3);
        return iZza + i3;
    }

    static int zze(byte[] bArr, int i2, zzdt zzdtVar) {
        int iZza = zza(bArr, i2, zzdtVar);
        int i3 = zzdtVar.zza;
        if (i3 < 0) {
            throw zzfo.zzb();
        }
        if (i3 > bArr.length - iZza) {
            throw zzfo.zza();
        }
        if (i3 == 0) {
            zzdtVar.zzc = zzdu.zza;
            return iZza;
        }
        zzdtVar.zzc = zzdu.zza(bArr, iZza, i3);
        return iZza + i3;
    }
}
