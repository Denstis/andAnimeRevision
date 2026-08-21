package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class zzdfy {

    @Deprecated
    public static final zzdkl zzgtc = (zzdkl) zzdkl.zzavk().zza(zzdfd.zzgtc).zzb(zzdee.zza("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true)).zzb(zzdee.zza("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true)).zzhe("TINK_HYBRID_1_0_0").zzazr();

    @Deprecated
    public static final zzdkl zzgtd = (zzdkl) zzdkl.zzavk().zza(zzgtc).zzhe("TINK_HYBRID_1_1_0").zzazr();
    public static final zzdkl zzgte = (zzdkl) zzdkl.zzavk().zza(zzdfd.zzgte).zzb(zzdee.zza("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true)).zzb(zzdee.zza("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true)).zzhe("TINK_HYBRID").zzazr();

    static {
        try {
            zzapz();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void zzapz() throws GeneralSecurityException {
        zzdfd.zzapz();
        zzdey.zza("TinkHybridEncrypt", new zzdgb());
        zzdey.zza("TinkHybridDecrypt", new zzdfx());
        zzdee.zza(zzgte);
    }
}
