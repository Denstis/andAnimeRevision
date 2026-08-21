package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class zzdgl {

    @Deprecated
    public static final zzdkl zzgtc = (zzdkl) zzdkl.zzavk().zzhe("TINK_MAC_1_0_0").zzb(zzdee.zza("TinkMac", "Mac", "HmacKey", 0, true)).zzazr();

    @Deprecated
    private static final zzdkl zzgtd = (zzdkl) zzdkl.zzavk().zza(zzgtc).zzhe("TINK_MAC_1_1_0").zzazr();
    public static final zzdkl zzgte = (zzdkl) zzdkl.zzavk().zza(zzgtc).zzhe("TINK_MAC").zzazr();

    static {
        try {
            zzapz();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void zzapz() throws GeneralSecurityException {
        zzdey.zza("TinkMac", new zzdgi());
        zzdee.zza(zzgte);
    }
}
