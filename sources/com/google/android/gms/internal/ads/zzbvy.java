package com.google.android.gms.internal.ads;

import b.e.a;

/* JADX INFO: loaded from: classes.dex */
public final class zzbvy implements zzbnj {
    private final zzbur zzfjl;
    private final zzbuv zzfkr;

    public zzbvy(zzbur zzburVar, zzbuv zzbuvVar) {
        this.zzfjl = zzburVar;
        this.zzfkr = zzbuvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnj
    public final void onAdImpression() {
        if (this.zzfjl.zzahw() == null) {
            return;
        }
        zzbbw zzbbwVarZzahv = this.zzfjl.zzahv();
        zzbbw zzbbwVarZzahu = this.zzfjl.zzahu();
        if (zzbbwVarZzahv == null) {
            zzbbwVarZzahv = zzbbwVarZzahu != null ? zzbbwVarZzahu : null;
        }
        if (!this.zzfkr.zzahl() || zzbbwVarZzahv == null) {
            return;
        }
        zzbbwVarZzahv.zza("onSdkImpression", new a());
    }
}
