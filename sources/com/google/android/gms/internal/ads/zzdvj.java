package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class zzdvj extends zzdvl implements zzbb {
    private String type;
    private long zzauv;
    private zzbe zzhwm;
    private boolean zzhwn;

    public zzdvj(String str) {
        this.type = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zza(zzbe zzbeVar) {
        this.zzhwm = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvl
    public final void zza(zzdvn zzdvnVar, long j2, zzba zzbaVar) {
        this.zzhwt = zzdvnVar;
        this.zzhwy = zzdvnVar.position();
        this.zzbch = this.zzhwy - ((long) ((this.zzhwn || 8 + j2 >= 4294967296L) ? 16 : 8));
        zzdvnVar.zzew(zzdvnVar.position() + j2);
        this.zzaqu = zzdvnVar.position();
        this.zzhww = zzbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zza(zzdvn zzdvnVar, ByteBuffer byteBuffer, long j2, zzba zzbaVar) {
        this.zzauv = zzdvnVar.position() - ((long) byteBuffer.remaining());
        this.zzhwn = byteBuffer.remaining() == 16;
        zza(zzdvnVar, j2, zzbaVar);
    }
}
