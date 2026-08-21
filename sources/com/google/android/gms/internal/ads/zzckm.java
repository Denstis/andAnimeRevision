package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbnz;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzckm<AdT, AdapterT, ListenerT extends zzbnz> implements zzcga<AdT> {
    private final zzcge<AdapterT, ListenerT> zzfai;
    private final zzcyg zzfgb;
    private final zzcgh<AdT, AdapterT, ListenerT> zzgaf;
    private final zzddl zzgag;

    public zzckm(zzcyg zzcygVar, zzddl zzddlVar, zzcge<AdapterT, ListenerT> zzcgeVar, zzcgh<AdT, AdapterT, ListenerT> zzcghVar) {
        this.zzfgb = zzcygVar;
        this.zzgag = zzddlVar;
        this.zzgaf = zzcghVar;
        this.zzfai = zzcgeVar;
    }

    final /* synthetic */ Object zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar, Void r4) {
        return this.zzgaf.zzb(zzcvzVar, zzcvrVar, zzcgfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        return !zzcvrVar.zzgjf.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<AdT> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        final zzcgf<AdapterT, ListenerT> zzcgfVarZzd;
        Iterator<String> it = zzcvrVar.zzgjf.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzcgfVarZzd = null;
                break;
            }
            try {
                zzcgfVarZzd = this.zzfai.zzd(it.next(), zzcvrVar.zzgjh);
                break;
            } catch (zzcwh unused) {
            }
        }
        if (zzcgfVarZzd == null) {
            return zzdcy.zzi(new zzciv("unable to instantiate mediation adapter class"));
        }
        zzaxv zzaxvVar = new zzaxv();
        zzcgfVarZzd.zzfxg.zza(new zzckr(this, zzaxvVar, zzcgfVarZzd));
        if (zzcvrVar.zzdnj) {
            Bundle bundle = zzcvzVar.zzgka.zzfga.zzgkg.zzcce;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        return this.zzfgb.zzu(zzcyd.ADAPTER_LOAD_AD_SYN).zza(new zzcxq(this, zzcvzVar, zzcvrVar, zzcgfVarZzd) { // from class: com.google.android.gms.internal.ads.zzckp
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzcgf zzgad;
            private final zzckm zzgai;

            {
                this.zzgai = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
                this.zzgad = zzcgfVarZzd;
            }

            @Override // com.google.android.gms.internal.ads.zzcxq
            public final void run() {
                this.zzgai.zzd(this.zzfom, this.zzfea, this.zzgad);
            }
        }, this.zzgag).zzw(zzcyd.ADAPTER_LOAD_AD_ACK).zzb(zzaxvVar).zzw(zzcyd.ADAPTER_WRAP_ADAPTER).zzb(new zzcxn(this, zzcvzVar, zzcvrVar, zzcgfVarZzd) { // from class: com.google.android.gms.internal.ads.zzcko
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzcgf zzgad;
            private final zzckm zzgai;

            {
                this.zzgai = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
                this.zzgad = zzcgfVarZzd;
            }

            @Override // com.google.android.gms.internal.ads.zzcxn
            public final Object apply(Object obj) {
                return this.zzgai.zza(this.zzfom, this.zzfea, this.zzgad, (Void) obj);
            }
        }).zzant();
    }

    final /* synthetic */ void zzd(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar) {
        this.zzgaf.zza(zzcvzVar, zzcvrVar, zzcgfVar);
    }
}
