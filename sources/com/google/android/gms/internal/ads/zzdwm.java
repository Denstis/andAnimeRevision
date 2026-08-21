package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwm<T> {
    private final List<zzdwo<T>> zzhxt;
    private final List<zzdwo<Collection<T>>> zzhxu;

    private zzdwm(int i2, int i3) {
        this.zzhxt = zzdwa.zzhk(i2);
        this.zzhxu = zzdwa.zzhk(i3);
    }

    public final zzdwm<T> zzap(zzdwo<? extends T> zzdwoVar) {
        this.zzhxt.add(zzdwoVar);
        return this;
    }

    public final zzdwm<T> zzaq(zzdwo<? extends Collection<? extends T>> zzdwoVar) {
        this.zzhxu.add(zzdwoVar);
        return this;
    }

    public final zzdwk<T> zzbdg() {
        return new zzdwk<>(this.zzhxt, this.zzhxu);
    }
}
