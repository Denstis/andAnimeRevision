package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzapo implements Callable<zzapj> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzapl zzdno;

    zzapo(zzapl zzaplVar, Context context) {
        this.zzdno = zzaplVar;
        this.val$context = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzapj call() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzapl r0 = r6.zzdno
            java.util.WeakHashMap r0 = com.google.android.gms.internal.ads.zzapl.zza(r0)
            android.content.Context r1 = r6.val$context
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.ads.zzapn r0 = (com.google.android.gms.internal.ads.zzapn) r0
            if (r0 == 0) goto L42
            long r1 = r0.zzdnm
            com.google.android.gms.internal.ads.zzyp<java.lang.Long> r3 = com.google.android.gms.internal.ads.zzza.zzcmb
            com.google.android.gms.internal.ads.zzyw r4 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r3 = r4.zzd(r3)
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            long r1 = r1 + r3
            com.google.android.gms.common.util.Clock r3 = com.google.android.gms.ads.internal.zzq.zzkq()
            long r3 = r3.currentTimeMillis()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 >= 0) goto L31
            r1 = 1
            goto L32
        L31:
            r1 = 0
        L32:
            if (r1 != 0) goto L42
            com.google.android.gms.internal.ads.zzapm r1 = new com.google.android.gms.internal.ads.zzapm
            android.content.Context r2 = r6.val$context
            com.google.android.gms.internal.ads.zzapj r0 = r0.zzdnn
            r1.<init>(r2, r0)
            com.google.android.gms.internal.ads.zzapj r0 = r1.zzti()
            goto L4d
        L42:
            com.google.android.gms.internal.ads.zzapm r0 = new com.google.android.gms.internal.ads.zzapm
            android.content.Context r1 = r6.val$context
            r0.<init>(r1)
            com.google.android.gms.internal.ads.zzapj r0 = r0.zzti()
        L4d:
            com.google.android.gms.internal.ads.zzapl r1 = r6.zzdno
            java.util.WeakHashMap r1 = com.google.android.gms.internal.ads.zzapl.zza(r1)
            android.content.Context r2 = r6.val$context
            com.google.android.gms.internal.ads.zzapn r3 = new com.google.android.gms.internal.ads.zzapn
            com.google.android.gms.internal.ads.zzapl r4 = r6.zzdno
            r3.<init>(r4, r0)
            r1.put(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapo.call():java.lang.Object");
    }
}
