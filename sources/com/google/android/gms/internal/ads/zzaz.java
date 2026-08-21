package com.google.android.gms.internal.ads;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public class zzaz extends zzdvl implements Closeable {
    private static zzdvt zzcp = zzdvt.zzn(zzaz.class);

    public zzaz(zzdvn zzdvnVar, zzba zzbaVar) {
        zza(zzdvnVar, zzdvnVar.size(), zzbaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdvl, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.zzhwt.close();
    }

    @Override // com.google.android.gms.internal.ads.zzdvl
    public String toString() {
        String string = this.zzhwt.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 7);
        sb.append("model(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
