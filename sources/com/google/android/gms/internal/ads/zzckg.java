package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zzckg implements zzbrj {
    private final /* synthetic */ zzcvz zzfzu;
    private final /* synthetic */ zzcvr zzfzv;
    private final /* synthetic */ zzcgf zzfzw;
    final /* synthetic */ zzcke zzfzx;

    zzckg(zzcke zzckeVar, zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar) {
        this.zzfzx = zzckeVar;
        this.zzfzu = zzcvzVar;
        this.zzfzv = zzcvrVar;
        this.zzfzw = zzcgfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final void onInitializationSucceeded() {
        Executor executor = this.zzfzx.zzfbx;
        final zzcvz zzcvzVar = this.zzfzu;
        final zzcvr zzcvrVar = this.zzfzv;
        final zzcgf zzcgfVar = this.zzfzw;
        executor.execute(new Runnable(this, zzcvzVar, zzcvrVar, zzcgfVar) { // from class: com.google.android.gms.internal.ads.zzckj
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzckg zzgac;
            private final zzcgf zzgad;

            {
                this.zzgac = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
                this.zzgad = zzcgfVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzckg zzckgVar = this.zzgac;
                zzcvz zzcvzVar2 = this.zzfom;
                zzcvr zzcvrVar2 = this.zzfea;
                zzcgf zzcgfVar2 = this.zzgad;
                zzcke zzckeVar = zzckgVar.zzfzx;
                zzcke.zzc(zzcvzVar2, zzcvrVar2, zzcgfVar2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbrj
    public final void zzde(int i2) {
        String strValueOf = String.valueOf(this.zzfzw.zzffi);
        zzaxi.zzeu(strValueOf.length() != 0 ? "Fail to initialize adapter ".concat(strValueOf) : new String("Fail to initialize adapter "));
    }
}
