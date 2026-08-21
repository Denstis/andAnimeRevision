package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzn extends zzkb {
    private String zzb;
    private Set<Integer> zzc;
    private Map<Integer, zzp> zzd;

    zzn(zzke zzkeVar) {
        super(zzkeVar);
    }

    private final zzp zza(int i2) {
        if (this.zzd.containsKey(Integer.valueOf(i2))) {
            return this.zzd.get(Integer.valueOf(i2));
        }
        zzp zzpVar = new zzp(this, this.zzb, null);
        this.zzd.put(Integer.valueOf(i2), zzpVar);
        return zzpVar;
    }

    private final boolean zza(int i2, int i3) {
        if (this.zzd.get(Integer.valueOf(i2)) == null) {
            return false;
        }
        return this.zzd.get(Integer.valueOf(i2)).zzd.get(i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:192:0x05f4, code lost:
    
        r8 = zzr().zzi();
        r11 = com.google.android.gms.measurement.internal.zzew.zza(r48.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0608, code lost:
    
        if (r9.zza() == false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x060a, code lost:
    
        r14 = java.lang.Integer.valueOf(r9.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0613, code lost:
    
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0614, code lost:
    
        r8.zza("Invalid property filter ID. appId, id", r11, java.lang.String.valueOf(r14));
        r11 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List<com.google.android.gms.internal.measurement.zzbr.zza> zza(java.lang.String r49, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzc> r50, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzk> r51, java.lang.Long r52) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1791
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzn.zza(java.lang.String, java.util.List, java.util.List, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }
}
