package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdpi {
    static int zza(int i2, byte[] bArr, int i3, int i4, zzdpl zzdplVar) {
        if ((i2 >>> 3) == 0) {
            throw zzdrg.zzbaf();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return zzb(bArr, i3, zzdplVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return zza(bArr, i3, zzdplVar) + zzdplVar.zzhfx;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw zzdrg.zzbaf();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = zza(bArr, i3, zzdplVar);
            i7 = zzdplVar.zzhfx;
            if (i7 == i6) {
                break;
            }
            i3 = zza(i7, bArr, i3, i4, zzdplVar);
        }
        if (i3 > i4 || i7 != i6) {
            throw zzdrg.zzbai();
        }
        return i3;
    }

    static int zza(int i2, byte[] bArr, int i3, int i4, zzdrd<?> zzdrdVar, zzdpl zzdplVar) {
        zzdqy zzdqyVar = (zzdqy) zzdrdVar;
        int iZza = zza(bArr, i3, zzdplVar);
        while (true) {
            zzdqyVar.zzgp(zzdplVar.zzhfx);
            if (iZza >= i4) {
                break;
            }
            int iZza2 = zza(bArr, iZza, zzdplVar);
            if (i2 != zzdplVar.zzhfx) {
                break;
            }
            iZza = zza(bArr, iZza2, zzdplVar);
        }
        return iZza;
    }

    static int zza(int i2, byte[] bArr, int i3, int i4, zzdtq zzdtqVar, zzdpl zzdplVar) {
        if ((i2 >>> 3) == 0) {
            throw zzdrg.zzbaf();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int iZzb = zzb(bArr, i3, zzdplVar);
            zzdtqVar.zzc(i2, Long.valueOf(zzdplVar.zzhfy));
            return iZzb;
        }
        if (i5 == 1) {
            zzdtqVar.zzc(i2, Long.valueOf(zzg(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int iZza = zza(bArr, i3, zzdplVar);
            int i6 = zzdplVar.zzhfx;
            if (i6 < 0) {
                throw zzdrg.zzbad();
            }
            if (i6 > bArr.length - iZza) {
                throw zzdrg.zzbac();
            }
            zzdtqVar.zzc(i2, i6 == 0 ? zzdpm.zzhgb : zzdpm.zzh(bArr, iZza, i6));
            return iZza + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw zzdrg.zzbaf();
            }
            zzdtqVar.zzc(i2, Integer.valueOf(zzf(bArr, i3)));
            return i3 + 4;
        }
        zzdtq zzdtqVarZzbby = zzdtq.zzbby();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int iZza2 = zza(bArr, i3, zzdplVar);
            int i9 = zzdplVar.zzhfx;
            i8 = i9;
            if (i9 == i7) {
                i3 = iZza2;
                break;
            }
            int iZza3 = zza(i8, bArr, iZza2, i4, zzdtqVarZzbby, zzdplVar);
            i8 = i9;
            i3 = iZza3;
        }
        if (i3 > i4 || i8 != i7) {
            throw zzdrg.zzbai();
        }
        zzdtqVar.zzc(i2, zzdtqVarZzbby);
        return i3;
    }

    static int zza(int i2, byte[] bArr, int i3, zzdpl zzdplVar) {
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
                                zzdplVar.zzhfx = i10;
                                return i11;
                            }
                            i9 = i11;
                        }
                    }
                }
            }
            zzdplVar.zzhfx = i8 | i4;
            return i9;
        }
        i5 = b2 << 7;
        zzdplVar.zzhfx = i6 | i5;
        return i7;
    }

    static int zza(zzdsv<?> zzdsvVar, int i2, byte[] bArr, int i3, int i4, zzdrd<?> zzdrdVar, zzdpl zzdplVar) {
        int iZza = zza(zzdsvVar, bArr, i3, i4, zzdplVar);
        while (true) {
            zzdrdVar.add(zzdplVar.zzhfz);
            if (iZza >= i4) {
                break;
            }
            int iZza2 = zza(bArr, iZza, zzdplVar);
            if (i2 != zzdplVar.zzhfx) {
                break;
            }
            iZza = zza(zzdsvVar, bArr, iZza2, i4, zzdplVar);
        }
        return iZza;
    }

    static int zza(zzdsv zzdsvVar, byte[] bArr, int i2, int i3, int i4, zzdpl zzdplVar) {
        zzdsk zzdskVar = (zzdsk) zzdsvVar;
        Object objNewInstance = zzdskVar.newInstance();
        int iZza = zzdskVar.zza(objNewInstance, bArr, i2, i3, i4, zzdplVar);
        zzdskVar.zzak(objNewInstance);
        zzdplVar.zzhfz = objNewInstance;
        return iZza;
    }

    static int zza(zzdsv zzdsvVar, byte[] bArr, int i2, int i3, zzdpl zzdplVar) {
        int iZza = i2 + 1;
        int i4 = bArr[i2];
        if (i4 < 0) {
            iZza = zza(i4, bArr, iZza, zzdplVar);
            i4 = zzdplVar.zzhfx;
        }
        int i5 = iZza;
        if (i4 < 0 || i4 > i3 - i5) {
            throw zzdrg.zzbac();
        }
        Object objNewInstance = zzdsvVar.newInstance();
        int i6 = i4 + i5;
        zzdsvVar.zza(objNewInstance, bArr, i5, i6, zzdplVar);
        zzdsvVar.zzak(objNewInstance);
        zzdplVar.zzhfz = objNewInstance;
        return i6;
    }

    static int zza(byte[] bArr, int i2, zzdpl zzdplVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return zza(b2, bArr, i3, zzdplVar);
        }
        zzdplVar.zzhfx = b2;
        return i3;
    }

    static int zza(byte[] bArr, int i2, zzdrd<?> zzdrdVar, zzdpl zzdplVar) {
        zzdqy zzdqyVar = (zzdqy) zzdrdVar;
        int iZza = zza(bArr, i2, zzdplVar);
        int i3 = zzdplVar.zzhfx + iZza;
        while (iZza < i3) {
            iZza = zza(bArr, iZza, zzdplVar);
            zzdqyVar.zzgp(zzdplVar.zzhfx);
        }
        if (iZza == i3) {
            return iZza;
        }
        throw zzdrg.zzbac();
    }

    static int zzb(byte[] bArr, int i2, zzdpl zzdplVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            zzdplVar.zzhfy = j2;
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
        zzdplVar.zzhfy = j3;
        return i4;
    }

    static int zzc(byte[] bArr, int i2, zzdpl zzdplVar) {
        int iZza = zza(bArr, i2, zzdplVar);
        int i3 = zzdplVar.zzhfx;
        if (i3 < 0) {
            throw zzdrg.zzbad();
        }
        if (i3 == 0) {
            zzdplVar.zzhfz = "";
            return iZza;
        }
        zzdplVar.zzhfz = new String(bArr, iZza, i3, zzdqx.UTF_8);
        return iZza + i3;
    }

    static int zzd(byte[] bArr, int i2, zzdpl zzdplVar) {
        int iZza = zza(bArr, i2, zzdplVar);
        int i3 = zzdplVar.zzhfx;
        if (i3 < 0) {
            throw zzdrg.zzbad();
        }
        if (i3 == 0) {
            zzdplVar.zzhfz = "";
            return iZza;
        }
        zzdplVar.zzhfz = zzdtw.zzn(bArr, iZza, i3);
        return iZza + i3;
    }

    static int zze(byte[] bArr, int i2, zzdpl zzdplVar) {
        int iZza = zza(bArr, i2, zzdplVar);
        int i3 = zzdplVar.zzhfx;
        if (i3 < 0) {
            throw zzdrg.zzbad();
        }
        if (i3 > bArr.length - iZza) {
            throw zzdrg.zzbac();
        }
        if (i3 == 0) {
            zzdplVar.zzhfz = zzdpm.zzhgb;
            return iZza;
        }
        zzdplVar.zzhfz = zzdpm.zzh(bArr, iZza, i3);
        return iZza + i3;
    }

    static int zzf(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    static long zzg(byte[] bArr, int i2) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    static double zzh(byte[] bArr, int i2) {
        return Double.longBitsToDouble(zzg(bArr, i2));
    }

    static float zzi(byte[] bArr, int i2) {
        return Float.intBitsToFloat(zzf(bArr, i2));
    }
}
