package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzclw extends zzvk {
    private final ViewGroup zzfdl;
    private final zzcwe zzfga;
    private final zzuy zzfjf;
    private final zzbio zzgbk;
    private final Context zzlk;

    public zzclw(Context context, zzuy zzuyVar, zzcwe zzcweVar, zzbio zzbioVar) {
        this.zzlk = context;
        this.zzfjf = zzuyVar;
        this.zzfga = zzcweVar;
        this.zzgbk = zzbioVar;
        FrameLayout frameLayout = new FrameLayout(this.zzlk);
        frameLayout.removeAllViews();
        frameLayout.addView(this.zzgbk.zzaeu(), com.google.android.gms.ads.internal.zzq.zzkl().zzvr());
        frameLayout.setMinimumHeight(zzjt().heightPixels);
        frameLayout.setMinimumWidth(zzjt().widthPixels);
        this.zzfdl = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgbk.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        zzaxi.zzet("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getAdUnitId() {
        return this.zzfga.zzgkh;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getMediationAdapterClassName() {
        return this.zzgbk.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzwr getVideoController() {
        return this.zzgbk.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void pause() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgbk.zzafm().zzbu(null);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void resume() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgbk.zzafm().zzbv(null);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setManualImpressionsEnabled(boolean z) {
        zzaxi.zzet("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
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
    public final void zza(zzaah zzaahVar) {
        zzaxi.zzet("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
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
    public final void zza(zzua zzuaVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        zzbio zzbioVar = this.zzgbk;
        if (zzbioVar != null) {
            zzbioVar.zza(this.zzfdl, zzuaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
        zzaxi.zzet("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
        zzaxi.zzet("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
        zzaxi.zzet("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
        zzaxi.zzet("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvz zzvzVar) {
        zzaxi.zzet("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzyj zzyjVar) {
        zzaxi.zzet("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean zza(zztx zztxVar) {
        zzaxi.zzet("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        return ObjectWrapper.wrap(this.zzfdl);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzjs() {
        this.zzgbk.zzjs();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzua zzjt() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        return zzcwi.zza(this.zzlk, (List<zzcvu>) Collections.singletonList(this.zzgbk.zzaet()));
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String zzju() {
        return this.zzgbk.zzju();
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        return this.zzfga.zzgkm;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        return this.zzfjf;
    }
}
