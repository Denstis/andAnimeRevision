package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpq implements zzcru<zzcpn> {
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcpq(Context context, zzddl zzddlVar) {
        this.zzlk = context;
        this.zzfoa = zzddlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcpn> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcpp
            private final zzcpq zzgfg;

            {
                this.zzgfg = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String strZzuz;
                String strZzvb;
                String strZzlm;
                com.google.android.gms.ads.internal.zzq.zzkj();
                zzpz zzpzVarZzux = com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzux();
                Bundle bundle = null;
                if (zzpzVarZzux != null && zzpzVarZzux != null && (!com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzuy() || !com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzva())) {
                    if (zzpzVarZzux.zzly()) {
                        zzpzVarZzux.wakeup();
                    }
                    zzpt zzptVarZzlw = zzpzVarZzux.zzlw();
                    if (zzptVarZzlw != null) {
                        strZzuz = zzptVarZzlw.zzll();
                        strZzlm = zzptVarZzlw.zzlm();
                        strZzvb = zzptVarZzlw.zzln();
                        if (strZzuz != null) {
                            com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzdz(strZzuz);
                        }
                        if (strZzvb != null) {
                            com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzea(strZzvb);
                        }
                    } else {
                        strZzuz = com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzuz();
                        strZzvb = com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzvb();
                        strZzlm = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzva()) {
                        if (strZzvb == null || TextUtils.isEmpty(strZzvb)) {
                            strZzvb = "no_hash";
                        }
                        bundle2.putString("v_fp_vertical", strZzvb);
                    }
                    if (strZzuz != null && !com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzuy()) {
                        bundle2.putString("fingerprint", strZzuz);
                        if (!strZzuz.equals(strZzlm)) {
                            bundle2.putString("v_fp", strZzlm);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zzcpn(bundle);
            }
        });
    }
}
