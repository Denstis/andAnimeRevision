package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;

/* JADX INFO: loaded from: classes.dex */
final class zzgb implements zzhg {
    private static final zzgl zzb = new zzge();
    private final zzgl zza;

    public zzgb() {
        this(new zzgd(zzfe.zza(), zza()));
    }

    private zzgb(zzgl zzglVar) {
        this.zza = (zzgl) zzff.zza(zzglVar, "messageInfoFactory");
    }

    private static zzgl zza() {
        try {
            return (zzgl) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzb;
        }
    }

    private static boolean zza(zzgm zzgmVar) {
        return zzgmVar.zza() == zzfd.zze.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzhg
    public final <T> zzhd<T> zza(Class<T> cls) {
        zzhf.zza((Class<?>) cls);
        zzgm zzgmVarZzb = this.zza.zzb(cls);
        if (zzgmVarZzb.zzb()) {
            return zzfd.class.isAssignableFrom(cls) ? zzgu.zza(zzhf.zzc(), zzet.zza(), zzgmVarZzb.zzc()) : zzgu.zza(zzhf.zza(), zzet.zzb(), zzgmVarZzb.zzc());
        }
        if (!zzfd.class.isAssignableFrom(cls)) {
            boolean zZza = zza(zzgmVarZzb);
            zzgw zzgwVarZza = zzgy.zza();
            zzfy zzfyVarZza = zzfy.zza();
            return zZza ? zzgs.zza(cls, zzgmVarZzb, zzgwVarZza, zzfyVarZza, zzhf.zza(), zzet.zzb(), zzgj.zza()) : zzgs.zza(cls, zzgmVarZzb, zzgwVarZza, zzfyVarZza, zzhf.zzb(), (zzes<?>) null, zzgj.zza());
        }
        boolean zZza2 = zza(zzgmVarZzb);
        zzgw zzgwVarZzb = zzgy.zzb();
        zzfy zzfyVarZzb = zzfy.zzb();
        zzhv<?, ?> zzhvVarZzc = zzhf.zzc();
        return zZza2 ? zzgs.zza(cls, zzgmVarZzb, zzgwVarZzb, zzfyVarZzb, zzhvVarZzc, zzet.zza(), zzgj.zzb()) : zzgs.zza(cls, zzgmVarZzb, zzgwVarZzb, zzfyVarZzb, zzhvVarZzc, (zzes<?>) null, zzgj.zzb());
    }
}
