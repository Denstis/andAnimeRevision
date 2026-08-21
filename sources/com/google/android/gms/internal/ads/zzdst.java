package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
final class zzdst implements zzdse {
    private final int flags;
    private final String info;
    private final Object[] zzhnb;
    private final zzdsg zzhne;

    zzdst(zzdsg zzdsgVar, String str, Object[] objArr) {
        this.zzhne = zzdsgVar;
        this.info = str;
        this.zzhnb = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 < 55296) {
                this.flags = i2 | (cCharAt2 << i3);
                return;
            } else {
                i2 |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdse
    public final int zzbay() {
        return (this.flags & 1) == 1 ? zzdqw.zzd.zzhld : zzdqw.zzd.zzhle;
    }

    @Override // com.google.android.gms.internal.ads.zzdse
    public final boolean zzbaz() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzdse
    public final zzdsg zzbba() {
        return this.zzhne;
    }

    final String zzbbg() {
        return this.info;
    }

    final Object[] zzbbh() {
        return this.zzhnb;
    }
}
