package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdey;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzdfa implements zzdey.zza {
    private final /* synthetic */ zzden zzgtb;

    zzdfa(zzden zzdenVar) {
        this.zzgtb = zzdenVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdey.zza
    public final zzden<?> zzapw() {
        return this.zzgtb;
    }

    @Override // com.google.android.gms.internal.ads.zzdey.zza
    public final Class<?> zzapx() {
        return this.zzgtb.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzdey.zza
    public final Set<Class<?>> zzapy() {
        return Collections.singleton(this.zzgtb.zzapo());
    }

    @Override // com.google.android.gms.internal.ads.zzdey.zza
    public final <Q> zzden<Q> zzb(Class<Q> cls) {
        if (this.zzgtb.zzapo().equals(cls)) {
            return this.zzgtb;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }
}
