package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
class zzdgk implements zzdex<zzdet> {
    private static final Logger logger = Logger.getLogger(zzdgk.class.getName());

    static class zza implements zzdet {
        private final zzdev<zzdet> zzgtj;
        private final byte[] zzgts;

        private zza(zzdev<zzdet> zzdevVar) {
            this.zzgts = new byte[]{0};
            this.zzgtj = zzdevVar;
        }

        @Override // com.google.android.gms.internal.ads.zzdet
        public final byte[] zzk(byte[] bArr) {
            return this.zzgtj.zzapv().zzapt().equals(zzdkj.LEGACY) ? zzdmn.zza(this.zzgtj.zzapv().zzapu(), this.zzgtj.zzapv().zzapr().zzk(zzdmn.zza(bArr, this.zzgts))) : zzdmn.zza(this.zzgtj.zzapv().zzapu(), this.zzgtj.zzapv().zzapr().zzk(bArr));
        }
    }

    zzdgk() {
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final /* synthetic */ zzdet zza(zzdev<zzdet> zzdevVar) {
        return new zza(zzdevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final Class<zzdet> zzapo() {
        return zzdet.class;
    }
}
