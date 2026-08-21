package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
class zzdfg implements zzdex<zzdec> {
    private static final Logger logger = Logger.getLogger(zzdfg.class.getName());

    static class zza implements zzdec {
        private final zzdev<zzdec> zzgtf;

        private zza(zzdev<zzdec> zzdevVar) {
            this.zzgtf = zzdevVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdec
        public final byte[] zzc(byte[] bArr, byte[] bArr2) {
            return zzdmn.zza(this.zzgtf.zzapv().zzapu(), this.zzgtf.zzapv().zzapr().zzc(bArr, bArr2));
        }
    }

    zzdfg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final /* synthetic */ zzdec zza(zzdev<zzdec> zzdevVar) {
        return new zza(zzdevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final Class<zzdec> zzapo() {
        return zzdec.class;
    }
}
