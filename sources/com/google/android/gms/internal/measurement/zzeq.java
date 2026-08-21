package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzeq {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzeq zzc;
    private static volatile zzeq zzd;
    private static final zzeq zze = new zzeq(true);
    private final Map<zza, zzfd.zzf<?, ?>> zzf;

    static final class zza {
        private final Object zza;
        private final int zzb;

        zza(Object obj, int i2) {
            this.zza = obj;
            this.zzb = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zza == zzaVar.zza && this.zzb == zzaVar.zzb;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.zza) * 65535) + this.zzb;
        }
    }

    zzeq() {
        this.zzf = new HashMap();
    }

    private zzeq(boolean z) {
        this.zzf = Collections.emptyMap();
    }

    public static zzeq zza() {
        zzeq zzeqVar = zzc;
        if (zzeqVar == null) {
            synchronized (zzeq.class) {
                zzeqVar = zzc;
                if (zzeqVar == null) {
                    zzeqVar = zze;
                    zzc = zzeqVar;
                }
            }
        }
        return zzeqVar;
    }

    public static zzeq zzb() {
        zzeq zzeqVar = zzd;
        if (zzeqVar != null) {
            return zzeqVar;
        }
        synchronized (zzeq.class) {
            zzeq zzeqVar2 = zzd;
            if (zzeqVar2 != null) {
                return zzeqVar2;
            }
            zzeq zzeqVarZza = zzfb.zza(zzeq.class);
            zzd = zzeqVarZza;
            return zzeqVarZza;
        }
    }

    public final <ContainingType extends zzgo> zzfd.zzf<ContainingType, ?> zza(ContainingType containingtype, int i2) {
        return (zzfd.zzf) this.zzf.get(new zza(containingtype, i2));
    }
}
