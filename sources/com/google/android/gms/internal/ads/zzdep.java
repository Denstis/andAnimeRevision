package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class zzdep {
    private zzdjx zzgsp;

    private zzdep(zzdjx zzdjxVar) {
        this.zzgsp = zzdjxVar;
    }

    static final zzdep zza(zzdjx zzdjxVar) throws GeneralSecurityException {
        if (zzdjxVar == null || zzdjxVar.zzauk() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzdep(zzdjxVar);
    }

    public final String toString() {
        return zzdfb.zzc(this.zzgsp).toString();
    }

    final zzdjx zzapq() {
        return this.zzgsp;
    }
}
