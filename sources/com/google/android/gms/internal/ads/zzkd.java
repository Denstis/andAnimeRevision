package com.google.android.gms.internal.ads;

import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public final class zzkd implements zziw, zzjb {
    private static final zzix zzank = new zzkg();
    private static final int zzavl = zzof.zzbi("qt  ");
    private long zzagh;
    private int zzapg;
    private int zzaph;
    private zziy zzapk;
    private int zzavo;
    private int zzavp;
    private long zzavq;
    private int zzavr;
    private zzoc zzavs;
    private zzkf[] zzavt;
    private boolean zzavu;
    private final zzoc zzavm = new zzoc(16);
    private final Stack<zzjr> zzavn = new Stack<>();
    private final zzoc zzanr = new zzoc(zznx.zzbfz);
    private final zzoc zzans = new zzoc(4);

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzdv(long r20) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkd.zzdv(long):void");
    }

    private final void zzgn() {
        this.zzavo = 0;
        this.zzavr = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final long getDurationUs() {
        return this.zzagh;
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void release() {
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x018e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x029b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01bf  */
    @Override // com.google.android.gms.internal.ads.zziw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zza(com.google.android.gms.internal.ads.zziv r24, com.google.android.gms.internal.ads.zzjc r25) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 668
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkd.zza(com.google.android.gms.internal.ads.zziv, com.google.android.gms.internal.ads.zzjc):int");
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zza(zziy zziyVar) {
        this.zzapk = zziyVar;
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final boolean zza(zziv zzivVar) {
        return zzki.zzd(zzivVar);
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zzc(long j2, long j3) {
        this.zzavn.clear();
        this.zzavr = 0;
        this.zzaph = 0;
        this.zzapg = 0;
        if (j2 == 0) {
            zzgn();
            return;
        }
        zzkf[] zzkfVarArr = this.zzavt;
        if (zzkfVarArr != null) {
            for (zzkf zzkfVar : zzkfVarArr) {
                zzkj zzkjVar = zzkfVar.zzaxa;
                int iZzdw = zzkjVar.zzdw(j3);
                if (iZzdw == -1) {
                    iZzdw = zzkjVar.zzdx(j3);
                }
                zzkfVar.zzavg = iZzdw;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final long zzdt(long j2) {
        long j3 = Long.MAX_VALUE;
        for (zzkf zzkfVar : this.zzavt) {
            zzkj zzkjVar = zzkfVar.zzaxa;
            int iZzdw = zzkjVar.zzdw(j2);
            if (iZzdw == -1) {
                iZzdw = zzkjVar.zzdx(j2);
            }
            long j4 = zzkjVar.zzamv[iZzdw];
            if (j4 < j3) {
                j3 = j4;
            }
        }
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final boolean zzgc() {
        return true;
    }
}
