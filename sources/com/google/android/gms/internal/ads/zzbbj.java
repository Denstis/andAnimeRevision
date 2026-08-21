package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzbbj extends zzbax implements zzns<zzne> {
    private String url;
    private ByteBuffer zzakm;
    private final zzazk zzebk;
    private boolean zzedu;
    private final zzbbk zzedv;
    private final zzbap zzedw;
    private boolean zzedx;
    private final Object zzedy;
    private boolean zzedz;

    public zzbbj(zzazj zzazjVar, zzazk zzazkVar) {
        super(zzazjVar);
        this.zzebk = zzazkVar;
        this.zzedv = new zzbbk();
        this.zzedw = new zzbap();
        this.zzedy = new Object();
    }

    private final void zzxd() {
        int iZzyt = (int) this.zzedv.zzyt();
        int iZzl = (int) this.zzedw.zzl(this.zzakm);
        int iPosition = this.zzakm.position();
        int iRound = Math.round(iZzl * (iPosition / iZzyt));
        boolean z = iRound > 0;
        int iZzyp = zzbag.zzyp();
        int iZzyq = zzbag.zzyq();
        String str = this.url;
        zza(str, zzfe(str), iPosition, iZzyt, iRound, iZzl, z, iZzyp, iZzyq);
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    public final void abort() {
        this.zzedu = true;
    }

    public final ByteBuffer getByteBuffer() {
        synchronized (this.zzedy) {
            if (this.zzakm != null && !this.zzedx) {
                this.zzakm.flip();
                this.zzedx = true;
            }
            this.zzedu = true;
        }
        return this.zzakm;
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* synthetic */ void zza(zzne zzneVar, zznf zznfVar) {
        zzne zzneVar2 = zzneVar;
        if (zzneVar2 instanceof zznh) {
            this.zzedv.zza((zznh) zzneVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* bridge */ /* synthetic */ void zzc(zzne zzneVar, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* bridge */ /* synthetic */ void zze(zzne zzneVar) {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004b A[Catch: Exception -> 0x0032, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0032, blocks: (B:5:0x0028, B:11:0x004b, B:17:0x0098, B:42:0x00ef, B:43:0x010a, B:45:0x010d, B:46:0x0130), top: B:66:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a9 A[Catch: Exception -> 0x013c, TRY_ENTER, TryCatch #1 {Exception -> 0x013c, blocks: (B:3:0x000d, B:9:0x0035, B:12:0x004e, B:13:0x0086, B:19:0x00a9, B:20:0x00ab), top: B:61:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:? -> B:53:0x013a). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzfd(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbj.zzfd(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbax
    protected final String zzfe(String str) {
        String strValueOf = String.valueOf(super.zzfe(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    public final boolean zzys() {
        return this.zzedz;
    }
}
