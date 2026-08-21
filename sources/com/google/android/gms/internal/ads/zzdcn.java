package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzdcn extends zzdcl {
    zzdcn(zzdck zzdckVar, zzday<? extends zzddi<? extends V>> zzdayVar, boolean z) {
        super(zzdckVar, zzdayVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final /* synthetic */ Object zzj(List list) {
        ArrayList arrayListZzdt = zzdbl.zzdt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdar zzdarVar = (zzdar) it.next();
            arrayListZzdt.add(zzdarVar != null ? zzdarVar.zzaof() : null);
        }
        return Collections.unmodifiableList(arrayListZzdt);
    }
}
