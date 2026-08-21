package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbkq {
    public final List<? extends zzddi<? extends zzbkk>> zzffk;

    public zzbkq(zzbkk zzbkkVar) {
        this.zzffk = Collections.singletonList(zzdcy.zzah(zzbkkVar));
    }

    public zzbkq(List<? extends zzddi<? extends zzbkk>> list) {
        this.zzffk = list;
    }

    public static zzcga<zzbkq> zza(zzcga<? extends zzbkk> zzcgaVar) {
        return new zzcgd(zzcgaVar, zzbks.zzdos);
    }

    public static zzcga<zzbkq> zza(zzcih<? extends zzbkk> zzcihVar) {
        return new zzcgd(zzcihVar, zzbkt.zzdos);
    }
}
