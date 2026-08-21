package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
class zzdpw extends zzdpx {
    protected final byte[] zzhgi;

    zzdpw(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzhgi = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdpm) || size() != ((zzdpm) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzdpw)) {
            return obj.equals(this);
        }
        zzdpw zzdpwVar = (zzdpw) obj;
        int iZzaxq = zzaxq();
        int iZzaxq2 = zzdpwVar.zzaxq();
        if (iZzaxq == 0 || iZzaxq2 == 0 || iZzaxq == iZzaxq2) {
            return zza(zzdpwVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public int size() {
        return this.zzhgi.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    protected final String zza(Charset charset) {
        return new String(this.zzhgi, zzaxr(), size(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    final void zza(zzdpn zzdpnVar) {
        zzdpnVar.zzi(this.zzhgi, zzaxr(), size());
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    protected void zza(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.zzhgi, 0, bArr, 0, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzdpx
    final boolean zza(zzdpm zzdpmVar, int i2, int i3) {
        if (i3 > zzdpmVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i3);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 > zzdpmVar.size()) {
            int size2 = zzdpmVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i3);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzdpmVar instanceof zzdpw)) {
            return zzdpmVar.zzy(0, i3).equals(zzy(0, i3));
        }
        zzdpw zzdpwVar = (zzdpw) zzdpmVar;
        byte[] bArr = this.zzhgi;
        byte[] bArr2 = zzdpwVar.zzhgi;
        int iZzaxr = zzaxr() + i3;
        int iZzaxr2 = zzaxr();
        int iZzaxr3 = zzdpwVar.zzaxr();
        while (iZzaxr2 < iZzaxr) {
            if (bArr[iZzaxr2] != bArr2[iZzaxr3]) {
                return false;
            }
            iZzaxr2++;
            iZzaxr3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final boolean zzaxo() {
        int iZzaxr = zzaxr();
        return zzdtw.zzl(this.zzhgi, iZzaxr, size() + iZzaxr);
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final zzdpy zzaxp() {
        return zzdpy.zzc(this.zzhgi, zzaxr(), size(), true);
    }

    protected int zzaxr() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public byte zzfm(int i2) {
        return this.zzhgi[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    byte zzfn(int i2) {
        return this.zzhgi[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    protected final int zzg(int i2, int i3, int i4) {
        return zzdqx.zza(i2, this.zzhgi, zzaxr(), i4);
    }

    @Override // com.google.android.gms.internal.ads.zzdpm
    public final zzdpm zzy(int i2, int i3) {
        int iZzh = zzdpm.zzh(0, i3, size());
        return iZzh == 0 ? zzdpm.zzhgb : new zzdpt(this.zzhgi, zzaxr(), iZzh);
    }
}
