package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbul implements Runnable {
    private final zzbuz zzfla;

    private zzbul(zzbuz zzbuzVar) {
        this.zzfla = zzbuzVar;
    }

    static Runnable zza(zzbuz zzbuzVar) {
        return new zzbul(zzbuzVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfla.zzahf();
    }
}
