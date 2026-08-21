package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzctb implements zzcru<zzctc> {
    private String packageName;
    private zzddl zzfoa;
    private zzatj zzghg;

    public zzctb(zzatj zzatjVar, zzddl zzddlVar, String str) {
        this.zzghg = zzatjVar;
        this.zzfoa = zzddlVar;
        this.packageName = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzctc> zzalv() {
        new zzaxv();
        final zzddi<String> zzddiVarZzah = zzdcy.zzah(null);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcse)).booleanValue()) {
            zzddiVarZzah = this.zzghg.zzdw(this.packageName);
        }
        final zzddi<String> zzddiVarZzdx = this.zzghg.zzdx(this.packageName);
        return zzdcy.zza(zzddiVarZzah, zzddiVarZzdx).zza(new Callable(zzddiVarZzah, zzddiVarZzdx) { // from class: com.google.android.gms.internal.ads.zzcte
            private final zzddi zzfoe;
            private final zzddi zzfov;

            {
                this.zzfov = zzddiVarZzah;
                this.zzfoe = zzddiVarZzdx;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzctc((String) this.zzfov.get(), (String) this.zzfoe.get());
            }
        }, zzaxn.zzdwi);
    }
}
