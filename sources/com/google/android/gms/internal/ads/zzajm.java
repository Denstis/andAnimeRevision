package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzajm extends zzbee {
    private final AppMeasurementSdk zzdbr;

    zzajm(AppMeasurementSdk appMeasurementSdk) {
        this.zzdbr = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void beginAdUnitExposure(String str) {
        this.zzdbr.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzdbr.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void endAdUnitExposure(String str) {
        this.zzdbr.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final long generateEventId() {
        return this.zzdbr.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String getAppIdOrigin() {
        return this.zzdbr.getAppIdOrigin();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String getAppInstanceId() {
        return this.zzdbr.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final List getConditionalUserProperties(String str, String str2) {
        return this.zzdbr.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String getCurrentScreenClass() {
        return this.zzdbr.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String getCurrentScreenName() {
        return this.zzdbr.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final String getGmpAppId() {
        return this.zzdbr.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final int getMaxUserProperties(String str) {
        return this.zzdbr.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final Map getUserProperties(String str, String str2, boolean z) {
        return this.zzdbr.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void logEvent(String str, String str2, Bundle bundle) {
        this.zzdbr.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void performAction(Bundle bundle) {
        this.zzdbr.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final Bundle performActionWithResponse(Bundle bundle) {
        return this.zzdbr.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void setConditionalUserProperty(Bundle bundle) {
        this.zzdbr.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zza(String str, String str2, IObjectWrapper iObjectWrapper) {
        this.zzdbr.setUserProperty(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void zzb(IObjectWrapper iObjectWrapper, String str, String str2) {
        this.zzdbr.setCurrentScreen(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }
}
