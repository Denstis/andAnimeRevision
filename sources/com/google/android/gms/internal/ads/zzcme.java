package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzcme extends zzvk implements zzboy {
    private final ViewGroup zzfdl;
    private final zzbei zzfza;
    private zzbio zzgbk;
    private final Context zzgbp;
    private zzddi<zzbio> zzgbz;
    private final zzbou zzgcf;
    private zzaah zzgcg;
    private final zzcmi zzgcc = new zzcmi();
    private final zzcmj zzgcd = new zzcmj();
    private final zzcml zzgce = new zzcml();
    private final zzcwg zzgbq = new zzcwg();

    public zzcme(zzbei zzbeiVar, Context context, zzua zzuaVar, String str) {
        this.zzfdl = new FrameLayout(context);
        this.zzfza = zzbeiVar;
        this.zzgbp = context;
        this.zzgbq.zzd(zzuaVar).zzgf(str);
        this.zzgcf = zzbeiVar.zzabf();
        this.zzgcf.zza(this, this.zzfza.zzabb());
    }

    static /* synthetic */ zzddi zza(zzcme zzcmeVar, zzddi zzddiVar) {
        zzcmeVar.zzgbz = null;
        return null;
    }

    private final synchronized zzbjn zzc(zzcwe zzcweVar) {
        return this.zzfza.zzabi().zzc(new zzbmk.zza().zzby(this.zzgbp).zza(zzcweVar).zzafy()).zzc(new zzbpn.zza().zza((zztp) this.zzgcc, this.zzfza.zzabb()).zza(this.zzgcd, this.zzfza.zzabb()).zza((zzbna) this.zzgcc, this.zzfza.zzabb()).zza((zzbog) this.zzgcc, this.zzfza.zzabb()).zza((zzbnb) this.zzgcc, this.zzfza.zzabb()).zza(this.zzgce, this.zzfza.zzabb()).zzagm()).zza(new zzcle(this.zzgcg)).zzb(new zzbth(zzbuy.zzfmf, null)).zza(new zzbkh(this.zzgcf)).zzb(new zzbin(this.zzfdl)).zzacz();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgbk != null) {
            this.zzgbk.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getAdUnitId() {
        return this.zzgbq.zzand();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgbk == null) {
            return null;
        }
        return this.zzgbk.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized zzwr getVideoController() {
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        if (this.zzgbk == null) {
            return null;
        }
        return this.zzgbk.getVideoController();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    @Override // com.google.android.gms.internal.ads.zzvl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean isLoading() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbio> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzddi<com.google.android.gms.internal.ads.zzbio> r0 = r1.zzgbz     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isDone()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            goto L16
        L15:
            throw r0
        L16:
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcme.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgbk != null) {
            this.zzgbk.zzafm().zzbu(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgbk != null) {
            this.zzgbk.zzafm().zzbv(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        this.zzgbq.zzbe(z);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzaah zzaahVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgcg = zzaahVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzant zzantVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzanz zzanzVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaqi zzaqiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzqx zzqxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzua zzuaVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.zzgbq.zzd(zzuaVar);
        if (this.zzgbk != null) {
            this.zzgbk.zza(this.zzfdl, zzuaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgcd.zzb(zzuxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgcc.zzc(zzuyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgce.zzb(zzvtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzvz zzvzVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzgbq.zzc(zzvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zza(zzyj zzyjVar) {
        Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
        this.zzgbq.zzc(zzyjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized boolean zza(zztx zztxVar) {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (this.zzgbz != null) {
            return false;
        }
        zzcwj.zze(this.zzgbp, zztxVar.zzcca);
        zzcwe zzcweVarZzane = this.zzgbq.zzg(zztxVar).zzane();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqw)).booleanValue() && this.zzgbq.zzjt().zzccq && this.zzgcc != null) {
            this.zzgcc.onAdFailedToLoad(1);
            return false;
        }
        zzbjn zzbjnVarZzc = zzc(zzcweVarZzane);
        this.zzgbz = zzbjnVarZzc.zzaca().zzafs();
        zzdcy.zza(this.zzgbz, new zzcmh(this, zzbjnVarZzc), this.zzfza.zzabb());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzboy
    public final synchronized void zzagc() {
        boolean zZza;
        Object parent = this.zzfdl.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            zZza = com.google.android.gms.ads.internal.zzq.zzkj().zza(view, view.getContext());
        } else {
            zZza = false;
        }
        if (zZza) {
            zza(this.zzgbq.zzanc());
        } else {
            this.zzgcf.zzdd(60);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfdl);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized void zzjs() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        if (this.zzgbk != null) {
            this.zzgbk.zzjs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized zzua zzjt() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        if (this.zzgbk != null) {
            return zzcwi.zza(this.zzgbp, (List<zzcvu>) Collections.singletonList(this.zzgbk.zzaet()));
        }
        return this.zzgbq.zzjt();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final synchronized String zzju() {
        if (this.zzgbk == null) {
            return null;
        }
        return this.zzgbk.zzju();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        return this.zzgce.zzalj();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        return this.zzgcc.zzalh();
    }
}
