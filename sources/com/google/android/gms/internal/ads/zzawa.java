package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzawa implements zzy {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ zzawb zzdup;

    zzawa(zzavy zzavyVar, String str, zzawb zzawbVar) {
        this.zzduo = str;
        this.zzdup = zzawbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzy
    public final void zzc(zzae zzaeVar) {
        String str = this.zzduo;
        String string = zzaeVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(string).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(string);
        zzaxi.zzeu(sb.toString());
        this.zzdup.zzb(null);
    }
}
