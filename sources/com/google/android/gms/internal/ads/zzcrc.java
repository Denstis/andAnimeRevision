package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class zzcrc implements zzcru<zzcqz> {
    private final ScheduledExecutorService zzffn;
    private final zzcwe zzfga;
    private final zzddl zzfoa;
    private final zzclp zzgae;
    private String zzgdm;
    private final zzclr zzgft;
    private final Context zzlk;

    public zzcrc(zzddl zzddlVar, ScheduledExecutorService scheduledExecutorService, String str, zzclr zzclrVar, Context context, zzcwe zzcweVar, zzclp zzclpVar) {
        this.zzfoa = zzddlVar;
        this.zzffn = scheduledExecutorService;
        this.zzgdm = str;
        this.zzgft = zzclrVar;
        this.zzlk = context;
        this.zzfga = zzcweVar;
        this.zzgae = zzclpVar;
    }

    static final /* synthetic */ zzcqz zzg(List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(((zzddi) it.next()).get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return new zzcqz(jSONArray.toString());
    }

    final /* synthetic */ void zza(String str, zzaxv zzaxvVar, Bundle bundle, List list) {
        try {
            this.zzgae.zzgb(str);
            zzamd zzamdVarZzgc = this.zzgae.zzgc(str);
            if (zzamdVarZzgc == null) {
                throw new Exception("Missing Adapter.");
            }
            zzamdVarZzgc.zza(ObjectWrapper.wrap(this.zzlk), this.zzgdm, bundle, (Bundle) list.get(0), this.zzfga.zzbll, new zzclx(str, zzamdVarZzgc, zzaxvVar));
        } catch (Throwable th) {
            zzaxvVar.setException(new Exception("Error calling adapter"));
            String strValueOf = String.valueOf(str);
            zzaxi.zzc(strValueOf.length() != 0 ? "Error calling adapter: ".concat(strValueOf) : new String("Error calling adapter: "), th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcqz> zzalv() {
        return ((Boolean) zzuv.zzon().zzd(zzza.zzcmi)).booleanValue() ? zzdcy.zzb(this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcrb
            private final zzcrc zzgfs;

            {
                this.zzgfs = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgfs.zzamf();
            }
        }), new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzcre
            private final zzcrc zzgfs;

            {
                this.zzgfs = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzgfs.zzh((List) obj);
            }
        }, this.zzfoa) : zzdcy.zzah(null);
    }

    final /* synthetic */ List zzamf() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : this.zzgft.zzs(this.zzgdm, this.zzfga.zzgkh).entrySet()) {
            final String key = entry.getKey();
            final List<Bundle> value = entry.getValue();
            final zzaxv zzaxvVar = new zzaxv();
            Bundle bundle = this.zzfga.zzgkg.zzcce;
            final Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
            arrayList.add(zzdcy.zza(zzaxvVar, ((Long) zzuv.zzon().zzd(zzza.zzcmh)).longValue(), TimeUnit.MILLISECONDS, this.zzffn));
            this.zzfoa.execute(new Runnable(this, key, zzaxvVar, bundle2, value) { // from class: com.google.android.gms.internal.ads.zzcrd
                private final String zzcyz;
                private final zzaxv zzftc;
                private final List zzftw;
                private final zzcrc zzgfs;
                private final Bundle zzgfu;

                {
                    this.zzgfs = this;
                    this.zzcyz = key;
                    this.zzftc = zzaxvVar;
                    this.zzgfu = bundle2;
                    this.zzftw = value;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgfs.zza(this.zzcyz, this.zzftc, this.zzgfu, this.zzftw);
                }
            });
        }
        return arrayList;
    }

    final /* synthetic */ zzddi zzh(final List list) {
        return zzdcy.zzh(list).zza(new Callable(list) { // from class: com.google.android.gms.internal.ads.zzcrg
            private final List zzgfv;

            {
                this.zzgfv = list;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcrc.zzg(this.zzgfv);
            }
        }, this.zzfoa);
    }
}
