package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class zzbmk {
    private final zzcwe zzfga;
    private Bundle zzfgs;
    private final String zzfgt;
    private final zzcwc zzfgu;
    private final Context zzlk;

    public static class zza {
        private zzcwe zzfga;
        private Bundle zzfgs;
        private String zzfgt;
        private zzcwc zzfgu;
        private Context zzlk;

        public final zza zza(zzcwc zzcwcVar) {
            this.zzfgu = zzcwcVar;
            return this;
        }

        public final zza zza(zzcwe zzcweVar) {
            this.zzfga = zzcweVar;
            return this;
        }

        public final zzbmk zzafy() {
            return new zzbmk(this);
        }

        public final zza zzby(Context context) {
            this.zzlk = context;
            return this;
        }

        public final zza zze(Bundle bundle) {
            this.zzfgs = bundle;
            return this;
        }

        public final zza zzfn(String str) {
            this.zzfgt = str;
            return this;
        }
    }

    private zzbmk(zza zzaVar) {
        this.zzlk = zzaVar.zzlk;
        this.zzfga = zzaVar.zzfga;
        this.zzfgs = zzaVar.zzfgs;
        this.zzfgt = zzaVar.zzfgt;
        this.zzfgu = zzaVar.zzfgu;
    }

    final zza zzaft() {
        return new zza().zzby(this.zzlk).zza(this.zzfga).zzfn(this.zzfgt).zze(this.zzfgs);
    }

    final zzcwe zzafu() {
        return this.zzfga;
    }

    final zzcwc zzafv() {
        return this.zzfgu;
    }

    final Bundle zzafw() {
        return this.zzfgs;
    }

    final String zzafx() {
        return this.zzfgt;
    }

    final Context zzbx(Context context) {
        return this.zzfgt != null ? context : this.zzlk;
    }
}
