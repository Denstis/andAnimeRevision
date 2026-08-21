package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbga extends zzwa {
    private final zzaxl zzblk;
    private final zzasl zzbnf;
    private final zzchm zzfah;
    private final zzcge<zzcwm, zzchn> zzfai;
    private final zzclr zzfaj;
    private final zzccj zzfak;
    private final Context zzlk;
    private boolean zzye = false;

    zzbga(Context context, zzaxl zzaxlVar, zzchm zzchmVar, zzcge<zzcwm, zzchn> zzcgeVar, zzclr zzclrVar, zzccj zzccjVar, zzasl zzaslVar) {
        this.zzlk = context;
        this.zzblk = zzaxlVar;
        this.zzfah = zzchmVar;
        this.zzfai = zzcgeVar;
        this.zzfaj = zzclrVar;
        this.zzfak = zzccjVar;
        this.zzbnf = zzaslVar;
    }

    private final String zzadu() {
        Context applicationContext = this.zzlk.getApplicationContext() == null ? this.zzlk : this.zzlk.getApplicationContext();
        try {
            String string = Wrappers.packageManager(applicationContext).getApplicationInfo(applicationContext.getPackageName(), 128).metaData.getString("com.google.android.gms.ads.APPLICATION_ID");
            return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
        } catch (PackageManager.NameNotFoundException | NullPointerException e2) {
            zzaug.zza("Error getting metadata", e2);
            return "";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final String getVersionString() {
        return this.zzblk.zzblz;
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized void initialize() {
        if (this.zzye) {
            zzaxi.zzeu("Mobile ads is initialized already.");
            return;
        }
        zzza.initialize(this.zzlk);
        com.google.android.gms.ads.internal.zzq.zzkn().zzd(this.zzlk, this.zzblk);
        com.google.android.gms.ads.internal.zzq.zzkp().initialize(this.zzlk);
        this.zzye = true;
        this.zzfak.zzaka();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmj)).booleanValue()) {
            this.zzfaj.zzaky();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized void setAppMuted(boolean z) {
        com.google.android.gms.ads.internal.zzq.zzko().setAppMuted(z);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized void setAppVolume(float f2) {
        com.google.android.gms.ads.internal.zzq.zzko().setAppVolume(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzafu zzafuVar) {
        this.zzfak.zzb(zzafuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzajx zzajxVar) {
        this.zzfah.zzb(zzajxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zza(zzyd zzydVar) {
        this.zzbnf.zza(this.zzlk, zzydVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        zzza.initialize(this.zzlk);
        String strZzadu = ((Boolean) zzuv.zzon().zzd(zzza.zzcox)).booleanValue() ? zzadu() : "";
        if (!TextUtils.isEmpty(strZzadu)) {
            str = strZzadu;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) zzuv.zzon().zzd(zzza.zzcow)).booleanValue() | ((Boolean) zzuv.zzon().zzd(zzza.zzckj)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) zzuv.zzon().zzd(zzza.zzckj)).booleanValue()) {
            zBooleanValue = true;
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.internal.ads.zzbgd
                private final zzbga zzfal;
                private final Runnable zzfam;

                {
                    this.zzfal = this;
                    this.zzfam = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaxn.zzdwm.execute(new Runnable(this.zzfal, this.zzfam) { // from class: com.google.android.gms.internal.ads.zzbgc
                        private final zzbga zzfal;
                        private final Runnable zzfam;

                        {
                            this.zzfal = zzbgaVar;
                            this.zzfam = runnable;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzfal.zzd(this.zzfam);
                        }
                    });
                }
            };
        }
        if (zBooleanValue) {
            com.google.android.gms.ads.internal.zzq.zzkr().zza(this.zzlk, this.zzblk, str, runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized void zzby(String str) {
        zzza.initialize(this.zzlk);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcow)).booleanValue()) {
                com.google.android.gms.ads.internal.zzq.zzkr().zza(this.zzlk, this.zzblk, str, (Runnable) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzbz(String str) {
        this.zzfaj.zzgd(str);
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final void zzc(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzaxi.zzes("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzaxi.zzes("Context is null. Failed to open debug menu.");
            return;
        }
        zzavd zzavdVar = new zzavd(context);
        zzavdVar.setAdUnitId(str);
        zzavdVar.zzr(this.zzblk.zzblz);
        zzavdVar.showDialog();
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ void zzd(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map<String, zzajs> mapZzup = com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzve().zzup();
        if (mapZzup == null || mapZzup.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzaxi.zzd("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzfah.zzakt()) {
            HashMap map = new HashMap();
            Iterator<zzajs> it = mapZzup.values().iterator();
            while (it.hasNext()) {
                for (zzajt zzajtVar : it.next().zzdbw) {
                    String str = zzajtVar.zzddb;
                    for (String str2 : zzajtVar.zzdct) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) map.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzcgf<zzcwm, ListenerT> zzcgfVarZzd = this.zzfai.zzd(str3, jSONObject);
                    if (zzcgfVarZzd != 0) {
                        zzcwm zzcwmVar = (zzcwm) zzcgfVarZzd.zzddv;
                        if (!zzcwmVar.isInitialized() && zzcwmVar.zzrt()) {
                            zzcwmVar.zza(this.zzlk, (zzchn) zzcgfVarZzd.zzfxg, (List<String>) entry.getValue());
                            String strValueOf = String.valueOf(str3);
                            zzaxi.zzdv(strValueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(strValueOf) : new String("Initialized rewarded video mediation adapter "));
                        }
                    }
                } catch (zzcwh e2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                    sb.append("Failed to initialize rewarded video mediation adapter \"");
                    sb.append(str3);
                    sb.append("\"");
                    zzaxi.zzd(sb.toString(), e2);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized float zzos() {
        return com.google.android.gms.ads.internal.zzq.zzko().zzos();
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final synchronized boolean zzot() {
        return com.google.android.gms.ads.internal.zzq.zzko().zzot();
    }

    @Override // com.google.android.gms.internal.ads.zzwb
    public final List<zzafr> zzou() {
        return this.zzfak.zzakb();
    }
}
