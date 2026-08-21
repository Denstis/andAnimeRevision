package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbn implements zzcym {
    private final Clock zzbmp;
    private final zzcbl zzfsc;
    private final Map<zzcyd, Long> zzfsb = new HashMap();
    private final Map<zzcyd, zzcbm> zzfsd = new HashMap();

    public zzcbn(zzcbl zzcblVar, Set<zzcbm> set, Clock clock) {
        this.zzfsc = zzcblVar;
        for (zzcbm zzcbmVar : set) {
            this.zzfsd.put(zzcbmVar.zzfsa, zzcbmVar);
        }
        this.zzbmp = clock;
    }

    private final void zza(zzcyd zzcydVar, boolean z) {
        zzcyd zzcydVar2 = this.zzfsd.get(zzcydVar).zzfrz;
        String str = z ? "s." : "f.";
        if (this.zzfsb.containsKey(zzcydVar2)) {
            long jElapsedRealtime = this.zzbmp.elapsedRealtime() - this.zzfsb.get(zzcydVar2).longValue();
            Map<String, String> mapZzqd = this.zzfsc.zzqd();
            String strValueOf = String.valueOf(this.zzfsd.get(zzcydVar).label);
            String strConcat = strValueOf.length() != 0 ? "label.".concat(strValueOf) : new String("label.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqd.put(strConcat, strValueOf2.length() != 0 ? str.concat(strValueOf2) : new String(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcym
    public final void zza(zzcyd zzcydVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzcym
    public final void zza(zzcyd zzcydVar, String str, Throwable th) {
        if (this.zzfsb.containsKey(zzcydVar)) {
            long jElapsedRealtime = this.zzbmp.elapsedRealtime() - this.zzfsb.get(zzcydVar).longValue();
            Map<String, String> mapZzqd = this.zzfsc.zzqd();
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqd.put(strConcat, strValueOf2.length() != 0 ? "f.".concat(strValueOf2) : new String("f."));
        }
        if (this.zzfsd.containsKey(zzcydVar)) {
            zza(zzcydVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcym
    public final void zzb(zzcyd zzcydVar, String str) {
        this.zzfsb.put(zzcydVar, Long.valueOf(this.zzbmp.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzcym
    public final void zzc(zzcyd zzcydVar, String str) {
        if (this.zzfsb.containsKey(zzcydVar)) {
            long jElapsedRealtime = this.zzbmp.elapsedRealtime() - this.zzfsb.get(zzcydVar).longValue();
            Map<String, String> mapZzqd = this.zzfsc.zzqd();
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqd.put(strConcat, strValueOf2.length() != 0 ? "s.".concat(strValueOf2) : new String("s."));
        }
        if (this.zzfsd.containsKey(zzcydVar)) {
            zza(zzcydVar, true);
        }
    }
}
