package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzmy {
    private zzmx zzbed;

    protected final void invalidate() {
        zzmx zzmxVar = this.zzbed;
        if (zzmxVar != null) {
            zzmxVar.zzec();
        }
    }

    public abstract zzna zza(zzgw[] zzgwVarArr, zzmk zzmkVar);

    public final void zza(zzmx zzmxVar) {
        this.zzbed = zzmxVar;
    }

    public abstract void zzd(Object obj);
}
