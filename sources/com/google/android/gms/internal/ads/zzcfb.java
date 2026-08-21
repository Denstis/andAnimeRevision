package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfb implements zzcxn<zzcfa, zzcfd> {
    private final String zzdjp;
    private final zzapr zzfvf;
    private final String zzfvs;
    private final Context zzlk;

    public zzcfb(Context context, String str, zzapr zzaprVar, String str2) {
        this.zzlk = context;
        this.zzfvs = str;
        this.zzfvf = zzaprVar;
        this.zzdjp = str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0246, code lost:
    
        r2 = new java.lang.StringBuilder(46);
        r2.append("Received error HTTP response code: ");
        r2.append(r8);
        com.google.android.gms.internal.ads.zzaxi.zzeu(r2.toString());
        r4 = new java.lang.StringBuilder(46);
        r4.append("Received error HTTP response code: ");
        r4.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x026e, code lost:
    
        throw new com.google.android.gms.internal.ads.zzcek(r4.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.internal.ads.zzcfd zza(java.lang.String r21, com.google.android.gms.internal.ads.zzapk r22, org.json.JSONObject r23, java.lang.String r24) throws com.google.android.gms.internal.ads.zzcek {
        /*
            Method dump skipped, instruction units count: 699
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfb.zza(java.lang.String, com.google.android.gms.internal.ads.zzapk, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzcfd");
    }

    @Override // com.google.android.gms.internal.ads.zzcxn
    public final /* synthetic */ zzcfd apply(zzcfa zzcfaVar) {
        zzcfa zzcfaVar2 = zzcfaVar;
        return zza(zzcfaVar2.zzfvm.getUrl(), zzcfaVar2.zzfvm, zzcfaVar2.zzfvl, this.zzdjp);
    }
}
