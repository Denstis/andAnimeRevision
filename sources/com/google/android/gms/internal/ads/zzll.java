package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class zzll implements zznq {
    private final Uri uri;
    private final zzne zzamo;
    private final /* synthetic */ zzli zzazs;
    private final zzlo zzbaa;
    private final zznt zzbab;
    private volatile boolean zzbav;
    private long zzbax;
    private final zzjc zzbau = new zzjc();
    private boolean zzbaw = true;
    private long zzcb = -1;

    public zzll(zzli zzliVar, Uri uri, zzne zzneVar, zzlo zzloVar, zznt zzntVar) {
        this.zzazs = zzliVar;
        this.uri = (Uri) zznr.checkNotNull(uri);
        this.zzamo = (zzne) zznr.checkNotNull(zzneVar);
        this.zzbaa = (zzlo) zznr.checkNotNull(zzloVar);
        this.zzbab = zzntVar;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void cancelLoad() {
        this.zzbav = true;
    }

    public final void zze(long j2, long j3) {
        this.zzbau.zzamq = j2;
        this.zzbax = j3;
        this.zzbaw = true;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final boolean zzhj() {
        return this.zzbav;
    }

    @Override // com.google.android.gms.internal.ads.zznq
    public final void zzhk() throws Throwable {
        zzit zzitVar;
        int iZza = 0;
        while (iZza == 0 && !this.zzbav) {
            try {
                long position = this.zzbau.zzamq;
                this.zzcb = this.zzamo.zza(new zznf(this.uri, position, -1L, this.zzazs.zzazx));
                if (this.zzcb != -1) {
                    this.zzcb += position;
                }
                zzitVar = new zzit(this.zzamo, position, this.zzcb);
                try {
                    zziw zziwVarZza = this.zzbaa.zza(zzitVar, this.zzamo.getUri());
                    if (this.zzbaw) {
                        zziwVarZza.zzc(position, this.zzbax);
                        this.zzbaw = false;
                    }
                    while (iZza == 0 && !this.zzbav) {
                        this.zzbab.block();
                        iZza = zziwVarZza.zza(zzitVar, this.zzbau);
                        if (zzitVar.getPosition() > this.zzazs.zzazy + position) {
                            position = zzitVar.getPosition();
                            this.zzbab.zzig();
                            this.zzazs.handler.post(this.zzazs.zzbad);
                        }
                    }
                    if (iZza == 1) {
                        iZza = 0;
                    } else {
                        this.zzbau.zzamq = zzitVar.getPosition();
                    }
                    zzof.zza(this.zzamo);
                } catch (Throwable th) {
                    th = th;
                    if (iZza != 1 && zzitVar != null) {
                        this.zzbau.zzamq = zzitVar.getPosition();
                    }
                    zzof.zza(this.zzamo);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                zzitVar = null;
            }
        }
    }
}
