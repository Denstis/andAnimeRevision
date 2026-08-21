package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzep implements zzis {
    private final zzen zza;

    private zzep(zzen zzenVar) {
        this.zza = (zzen) zzff.zza(zzenVar, "output");
        this.zza.zza = this;
    }

    public static zzep zza(zzen zzenVar) {
        zzep zzepVar = zzenVar.zza;
        return zzepVar != null ? zzepVar : new zzep(zzenVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final int zza() {
        return zzfd.zze.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2) {
        this.zza.zza(i2, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, double d2) {
        this.zza.zza(i2, d2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, float f2) {
        this.zza.zza(i2, f2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, int i3) {
        this.zza.zze(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, long j2) {
        this.zza.zza(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, zzdu zzduVar) {
        this.zza.zza(i2, zzduVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final <K, V> void zza(int i2, zzgf<K, V> zzgfVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zza(i2, 2);
            this.zza.zzb(zzgg.zza(zzgfVar, entry.getKey(), entry.getValue()));
            zzgg.zza(this.zza, zzgfVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, Object obj) {
        if (obj instanceof zzdu) {
            this.zza.zzb(i2, (zzdu) obj);
        } else {
            this.zza.zza(i2, (zzgo) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, Object obj, zzhd zzhdVar) {
        this.zza.zza(i2, (zzgo) obj, zzhdVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, String str) {
        this.zza.zza(i2, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, List<String> list) {
        int i3 = 0;
        if (!(list instanceof zzfv)) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3));
                i3++;
            }
            return;
        }
        zzfv zzfvVar = (zzfv) list;
        while (i3 < list.size()) {
            Object objZzb = zzfvVar.zzb(i3);
            if (objZzb instanceof String) {
                this.zza.zza(i2, (String) objZzb);
            } else {
                this.zza.zza(i2, (zzdu) objZzb);
            }
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, List<?> list, zzhd zzhdVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            zza(i2, list.get(i3), zzhdVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzb(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzf = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzf += zzen.zzf(list.get(i4).intValue());
        }
        this.zza.zzb(iZzf);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i2, boolean z) {
        this.zza.zza(i2, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2) {
        this.zza.zza(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, int i3) {
        this.zza.zzb(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, long j2) {
        this.zza.zzc(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, Object obj, zzhd zzhdVar) {
        zzen zzenVar = this.zza;
        zzenVar.zza(i2, 3);
        zzhdVar.zza((zzgo) obj, zzenVar.zza);
        zzenVar.zza(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, List<zzdu> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.zza.zza(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, List<?> list, zzhd zzhdVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzb(i2, list.get(i3), zzhdVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zze(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzi = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzi += zzen.zzi(list.get(i4).intValue());
        }
        this.zza.zzb(iZzi);
        while (i3 < list.size()) {
            this.zza.zzd(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i2, int i3) {
        this.zza.zzb(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i2, long j2) {
        this.zza.zza(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzd = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzd += zzen.zzd(list.get(i4).longValue());
        }
        this.zza.zzb(iZzd);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i2, int i3) {
        this.zza.zze(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i2, long j2) {
        this.zza.zzc(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZze = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZze += zzen.zze(list.get(i4).longValue());
        }
        this.zza.zzb(iZze);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i2, int i3) {
        this.zza.zzc(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i2, long j2) {
        this.zza.zzb(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzc(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzg = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzg += zzen.zzg(list.get(i4).longValue());
        }
        this.zza.zzb(iZzg);
        while (i3 < list.size()) {
            this.zza.zzc(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzf(int i2, int i3) {
        this.zza.zzd(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzf(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzb = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzb += zzen.zzb(list.get(i4).floatValue());
        }
        this.zza.zzb(iZzb);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzg(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzb = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzb += zzen.zzb(list.get(i4).doubleValue());
        }
        this.zza.zzb(iZzb);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzh(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzb(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzk = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzk += zzen.zzk(list.get(i4).intValue());
        }
        this.zza.zzb(iZzk);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzi(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zza(i2, list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzb = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzb += zzen.zzb(list.get(i4).booleanValue());
        }
        this.zza.zzb(iZzb);
        while (i3 < list.size()) {
            this.zza.zza(list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzj(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzc(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzg = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzg += zzen.zzg(list.get(i4).intValue());
        }
        this.zza.zzb(iZzg);
        while (i3 < list.size()) {
            this.zza.zzb(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzk(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zze(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzj = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzj += zzen.zzj(list.get(i4).intValue());
        }
        this.zza.zzb(iZzj);
        while (i3 < list.size()) {
            this.zza.zzd(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzl(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzc(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzh = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzh += zzen.zzh(list.get(i4).longValue());
        }
        this.zza.zzb(iZzh);
        while (i3 < list.size()) {
            this.zza.zzc(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzm(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzd(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzh = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzh += zzen.zzh(list.get(i4).intValue());
        }
        this.zza.zzb(iZzh);
        while (i3 < list.size()) {
            this.zza.zzc(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzn(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.zza.zzb(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.zza.zza(i2, 2);
        int iZzf = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            iZzf += zzen.zzf(list.get(i4).longValue());
        }
        this.zza.zzb(iZzf);
        while (i3 < list.size()) {
            this.zza.zzb(list.get(i3).longValue());
            i3++;
        }
    }
}
