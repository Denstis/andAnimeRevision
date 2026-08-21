package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzcob implements zzcru<zzcrr<Bundle>> {
    private final Set<String> zzgef;

    zzcob(Set<String> set) {
        this.zzgef = set;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrr<Bundle>> zzalv() {
        final ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.zzgef.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return zzdcy.zzah(new zzcrr(arrayList) { // from class: com.google.android.gms.internal.ads.zzcoe
            private final ArrayList zzgei;

            {
                this.zzgei = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcrr
            public final void zzr(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.zzgei);
            }
        });
    }
}
