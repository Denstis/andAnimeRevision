package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzawe extends zzq<zzo> {
    private final Map<String, String> zzab;
    private final zzaxv<zzo> zzdur;
    private final zzaxc zzdus;

    public zzawe(String str, zzaxv<zzo> zzaxvVar) {
        this(str, null, zzaxvVar);
    }

    private zzawe(String str, Map<String, String> map, zzaxv<zzo> zzaxvVar) {
        super(0, str, new zzawd(zzaxvVar));
        this.zzab = null;
        this.zzdur = zzaxvVar;
        this.zzdus = new zzaxc();
        this.zzdus.zza(str, "GET", null, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzq
    protected final zzz<zzo> zza(zzo zzoVar) {
        return zzz.zza(zzoVar, zzaq.zzb(zzoVar));
    }

    @Override // com.google.android.gms.internal.ads.zzq
    protected final /* synthetic */ void zza(zzo zzoVar) {
        zzo zzoVar2 = zzoVar;
        this.zzdus.zza(zzoVar2.zzab, zzoVar2.statusCode);
        zzaxc zzaxcVar = this.zzdus;
        byte[] bArr = zzoVar2.data;
        if (zzaxc.isEnabled() && bArr != null) {
            zzaxcVar.zzi(bArr);
        }
        this.zzdur.set(zzoVar2);
    }
}
