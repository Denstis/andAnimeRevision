package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcnw implements zzdcj {
    static final zzdcj zzbkv = new zzcnw();

    private zzcnw() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final zzddi zzf(Object obj) {
        final String str = (String) obj;
        return zzdcy.zzah(new zzcrr(str) { // from class: com.google.android.gms.internal.ads.zzcnv
            private final String zzczh;

            {
                this.zzczh = str;
            }

            @Override // com.google.android.gms.internal.ads.zzcrr
            public final void zzr(Object obj2) {
                ((Bundle) obj2).putString("ms", this.zzczh);
            }
        });
    }
}
