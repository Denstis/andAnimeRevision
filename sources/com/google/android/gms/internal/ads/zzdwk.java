package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwk<T> implements zzdwb<Set<T>> {
    private static final zzdwb<Set<Object>> zzhxs = zzdwe.zzbb(Collections.emptySet());
    private final List<zzdwo<T>> zzhxt;
    private final List<zzdwo<Collection<T>>> zzhxu;

    private zzdwk(List<zzdwo<T>> list, List<zzdwo<Collection<T>>> list2) {
        this.zzhxt = list;
        this.zzhxu = list2;
    }

    public static <T> zzdwm<T> zzaq(int i2, int i3) {
        return new zzdwm<>(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        int size = this.zzhxt.size();
        ArrayList arrayList = new ArrayList(this.zzhxu.size());
        int size2 = this.zzhxu.size();
        int size3 = size;
        for (int i2 = 0; i2 < size2; i2++) {
            Collection<T> collection = this.zzhxu.get(i2).get();
            size3 += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetZzhl = zzdwa.zzhl(size3);
        int size4 = this.zzhxt.size();
        for (int i3 = 0; i3 < size4; i3++) {
            hashSetZzhl.add(zzdwh.checkNotNull(this.zzhxt.get(i3).get()));
        }
        int size5 = arrayList.size();
        for (int i4 = 0; i4 < size5; i4++) {
            Iterator it = ((Collection) arrayList.get(i4)).iterator();
            while (it.hasNext()) {
                hashSetZzhl.add(zzdwh.checkNotNull(it.next()));
            }
        }
        return Collections.unmodifiableSet(hashSetZzhl);
    }
}
