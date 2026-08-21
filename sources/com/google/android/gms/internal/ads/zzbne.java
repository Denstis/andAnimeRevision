package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbne extends zzbpm<zzbnf> implements zzbnf {
    public zzbne(Set<zzbqs<zzbnf>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzcl(final int i2) {
        zza(new zzbpo(i2) { // from class: com.google.android.gms.internal.ads.zzbnd
            private final int zzdwc;

            {
                this.zzdwc = i2;
            }

            @Override // com.google.android.gms.internal.ads.zzbpo
            public final void zzp(Object obj) {
                ((zzbnf) obj).zzcl(this.zzdwc);
            }
        });
    }
}
