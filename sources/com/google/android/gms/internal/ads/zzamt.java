package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import b.c.b.a;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes.dex */
public final class zzamt implements MediationInterstitialAdapter {
    private Uri uri;
    private Activity zzdff;
    private MediationInterstitialListener zzdfg;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzaxi.zzdv("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzaxi.zzdv("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzaxi.zzdv("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdfg = mediationInterstitialListener;
        if (this.zzdfg == null) {
            zzaxi.zzeu("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            zzaxi.zzeu("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzdfg.onAdFailedToLoad(this, 0);
            return;
        }
        if (!(PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzaal.zzk(context))) {
            zzaxi.zzeu("Default browser does not support custom tabs. Bailing out.");
            this.zzdfg.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            zzaxi.zzeu("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.zzdfg.onAdFailedToLoad(this, 0);
        } else {
            this.zzdff = (Activity) context;
            this.uri = Uri.parse(string);
            this.zzdfg.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        a aVarA = new a.C0097a().a();
        aVarA.f2247a.setData(this.uri);
        zzaul.zzdsu.post(new zzamv(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzd(aVarA.f2247a), null, new zzams(this), null, new zzaxl(0, 0, false))));
        com.google.android.gms.ads.internal.zzq.zzkn().zzud();
    }
}
