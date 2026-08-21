package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzjn {
    public int height;
    public int number;
    public int type;
    public int width;
    public zzin zzaff;
    public int zzafj;
    public byte[] zzafk;
    public int zzafm;
    public int zzafn;
    private String zzaft;
    public String zzapl;
    public int zzapm;
    public boolean zzapn;
    public byte[] zzapo;
    public zzjg zzapp;
    public byte[] zzapq;
    public int zzapr;
    public int zzaps;
    public int zzapt;
    public boolean zzapu;
    public int zzapv;
    public int zzapw;
    public int zzapx;
    public int zzapy;
    public int zzapz;
    public float zzaqa;
    public float zzaqb;
    public float zzaqc;
    public float zzaqd;
    public float zzaqe;
    public float zzaqf;
    public float zzaqg;
    public float zzaqh;
    public float zzaqi;
    public float zzaqj;
    public int zzaqk;
    public long zzaql;
    public long zzaqm;
    public boolean zzaqn;
    public boolean zzaqo;
    public zzjd zzaqp;
    public int zzaqq;

    private zzjn() {
        this.width = -1;
        this.height = -1;
        this.zzapr = -1;
        this.zzaps = -1;
        this.zzapt = 0;
        this.zzafk = null;
        this.zzafj = -1;
        this.zzapu = false;
        this.zzapv = -1;
        this.zzapw = -1;
        this.zzapx = -1;
        this.zzapy = 1000;
        this.zzapz = 200;
        this.zzaqa = -1.0f;
        this.zzaqb = -1.0f;
        this.zzaqc = -1.0f;
        this.zzaqd = -1.0f;
        this.zzaqe = -1.0f;
        this.zzaqf = -1.0f;
        this.zzaqg = -1.0f;
        this.zzaqh = -1.0f;
        this.zzaqi = -1.0f;
        this.zzaqj = -1.0f;
        this.zzafm = 1;
        this.zzaqk = -1;
        this.zzafn = 8000;
        this.zzaql = 0L;
        this.zzaqm = 0L;
        this.zzaqo = true;
        this.zzaft = "eng";
    }

    /* synthetic */ zzjn(zzjl zzjlVar) {
        this();
    }

    private static List<byte[]> zza(zzoc zzocVar) throws zzgv {
        try {
            zzocVar.zzbh(16);
            if (zzocVar.zzip() != 826496599) {
                return null;
            }
            byte[] bArr = zzocVar.data;
            for (int position = zzocVar.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                }
            }
            throw new zzgv("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzgv("Error parsing FourCC VC1 codec private");
        }
    }

    private static boolean zzb(zzoc zzocVar) throws zzgv {
        try {
            int iZzin = zzocVar.zzin();
            if (iZzin == 1) {
                return true;
            }
            if (iZzin == 65534) {
                zzocVar.zzbg(24);
                if (zzocVar.readLong() == zzjm.zzann.getMostSignificantBits()) {
                    if (zzocVar.readLong() == zzjm.zzann.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzgv("Error parsing MS/ACM codec private");
        }
    }

    private static List<byte[]> zzd(byte[] bArr) throws zzgv {
        try {
            if (bArr[0] != 2) {
                throw new zzgv("Error parsing vorbis codec private");
            }
            int i2 = 1;
            int i3 = 0;
            while (bArr[i2] == -1) {
                i3 += 255;
                i2++;
            }
            int i4 = i2 + 1;
            int i5 = i3 + bArr[i2];
            int i6 = 0;
            while (bArr[i4] == -1) {
                i6 += 255;
                i4++;
            }
            int i7 = i4 + 1;
            int i8 = i6 + bArr[i4];
            if (bArr[i7] != 1) {
                throw new zzgv("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i5];
            System.arraycopy(bArr, i7, bArr2, 0, i5);
            int i9 = i7 + i5;
            if (bArr[i9] != 3) {
                throw new zzgv("Error parsing vorbis codec private");
            }
            int i10 = i9 + i8;
            if (bArr[i10] != 5) {
                throw new zzgv("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i10];
            System.arraycopy(bArr, i10, bArr3, 0, bArr.length - i10);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzgv("Error parsing vorbis codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.internal.ads.zziy r30, int r31) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 1376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjn.zza(com.google.android.gms.internal.ads.zziy, int):void");
    }
}
