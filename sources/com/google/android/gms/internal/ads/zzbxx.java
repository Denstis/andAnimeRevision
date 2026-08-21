package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxx extends zzabz {
    private final String zzffi;
    private final zzbur zzfjl;
    private final zzbuj zzfml;

    public zzbxx(String str, zzbuj zzbujVar, zzbur zzburVar) {
        this.zzffi = str;
        this.zzfml = zzbujVar;
        this.zzfjl = zzburVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void destroy() {
        this.zzfml.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getBody() {
        return this.zzfjl.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getCallToAction() {
        return this.zzfjl.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final Bundle getExtras() {
        return this.zzfjl.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getHeadline() {
        return this.zzfjl.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final List<?> getImages() {
        return this.zzfjl.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getMediationAdapterClassName() {
        return this.zzffi;
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getPrice() {
        return this.zzfjl.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final double getStarRating() {
        return this.zzfjl.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final String getStore() {
        return this.zzfjl.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final zzwr getVideoController() {
        return this.zzfjl.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void performClick(Bundle bundle) {
        this.zzfml.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final boolean recordImpression(Bundle bundle) {
        return this.zzfml.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void reportTouchEvent(Bundle bundle) {
        this.zzfml.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final IObjectWrapper zzqm() {
        return ObjectWrapper.wrap(this.zzfml);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final zzabi zzqn() {
        return this.zzfjl.zzqn();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final zzaba zzqo() {
        return this.zzfjl.zzqo();
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final IObjectWrapper zzqp() {
        return this.zzfjl.zzqp();
    }
}
