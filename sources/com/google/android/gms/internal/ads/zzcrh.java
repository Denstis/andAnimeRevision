package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcrh implements zzcru<zzcri> {
    private final zzasl zzbnf;
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcrh(zzasl zzaslVar, zzddl zzddlVar, Context context) {
        this.zzbnf = zzaslVar;
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcri> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcrk
            private final zzcrh zzgga;

            {
                this.zzgga = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgga.zzamg();
            }
        });
    }

    final /* synthetic */ zzcri zzamg() {
        if (!this.zzbnf.zzab(this.zzlk)) {
            return new zzcri(null, null, null, null, null);
        }
        String strZzae = this.zzbnf.zzae(this.zzlk);
        String str = strZzae == null ? "" : strZzae;
        String strZzaf = this.zzbnf.zzaf(this.zzlk);
        String str2 = strZzaf == null ? "" : strZzaf;
        String strZzag = this.zzbnf.zzag(this.zzlk);
        String str3 = strZzag == null ? "" : strZzag;
        String strZzah = this.zzbnf.zzah(this.zzlk);
        return new zzcri(str, str2, str3, strZzah == null ? "" : strZzah, "TIME_OUT".equals(str2) ? (Long) zzuv.zzon().zzd(zzza.zzcjk) : null);
    }
}
