package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxz extends zzacd {
    private final String zzffi;
    private final zzbur zzfjl;
    private final zzbuj zzfml;

    public zzbxz(String str, zzbuj zzbujVar, zzbur zzburVar) {
        this.zzffi = str;
        this.zzfml = zzbujVar;
        this.zzfjl = zzburVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final void destroy() {
        this.zzfml.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getAdvertiser() {
        return this.zzfjl.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getBody() {
        return this.zzfjl.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getCallToAction() {
        return this.zzfjl.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final Bundle getExtras() {
        return this.zzfjl.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getHeadline() {
        return this.zzfjl.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final List<?> getImages() {
        return this.zzfjl.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final String getMediationAdapterClassName() {
        return this.zzffi;
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final zzwr getVideoController() {
        return this.zzfjl.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final void performClick(Bundle bundle) {
        this.zzfml.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final boolean recordImpression(Bundle bundle) {
        return this.zzfml.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final void reportTouchEvent(Bundle bundle) {
        this.zzfml.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final IObjectWrapper zzqm() {
        return ObjectWrapper.wrap(this.zzfml);
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final zzaba zzqo() {
        return this.zzfjl.zzqo();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final IObjectWrapper zzqp() {
        return this.zzfjl.zzqp();
    }

    @Override // com.google.android.gms.internal.ads.zzaca
    public final zzabi zzqq() {
        return this.zzfjl.zzqq();
    }
}
