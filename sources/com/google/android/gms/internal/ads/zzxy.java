package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzxy extends zzaqe {
    private zzaqi zzcfk;

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void pause() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void resume() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void setCustomData(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void show() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzapz zzapzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzaqi zzaqiVar) {
        this.zzcfk = zzaqiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzaqo zzaqoVar) {
        zzaxi.zzes("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzawy.zzzb.post(new zzyb(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zza(zzvo zzvoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzm(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzn(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzo(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final void zzp(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqb
    public final boolean zzpl() {
        return false;
    }
}
