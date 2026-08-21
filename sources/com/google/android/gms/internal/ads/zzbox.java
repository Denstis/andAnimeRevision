package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbox extends zzbpm<zzbpc> implements zzbpc {
    public zzbox(Set<zzbqs<zzbpc>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zza(final zzcvz zzcvzVar) {
        zza(new zzbpo(zzcvzVar) { // from class: com.google.android.gms.internal.ads.zzboz
            private final zzcvz zzfhg;

            {
                this.zzfhg = zzcvzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpo
            public final void zzp(Object obj) {
                ((zzbpc) obj).zza(this.zzfhg);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzb(final zzape zzapeVar) {
        zza(new zzbpo(zzapeVar) { // from class: com.google.android.gms.internal.ads.zzbpa
            private final zzape zzfhh;

            {
                this.zzfhh = zzapeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbpo
            public final void zzp(Object obj) {
                ((zzbpc) obj).zzb(this.zzfhh);
            }
        });
    }
}
