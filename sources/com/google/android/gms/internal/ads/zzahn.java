package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzahn {
    private final Object lock;
    private int status;
    private final zzaxl zzblk;
    private final String zzczt;
    private zzavr<zzaha> zzczu;
    private zzavr<zzaha> zzczv;
    private zzaie zzczw;
    private final Context zzlk;

    public zzahn(Context context, zzaxl zzaxlVar, String str) {
        this.lock = new Object();
        this.status = 1;
        this.zzczt = str;
        this.zzlk = context.getApplicationContext();
        this.zzblk = zzaxlVar;
        this.zzczu = new zzaib();
        this.zzczv = new zzaib();
    }

    public zzahn(Context context, zzaxl zzaxlVar, String str, zzavr<zzaha> zzavrVar, zzavr<zzaha> zzavrVar2) {
        this(context, zzaxlVar, str);
        this.zzczu = zzavrVar;
        this.zzczv = zzavrVar2;
    }

    protected final zzaie zza(final zzdf zzdfVar) {
        final zzaie zzaieVar = new zzaie(this.zzczv);
        zzaxn.zzdwm.execute(new Runnable(this, zzdfVar, zzaieVar) { // from class: com.google.android.gms.internal.ads.zzahm
            private final zzahn zzczq;
            private final zzdf zzczr;
            private final zzaie zzczs;

            {
                this.zzczq = this;
                this.zzczr = zzdfVar;
                this.zzczs = zzaieVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzczq.zza(this.zzczr, this.zzczs);
            }
        });
        zzaieVar.zza(new zzahw(this, zzaieVar), new zzahz(this, zzaieVar));
        return zzaieVar;
    }

    final /* synthetic */ void zza(zzaha zzahaVar) {
        if (zzahaVar.isDestroyed()) {
            this.status = 1;
        }
    }

    final /* synthetic */ void zza(zzaie zzaieVar, zzaha zzahaVar) {
        synchronized (this.lock) {
            if (zzaieVar.getStatus() != -1 && zzaieVar.getStatus() != 1) {
                zzaieVar.reject();
                zzddl zzddlVar = zzaxn.zzdwm;
                zzahaVar.getClass();
                zzddlVar.execute(zzaht.zzb(zzahaVar));
                zzaug.zzdy("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    final /* synthetic */ void zza(zzdf zzdfVar, final zzaie zzaieVar) {
        try {
            Context context = this.zzlk;
            zzaxl zzaxlVar = this.zzblk;
            final zzaha zzagmVar = ((Boolean) zzuv.zzon().zzd(zzza.zzcjy)).booleanValue() ? new zzagm(context, zzaxlVar) : new zzahc(context, zzaxlVar, zzdfVar, null);
            zzagmVar.zza(new zzahd(this, zzaieVar, zzagmVar) { // from class: com.google.android.gms.internal.ads.zzahr
                private final zzahn zzczq;
                private final zzaie zzczy;
                private final zzaha zzczz;

                {
                    this.zzczq = this;
                    this.zzczy = zzaieVar;
                    this.zzczz = zzagmVar;
                }

                @Override // com.google.android.gms.internal.ads.zzahd
                public final void zzre() {
                    zzaul.zzdsu.postDelayed(new Runnable(this.zzczq, this.zzczy, this.zzczz) { // from class: com.google.android.gms.internal.ads.zzahq
                        private final zzahn zzczq;
                        private final zzaie zzczy;
                        private final zzaha zzczz;

                        {
                            this.zzczq = zzahnVar;
                            this.zzczy = zzaieVar;
                            this.zzczz = zzahaVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzczq.zza(this.zzczy, this.zzczz);
                        }
                    }, zzahy.zzdai);
                }
            });
            zzagmVar.zza("/jsLoaded", new zzahs(this, zzaieVar, zzagmVar));
            zzawn zzawnVar = new zzawn();
            zzahv zzahvVar = new zzahv(this, zzdfVar, zzagmVar, zzawnVar);
            zzawnVar.set(zzahvVar);
            zzagmVar.zza("/requestReload", zzahvVar);
            if (this.zzczt.endsWith(".js")) {
                zzagmVar.zzcq(this.zzczt);
            } else if (this.zzczt.startsWith("<html>")) {
                zzagmVar.zzcr(this.zzczt);
            } else {
                zzagmVar.zzcs(this.zzczt);
            }
            zzaul.zzdsu.postDelayed(new zzahu(this, zzaieVar, zzagmVar), zzahy.zzdah);
        } catch (Throwable th) {
            zzaxi.zzc("Error creating webview.", th);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzaieVar.reject();
        }
    }

    public final zzaia zzb(zzdf zzdfVar) {
        synchronized (this.lock) {
            synchronized (this.lock) {
                if (this.zzczw != null && this.status == 0) {
                    if (((Boolean) zzuv.zzon().zzd(zzza.zzcgl)).booleanValue()) {
                        this.zzczw.zza(new zzaxz(this) { // from class: com.google.android.gms.internal.ads.zzahp
                            private final zzahn zzczq;

                            {
                                this.zzczq = this;
                            }

                            @Override // com.google.android.gms.internal.ads.zzaxz
                            public final void zzh(Object obj) {
                                this.zzczq.zza((zzaha) obj);
                            }
                        }, zzaho.zzczx);
                    }
                }
            }
            if (this.zzczw != null && this.zzczw.getStatus() != -1) {
                if (this.status == 0) {
                    return this.zzczw.zzrg();
                }
                if (this.status == 1) {
                    this.status = 2;
                    zza((zzdf) null);
                    return this.zzczw.zzrg();
                }
                if (this.status == 2) {
                    return this.zzczw.zzrg();
                }
                return this.zzczw.zzrg();
            }
            this.status = 2;
            this.zzczw = zza((zzdf) null);
            return this.zzczw.zzrg();
        }
    }
}
