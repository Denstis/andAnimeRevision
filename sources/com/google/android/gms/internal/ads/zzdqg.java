package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzdqg implements zzduk {
    private final zzdqf zzhgh;

    private zzdqg(zzdqf zzdqfVar) {
        this.zzhgh = (zzdqf) zzdqx.zza(zzdqfVar, "output");
        this.zzhgh.zzhgy = this;
    }

    public static zzdqg zza(zzdqf zzdqfVar) {
        zzdqg zzdqgVar = zzdqfVar.zzhgy;
        return zzdqgVar != null ? zzdqgVar : new zzdqg(zzdqfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, float f2) {
        this.zzhgh.zza(i2, f2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, zzdpm zzdpmVar) {
        this.zzhgh.zza(i2, zzdpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final <K, V> void zza(int i2, zzdrx<K, V> zzdrxVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzhgh.zzz(i2, 2);
            this.zzhgh.zzga(zzdry.zza(zzdrxVar, entry.getKey(), entry.getValue()));
            zzdry.zza(this.zzhgh, zzdrxVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, Object obj, zzdsv zzdsvVar) {
        this.zzhgh.zza(i2, (zzdsg) obj, zzdsvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, List<String> list) {
        int i3 = 0;
        if (!(list instanceof zzdrn)) {
            while (i3 < list.size()) {
                this.zzhgh.zzg(i2, list.get(i3));
                i3++;
            }
            return;
        }
        zzdrn zzdrnVar = (zzdrn) list;
        while (i3 < list.size()) {
            Object objZzgq = zzdrnVar.zzgq(i3);
            if (objZzgq instanceof String) {
                this.zzhgh.zzg(i2, (String) objZzgq);
            } else {
                this.zzhgh.zza(i2, (zzdpm) objZzgq);
            }
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, List<?> list, zzdsv zzdsvVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            zza(i2, list.get(i3), zzdsvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zza(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzaa(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzge = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzge += zzdqf.zzge(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzge);
        while (i3 < list.size()) {
            this.zzhgh.zzfz(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzaa(int i2, int i3) {
        this.zzhgh.zzaa(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzab(int i2, int i3) {
        this.zzhgh.zzab(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzac(int i2, int i3) {
        this.zzhgh.zzac(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzad(int i2, int i3) {
        this.zzhgh.zzad(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzak(int i2, int i3) {
        this.zzhgh.zzad(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzal(int i2, int i3) {
        this.zzhgh.zzaa(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final int zzayy() {
        return zzdqw.zzd.zzhlg;
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, double d2) {
        this.zzhgh.zzb(i2, d2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, Object obj) {
        if (obj instanceof zzdpm) {
            this.zzhgh.zzb(i2, (zzdpm) obj);
        } else {
            this.zzhgh.zzb(i2, (zzdsg) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, Object obj, zzdsv zzdsvVar) {
        zzdqf zzdqfVar = this.zzhgh;
        zzdqfVar.zzz(i2, 3);
        zzdsvVar.zza((zzdsg) obj, zzdqfVar.zzhgy);
        zzdqfVar.zzz(i2, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, List<zzdpm> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.zzhgh.zza(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, List<?> list, zzdsv zzdsvVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzb(i2, list.get(i3), zzdsvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzb(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzad(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzgh = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzgh += zzdqf.zzgh(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzgh);
        while (i3 < list.size()) {
            this.zzhgh.zzgc(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzc(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzg(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzfd = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzfd += zzdqf.zzfd(list.get(i4).longValue());
        }
        this.zzhgh.zzga(iZzfd);
        while (i3 < list.size()) {
            this.zzhgh.zzfa(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzd(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzg(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzfe = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzfe += zzdqf.zzfe(list.get(i4).longValue());
        }
        this.zzhgh.zzga(iZzfe);
        while (i3 < list.size()) {
            this.zzhgh.zzfa(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zze(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzi(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzfg = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzfg += zzdqf.zzfg(list.get(i4).longValue());
        }
        this.zzhgh.zzga(iZzfg);
        while (i3 < list.size()) {
            this.zzhgh.zzfc(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzf(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zza(i2, list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzg = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzg += zzdqf.zzg(list.get(i4).floatValue());
        }
        this.zzhgh.zzga(iZzg);
        while (i3 < list.size()) {
            this.zzhgh.zzf(list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzg(int i2, long j2) {
        this.zzhgh.zzg(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzg(int i2, String str) {
        this.zzhgh.zzg(i2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzg(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzb(i2, list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzc = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzc += zzdqf.zzc(list.get(i4).doubleValue());
        }
        this.zzhgh.zzga(iZzc);
        while (i3 < list.size()) {
            this.zzhgh.zzb(list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzg(int i2, boolean z) {
        this.zzhgh.zzg(i2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzgm(int i2) {
        this.zzhgh.zzz(i2, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzgn(int i2) {
        this.zzhgh.zzz(i2, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzh(int i2, long j2) {
        this.zzhgh.zzh(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzh(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzaa(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzgj = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzgj += zzdqf.zzgj(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzgj);
        while (i3 < list.size()) {
            this.zzhgh.zzfz(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzi(int i2, long j2) {
        this.zzhgh.zzi(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzi(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzg(i2, list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzbi = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzbi += zzdqf.zzbi(list.get(i4).booleanValue());
        }
        this.zzhgh.zzga(iZzbi);
        while (i3 < list.size()) {
            this.zzhgh.zzbh(list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzj(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzab(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzgf = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzgf += zzdqf.zzgf(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzgf);
        while (i3 < list.size()) {
            this.zzhgh.zzga(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzk(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzad(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzgi = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzgi += zzdqf.zzgi(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzgi);
        while (i3 < list.size()) {
            this.zzhgh.zzgc(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzl(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzi(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzfh = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzfh += zzdqf.zzfh(list.get(i4).longValue());
        }
        this.zzhgh.zzga(iZzfh);
        while (i3 < list.size()) {
            this.zzhgh.zzfc(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzm(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzac(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzgg = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzgg += zzdqf.zzgg(list.get(i4).intValue());
        }
        this.zzhgh.zzga(iZzgg);
        while (i3 < list.size()) {
            this.zzhgh.zzgb(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzn(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zzhgh.zzh(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zzhgh.zzz(i2, 2);
        int iZzff = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzff += zzdqf.zzff(list.get(i4).longValue());
        }
        this.zzhgh.zzga(iZzff);
        while (i3 < list.size()) {
            this.zzhgh.zzfb(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzo(int i2, long j2) {
        this.zzhgh.zzg(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzduk
    public final void zzp(int i2, long j2) {
        this.zzhgh.zzi(i2, j2);
    }
}
