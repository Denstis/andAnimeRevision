package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbra implements zzbrb {
    private final List<String> zzdks;
    private final zzcyp zzfbe;
    private boolean zzfic;

    public zzbra(zzcvr zzcvrVar, zzcyp zzcypVar) {
        this.zzdks = zzcvrVar.zzdks;
        this.zzfbe = zzcypVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrb
    public final void zzagq() {
        if (this.zzfic) {
            return;
        }
        this.zzfbe.zzi(this.zzdks);
        this.zzfic = true;
    }
}
