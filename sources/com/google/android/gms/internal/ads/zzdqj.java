package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzdqj {
    private static volatile boolean zzhhi = false;
    private static boolean zzhhj = true;
    private static volatile zzdqj zzhhl;
    private static volatile zzdqj zzhhm;
    private final Map<zza, zzdqw.zze<?, ?>> zzhho;
    private static final Class<?> zzhhk = zzayz();
    private static final zzdqj zzhhn = new zzdqj(true);

    static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i2) {
            this.object = obj;
            this.number = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.object == zzaVar.object && this.number == zzaVar.number;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }
    }

    zzdqj() {
        this.zzhho = new HashMap();
    }

    private zzdqj(boolean z) {
        this.zzhho = Collections.emptyMap();
    }

    private static Class<?> zzayz() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzdqj zzaza() {
        zzdqj zzdqjVar = zzhhl;
        if (zzdqjVar == null) {
            synchronized (zzdqj.class) {
                zzdqjVar = zzhhl;
                if (zzdqjVar == null) {
                    zzdqjVar = zzhhn;
                    zzhhl = zzdqjVar;
                }
            }
        }
        return zzdqjVar;
    }

    public static zzdqj zzazb() {
        zzdqj zzdqjVarZze = zzhhm;
        if (zzdqjVarZze == null) {
            synchronized (zzdqj.class) {
                zzdqjVarZze = zzhhm;
                if (zzdqjVarZze == null) {
                    zzdqjVarZze = zzdqv.zze(zzdqj.class);
                    zzhhm = zzdqjVarZze;
                }
            }
        }
        return zzdqjVarZze;
    }

    public final <ContainingType extends zzdsg> zzdqw.zze<ContainingType, ?> zza(ContainingType containingtype, int i2) {
        return (zzdqw.zze) this.zzhho.get(new zza(containingtype, i2));
    }
}
