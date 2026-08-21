package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzavz extends zzav {
    private final /* synthetic */ byte[] zzdul;
    private final /* synthetic */ Map zzdum;
    private final /* synthetic */ zzaxc zzdun;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzavz(zzavy zzavyVar, int i2, String str, zzab zzabVar, zzy zzyVar, byte[] bArr, Map map, zzaxc zzaxcVar) {
        super(i2, str, zzabVar, zzyVar);
        this.zzdul = bArr;
        this.zzdum = map;
        this.zzdun = zzaxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzq
    public final Map<String, String> getHeaders() {
        Map<String, String> map = this.zzdum;
        return map == null ? super.getHeaders() : map;
    }

    @Override // com.google.android.gms.internal.ads.zzq
    public final byte[] zzf() {
        byte[] bArr = this.zzdul;
        return bArr == null ? super.zzf() : bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzav, com.google.android.gms.internal.ads.zzq
    /* JADX INFO: renamed from: zzh */
    public final void zza(String str) {
        this.zzdun.zzep(str);
        super.zza(str);
    }
}
