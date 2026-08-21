package com.google.android.gms.measurement.internal;

import b.e.a;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzmj;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzp {
    private String zza;
    private boolean zzb;
    private zzbr.zzi zzc;
    private BitSet zzd;
    private BitSet zze;
    private Map<Integer, Long> zzf;
    private Map<Integer, List<Long>> zzg;
    private final /* synthetic */ zzn zzh;

    private zzp(zzn zznVar, String str) {
        this.zzh = zznVar;
        this.zza = str;
        this.zzb = true;
        this.zzd = new BitSet();
        this.zze = new BitSet();
        this.zzf = new a();
        this.zzg = new a();
    }

    private zzp(zzn zznVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.zzh = zznVar;
        this.zza = str;
        this.zzd = bitSet;
        this.zze = bitSet2;
        this.zzf = map;
        this.zzg = new a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.zzg.put(num, arrayList);
            }
        }
        this.zzb = false;
        this.zzc = zziVar;
    }

    /* synthetic */ zzp(zzn zznVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzq zzqVar) {
        this(zznVar, str, zziVar, bitSet, bitSet2, map, map2);
    }

    /* synthetic */ zzp(zzn zznVar, String str, zzq zzqVar) {
        this(zznVar, str);
    }

    final zzbr.zza zza(int i2, List<Integer> list) {
        ArrayList arrayList;
        List listEmptyList;
        zzbr.zza.C0174zza c0174zzaZzh = zzbr.zza.zzh();
        c0174zzaZzh.zza(i2);
        c0174zzaZzh.zza(this.zzb);
        zzbr.zzi zziVar = this.zzc;
        if (zziVar != null) {
            c0174zzaZzh.zza(zziVar);
        }
        zzbr.zzi.zza zzaVarZza = zzbr.zzi.zzi().zzb(zzki.zza(this.zzd)).zza(zzki.zza(this.zze));
        Map<Integer, Long> map = this.zzf;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            Iterator<Integer> it = this.zzf.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                arrayList.add((zzbr.zzb) zzbr.zzb.zze().zza(iIntValue).zza(this.zzf.get(Integer.valueOf(iIntValue)).longValue()).zzu());
            }
        }
        zzaVarZza.zzc(arrayList);
        Map<Integer, List<Long>> map2 = this.zzg;
        if (map2 == null) {
            listEmptyList = Collections.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList(map2.size());
            for (Integer num : this.zzg.keySet()) {
                zzbr.zzj.zza zzaVarZza2 = zzbr.zzj.zze().zza(num.intValue());
                List<Long> list2 = this.zzg.get(num);
                if (list2 != null) {
                    Collections.sort(list2);
                    zzaVarZza2.zza(list2);
                }
                arrayList2.add((zzbr.zzj) zzaVarZza2.zzu());
            }
            listEmptyList = arrayList2;
        }
        if ((!zzmj.zzb() || !this.zzh.zzt().zzd(this.zza, zzap.zzbs)) && c0174zzaZzh.zza()) {
            List<zzbr.zzj> listZzg = c0174zzaZzh.zzb().zzg();
            if (!listZzg.isEmpty()) {
                ArrayList arrayList3 = new ArrayList(listEmptyList);
                a aVar = new a();
                for (zzbr.zzj zzjVar : listZzg) {
                    if (zzjVar.zza() && zzjVar.zzd() > 0) {
                        aVar.put(Integer.valueOf(zzjVar.zzb()), Long.valueOf(zzjVar.zza(zzjVar.zzd() - 1)));
                    }
                }
                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                    zzbr.zzj zzjVar2 = (zzbr.zzj) arrayList3.get(i3);
                    Long l = (Long) aVar.remove(zzjVar2.zza() ? Integer.valueOf(zzjVar2.zzb()) : null);
                    if (l != null && (list == null || !list.contains(Integer.valueOf(zzjVar2.zzb())))) {
                        ArrayList arrayList4 = new ArrayList();
                        if (l.longValue() < zzjVar2.zza(0)) {
                            arrayList4.add(l);
                        }
                        arrayList4.addAll(zzjVar2.zzc());
                        arrayList3.set(i3, (zzbr.zzj) zzjVar2.zzbm().zza().zza(arrayList4).zzu());
                    }
                }
                for (Integer num2 : aVar.keySet()) {
                    arrayList3.add((zzbr.zzj) zzbr.zzj.zze().zza(num2.intValue()).zza(((Long) aVar.get(num2)).longValue()).zzu());
                }
                listEmptyList = arrayList3;
            }
        }
        zzaVarZza.zzd(listEmptyList);
        c0174zzaZzh.zza(zzaVarZza);
        return (zzbr.zza) c0174zzaZzh.zzu();
    }

    final void zza(zzu zzuVar) {
        int iZza = zzuVar.zza();
        Boolean bool = zzuVar.zzc;
        if (bool != null) {
            this.zze.set(iZza, bool.booleanValue());
        }
        Boolean bool2 = zzuVar.zzd;
        if (bool2 != null) {
            this.zzd.set(iZza, bool2.booleanValue());
        }
        if (zzuVar.zze != null) {
            Long l = this.zzf.get(Integer.valueOf(iZza));
            long jLongValue = zzuVar.zze.longValue() / 1000;
            if (l == null || jLongValue > l.longValue()) {
                this.zzf.put(Integer.valueOf(iZza), Long.valueOf(jLongValue));
            }
        }
        if (zzuVar.zzf != null) {
            List<Long> arrayList = this.zzg.get(Integer.valueOf(iZza));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.zzg.put(Integer.valueOf(iZza), arrayList);
            }
            if (zzmj.zzb() && this.zzh.zzt().zzd(this.zza, zzap.zzbs) && zzuVar.zzb()) {
                arrayList.clear();
            }
            arrayList.add(Long.valueOf(zzuVar.zzf.longValue() / 1000));
        }
    }
}
