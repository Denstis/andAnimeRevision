package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzckr implements zzboc {
    private final /* synthetic */ zzcgf zzfzw;
    private final /* synthetic */ zzaxv zzgak;

    zzckr(zzckm zzckmVar, zzaxv zzaxvVar, zzcgf zzcgfVar) {
        this.zzgak = zzaxvVar;
        this.zzfzw = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboc
    public final synchronized void onAdFailedToLoad(int i2) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcrm)).booleanValue()) {
            i2 = 3;
        }
        zzaxv zzaxvVar = this.zzgak;
        String str = this.zzfzw.zzffi;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("adapter ");
        sb.append(str);
        sb.append(" failed to load");
        zzaxvVar.setException(new zzcjh(sb.toString(), i2));
    }

    @Override // com.google.android.gms.internal.ads.zzboc
    public final synchronized void onAdLoaded() {
    }
}
