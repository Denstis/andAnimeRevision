package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzblg<T> {
    private final zzcdt zzffx;
    private final zzcdw zzffy;
    private final zzdwo<zzddi<zzape>> zzffz;
    private final zzcwe zzfga;
    private final zzcyg zzfgb;
    private final zzbgt zzfgc;
    private final zzcjg<T> zzfgd;
    private final zzbpk zzfge;
    private final zzcvz zzfgf;

    zzblg(zzcdt zzcdtVar, zzcdw zzcdwVar, zzdwo<zzddi<zzape>> zzdwoVar, zzcwe zzcweVar, zzcyg zzcygVar, zzbgt zzbgtVar, zzcjg<T> zzcjgVar, zzbpk zzbpkVar, zzcvz zzcvzVar) {
        this.zzffx = zzcdtVar;
        this.zzffy = zzcdwVar;
        this.zzffz = zzdwoVar;
        this.zzfga = zzcweVar;
        this.zzfgb = zzcygVar;
        this.zzfgc = zzbgtVar;
        this.zzfgd = zzcjgVar;
        this.zzfge = zzbpkVar;
        this.zzfgf = zzcvzVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzddi<T> zzafs() {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzcvz r0 = r4.zzfgf
            if (r0 == 0) goto L1b
            com.google.android.gms.internal.ads.zzcyg r0 = r4.zzfgb
            com.google.android.gms.internal.ads.zzcyd r1 = com.google.android.gms.internal.ads.zzcyd.SERVER_TRANSACTION
            com.google.android.gms.internal.ads.zzcxw r0 = r0.zzu(r1)
            com.google.android.gms.internal.ads.zzcvz r1 = r4.zzfgf
            com.google.android.gms.internal.ads.zzddi r1 = com.google.android.gms.internal.ads.zzdcy.zzah(r1)
        L12:
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zzb(r1)
        L16:
            com.google.android.gms.internal.ads.zzcxp r0 = r0.zzant()
            goto L50
        L1b:
            com.google.android.gms.internal.ads.zzrh r0 = com.google.android.gms.ads.internal.zzq.zzkp()
            r0.zzmh()
            com.google.android.gms.internal.ads.zzcwe r0 = r4.zzfga
            com.google.android.gms.internal.ads.zztx r0 = r0.zzgkg
            com.google.android.gms.internal.ads.zztr r0 = r0.zzcck
            if (r0 == 0) goto L39
            com.google.android.gms.internal.ads.zzcyg r0 = r4.zzfgb
            com.google.android.gms.internal.ads.zzcyd r1 = com.google.android.gms.internal.ads.zzcyd.SERVER_TRANSACTION
            com.google.android.gms.internal.ads.zzcxw r0 = r0.zzu(r1)
            com.google.android.gms.internal.ads.zzcdw r1 = r4.zzffy
            com.google.android.gms.internal.ads.zzddi r1 = r1.zzaki()
            goto L12
        L39:
            com.google.android.gms.internal.ads.zzcyg r0 = r4.zzfgb
            com.google.android.gms.internal.ads.zzcyd r1 = com.google.android.gms.internal.ads.zzcyd.SERVER_TRANSACTION
            com.google.android.gms.internal.ads.zzdwo<com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzape>> r2 = r4.zzffz
            java.lang.Object r2 = r2.get()
            com.google.android.gms.internal.ads.zzddi r2 = (com.google.android.gms.internal.ads.zzddi) r2
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1, r2)
            com.google.android.gms.internal.ads.zzcdt r1 = r4.zzffx
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1)
            goto L16
        L50:
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r1 = com.google.android.gms.internal.ads.zzza.zzcrp
            com.google.android.gms.internal.ads.zzyw r2 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r1 = r2.zzd(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L7b
            com.google.android.gms.internal.ads.zzcyg r1 = r4.zzfgb
            com.google.android.gms.internal.ads.zzcyd r2 = com.google.android.gms.internal.ads.zzcyd.RENDERER
            com.google.android.gms.internal.ads.zzcxy r0 = r1.zza(r2, r0)
            com.google.android.gms.internal.ads.zzbgt r1 = r4.zzfgc
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1)
            com.google.android.gms.internal.ads.zzcjg<T> r1 = r4.zzfgd
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1)
        L76:
            com.google.android.gms.internal.ads.zzcxp r0 = r0.zzant()
            return r0
        L7b:
            com.google.android.gms.internal.ads.zzcyg r1 = r4.zzfgb
            com.google.android.gms.internal.ads.zzcyd r2 = com.google.android.gms.internal.ads.zzcyd.RENDERER
            com.google.android.gms.internal.ads.zzcxy r0 = r1.zza(r2, r0)
            com.google.android.gms.internal.ads.zzbgt r1 = r4.zzfgc
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1)
            com.google.android.gms.internal.ads.zzcjg<T> r1 = r4.zzfgd
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1)
            com.google.android.gms.internal.ads.zzyp<java.lang.Integer> r1 = com.google.android.gms.internal.ads.zzza.zzcrq
            com.google.android.gms.internal.ads.zzyw r2 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r1 = r2.zzd(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            long r1 = (long) r1
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.SECONDS
            com.google.android.gms.internal.ads.zzcxy r0 = r0.zza(r1, r3)
            goto L76
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzblg.zzafs():com.google.android.gms.internal.ads.zzddi");
    }
}
