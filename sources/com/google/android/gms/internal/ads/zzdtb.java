package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzdtb extends zzdth {
    private final /* synthetic */ zzdta zzhoh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzdtb(zzdta zzdtaVar) {
        super(zzdtaVar, null);
        this.zzhoh = zzdtaVar;
    }

    /* synthetic */ zzdtb(zzdta zzdtaVar, zzdsz zzdszVar) {
        this(zzdtaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdth, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzdtc(this.zzhoh, null);
    }
}
