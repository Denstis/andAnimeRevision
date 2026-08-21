package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaja implements zzaxx {
    private final /* synthetic */ zzaxv zzcyd;
    private final /* synthetic */ zzaia zzdbh;

    zzaja(zzaiy zzaiyVar, zzaxv zzaxvVar, zzaia zzaiaVar) {
        this.zzcyd = zzaxvVar;
        this.zzdbh = zzaiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void run() {
        this.zzcyd.setException(new zzaim("Unable to obtain a JavascriptEngine."));
        this.zzdbh.release();
    }
}
