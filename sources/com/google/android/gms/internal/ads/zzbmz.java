package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbmz extends zzbpm<zzbnb> implements zzbnb {
    public zzbmz(Set<zzbqs<zzbnb>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void onAdFailedToLoad(final int i2) {
        zza(new zzbpo(i2) { // from class: com.google.android.gms.internal.ads.zzbnc
            private final int zzdwc;

            {
                this.zzdwc = i2;
            }

            @Override // com.google.android.gms.internal.ads.zzbpo
            public final void zzp(Object obj) {
                ((zzbnb) obj).onAdFailedToLoad(this.zzdwc);
            }
        });
    }
}
