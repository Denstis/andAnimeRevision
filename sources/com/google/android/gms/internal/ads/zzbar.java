package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbar extends zzay {
    static final zzbar zzedb = new zzbar();

    zzbar() {
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final zzbb zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzbd() : "mvhd".equals(str) ? new zzbg() : new zzbf(str);
    }
}
