package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzdev<P> {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final Class<P> zzgsl;
    private ConcurrentMap<String, List<zzdeu<P>>> zzgsv = new ConcurrentHashMap();
    private zzdeu<P> zzgsw;

    private zzdev(Class<P> cls) {
        this.zzgsl = cls;
    }

    public static <P> zzdev<P> zza(Class<P> cls) {
        return new zzdev<>(cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzdeu<P> zza(P r6, com.google.android.gms.internal.ads.zzdjx.zza r7) throws java.security.GeneralSecurityException {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzdjr r0 = r7.zzaps()
            com.google.android.gms.internal.ads.zzdjr r1 = com.google.android.gms.internal.ads.zzdjr.ENABLED
            if (r0 != r1) goto L8d
            com.google.android.gms.internal.ads.zzdeu r0 = new com.google.android.gms.internal.ads.zzdeu
            int[] r1 = com.google.android.gms.internal.ads.zzdeg.zzgsh
            com.google.android.gms.internal.ads.zzdkj r2 = r7.zzapt()
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 5
            r3 = 1
            if (r1 == r3) goto L37
            r4 = 2
            if (r1 == r4) goto L37
            r4 = 3
            if (r1 == r4) goto L2e
            r2 = 4
            if (r1 != r2) goto L26
            byte[] r1 = com.google.android.gms.internal.ads.zzdeh.zzgsi
            goto L4c
        L26:
            java.security.GeneralSecurityException r6 = new java.security.GeneralSecurityException
            java.lang.String r7 = "unknown output prefix type"
            r6.<init>(r7)
            throw r6
        L2e:
            java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocate(r2)
            java.nio.ByteBuffer r1 = r1.put(r3)
            goto L40
        L37:
            java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocate(r2)
            r2 = 0
            java.nio.ByteBuffer r1 = r1.put(r2)
        L40:
            int r2 = r7.zzaup()
            java.nio.ByteBuffer r1 = r1.putInt(r2)
            byte[] r1 = r1.array()
        L4c:
            com.google.android.gms.internal.ads.zzdjr r2 = r7.zzaps()
            com.google.android.gms.internal.ads.zzdkj r7 = r7.zzapt()
            r0.<init>(r6, r1, r2, r7)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r6.add(r0)
            java.lang.String r7 = new java.lang.String
            byte[] r1 = r0.zzapu()
            java.nio.charset.Charset r2 = com.google.android.gms.internal.ads.zzdev.UTF_8
            r7.<init>(r1, r2)
            java.util.concurrent.ConcurrentMap<java.lang.String, java.util.List<com.google.android.gms.internal.ads.zzdeu<P>>> r1 = r5.zzgsv
            java.util.List r6 = java.util.Collections.unmodifiableList(r6)
            java.lang.Object r6 = r1.put(r7, r6)
            java.util.List r6 = (java.util.List) r6
            if (r6 == 0) goto L8c
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r1.addAll(r6)
            r1.add(r0)
            java.util.concurrent.ConcurrentMap<java.lang.String, java.util.List<com.google.android.gms.internal.ads.zzdeu<P>>> r6 = r5.zzgsv
            java.util.List r1 = java.util.Collections.unmodifiableList(r1)
            r6.put(r7, r1)
        L8c:
            return r0
        L8d:
            java.security.GeneralSecurityException r6 = new java.security.GeneralSecurityException
            java.lang.String r7 = "only ENABLED key is allowed"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdev.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdjx$zza):com.google.android.gms.internal.ads.zzdeu");
    }

    public final void zza(zzdeu<P> zzdeuVar) {
        if (zzdeuVar == null) {
            throw new IllegalArgumentException("the primary entry must be non-null");
        }
        if (zzdeuVar.zzaps() != zzdjr.ENABLED) {
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
        List<zzdeu<P>> listEmptyList = this.zzgsv.get(new String(zzdeuVar.zzapu(), UTF_8));
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        if (listEmptyList.isEmpty()) {
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        }
        this.zzgsw = zzdeuVar;
    }

    public final Class<P> zzapo() {
        return this.zzgsl;
    }

    public final zzdeu<P> zzapv() {
        return this.zzgsw;
    }
}
