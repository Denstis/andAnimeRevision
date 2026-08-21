package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbyc extends zzadj {
    private final String zzffi;
    private final zzbur zzfjl;
    private final zzbuj zzfml;

    public zzbyc(String str, zzbuj zzbujVar, zzbur zzburVar) {
        this.zzffi = str;
        this.zzfml = zzbujVar;
        this.zzfjl = zzburVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void cancelUnconfirmedClick() {
        this.zzfml.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void destroy() {
        this.zzfml.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getAdvertiser() {
        return this.zzfjl.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getBody() {
        return this.zzfjl.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getCallToAction() {
        return this.zzfjl.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final Bundle getExtras() {
        return this.zzfjl.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getHeadline() {
        return this.zzfjl.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final List<?> getImages() {
        return this.zzfjl.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getMediationAdapterClassName() {
        return this.zzffi;
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final List<?> getMuteThisAdReasons() {
        return isCustomMuteThisAdEnabled() ? this.zzfjl.getMuteThisAdReasons() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getPrice() {
        return this.zzfjl.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final double getStarRating() {
        return this.zzfjl.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final String getStore() {
        return this.zzfjl.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final zzwr getVideoController() {
        return this.zzfjl.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final boolean isCustomClickGestureEnabled() {
        return this.zzfml.isCustomClickGestureEnabled();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final boolean isCustomMuteThisAdEnabled() {
        return (this.zzfjl.getMuteThisAdReasons().isEmpty() || this.zzfjl.zzahs() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void performClick(Bundle bundle) {
        this.zzfml.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void recordCustomClickGesture() {
        this.zzfml.recordCustomClickGesture();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final boolean recordImpression(Bundle bundle) {
        return this.zzfml.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void reportTouchEvent(Bundle bundle) {
        this.zzfml.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zza(zzadf zzadfVar) {
        this.zzfml.zza(zzadfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zza(zzwe zzweVar) {
        this.zzfml.zza(zzweVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zza(zzwi zzwiVar) {
        this.zzfml.zza(zzwiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final IObjectWrapper zzqm() {
        return ObjectWrapper.wrap(this.zzfml);
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final zzabi zzqn() {
        return this.zzfjl.zzqn();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final zzaba zzqo() {
        return this.zzfjl.zzqo();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final IObjectWrapper zzqp() {
        return this.zzfjl.zzqp();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzqw() {
        this.zzfml.zzqw();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final zzabh zzqx() {
        return this.zzfml.zzahm().zzqx();
    }
}
