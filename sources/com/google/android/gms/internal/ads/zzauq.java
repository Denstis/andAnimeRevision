package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class zzauq implements zzawz {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzdtb;

    zzauq(zzaul zzaulVar, Context context, String str) {
        this.val$context = context;
        this.zzdtb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzei(String str) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zzb(this.val$context, this.zzdtb, str);
    }
}
