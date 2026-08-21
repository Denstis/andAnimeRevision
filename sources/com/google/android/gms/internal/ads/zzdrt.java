package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
final class zzdrt implements zzdsy {
    private static final zzdsd zzhmp = new zzdrw();
    private final zzdsd zzhmo;

    public zzdrt() {
        this(new zzdrv(zzdqu.zzazl(), zzbar()));
    }

    private zzdrt(zzdsd zzdsdVar) {
        this.zzhmo = (zzdsd) zzdqx.zza(zzdsdVar, "messageInfoFactory");
    }

    private static boolean zza(zzdse zzdseVar) {
        return zzdseVar.zzbay() == zzdqw.zzd.zzhld;
    }

    private static zzdsd zzbar() {
        try {
            return (zzdsd) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzhmp;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    public final <T> zzdsv<T> zzg(Class<T> cls) {
        zzdsx.zzi(cls);
        zzdse zzdseVarZzd = this.zzhmo.zzd(cls);
        if (zzdseVarZzd.zzbaz()) {
            return zzdqw.class.isAssignableFrom(cls) ? zzdsm.zza(zzdsx.zzbbl(), zzdqn.zzazf(), zzdseVarZzd.zzbba()) : zzdsm.zza(zzdsx.zzbbj(), zzdqn.zzazg(), zzdseVarZzd.zzbba());
        }
        if (!zzdqw.class.isAssignableFrom(cls)) {
            boolean zZza = zza(zzdseVarZzd);
            zzdso zzdsoVarZzbbc = zzdsq.zzbbc();
            zzdrq zzdrqVarZzbap = zzdrq.zzbap();
            return zZza ? zzdsk.zza(cls, zzdseVarZzd, zzdsoVarZzbbc, zzdrqVarZzbap, zzdsx.zzbbj(), zzdqn.zzazg(), zzdsb.zzbav()) : zzdsk.zza(cls, zzdseVarZzd, zzdsoVarZzbbc, zzdrqVarZzbap, zzdsx.zzbbk(), (zzdql<?>) null, zzdsb.zzbav());
        }
        boolean zZza2 = zza(zzdseVarZzd);
        zzdso zzdsoVarZzbbd = zzdsq.zzbbd();
        zzdrq zzdrqVarZzbaq = zzdrq.zzbaq();
        zzdtn<?, ?> zzdtnVarZzbbl = zzdsx.zzbbl();
        return zZza2 ? zzdsk.zza(cls, zzdseVarZzd, zzdsoVarZzbbd, zzdrqVarZzbaq, zzdtnVarZzbbl, zzdqn.zzazf(), zzdsb.zzbaw()) : zzdsk.zza(cls, zzdseVarZzd, zzdsoVarZzbbd, zzdrqVarZzbaq, zzdtnVarZzbbl, (zzdql<?>) null, zzdsb.zzbaw());
    }
}
