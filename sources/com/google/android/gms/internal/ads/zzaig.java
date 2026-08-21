package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaig implements zzaxx {
    private final /* synthetic */ zzaia zzdao;

    zzaig(zzaie zzaieVar, zzaia zzaiaVar) {
        this.zzdao = zzaiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void run() {
        zzaug.zzdy("Rejecting reference for JS Engine.");
        this.zzdao.reject();
    }
}
