package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaah;
import com.google.android.gms.internal.ads.zzant;
import com.google.android.gms.internal.ads.zzanz;
import com.google.android.gms.internal.ads.zzaqi;
import com.google.android.gms.internal.ads.zzawy;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzaxn;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzdi;
import com.google.android.gms.internal.ads.zzqx;
import com.google.android.gms.internal.ads.zztx;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzuf;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzuy;
import com.google.android.gms.internal.ads.zzvk;
import com.google.android.gms.internal.ads.zzvo;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzvz;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzwx;
import com.google.android.gms.internal.ads.zzyj;
import com.google.android.gms.internal.ads.zzza;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class zzl extends zzvk {
    private final zzaxl zzblk;
    private final zzua zzbll;
    private final Future<zzdf> zzblm = zzaxn.zzdwi.submit(new zzm(this));
    private final zzo zzbln;
    private WebView zzblo;
    private zzuy zzblp;
    private zzdf zzblq;
    private AsyncTask<Void, Void, String> zzblr;
    private final Context zzlk;

    public zzl(Context context, zzua zzuaVar, String str, zzaxl zzaxlVar) {
        this.zzlk = context;
        this.zzblk = zzaxlVar;
        this.zzbll = zzuaVar;
        this.zzblo = new WebView(this.zzlk);
        this.zzbln = new zzo(str);
        zzbl(0);
        this.zzblo.setVerticalScrollBarEnabled(false);
        this.zzblo.getSettings().setJavaScriptEnabled(true);
        this.zzblo.setWebViewClient(new zzk(this));
        this.zzblo.setOnTouchListener(new zzn(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzbo(String str) {
        if (this.zzblq == null) {
            return str;
        }
        Uri uriZzb = Uri.parse(str);
        try {
            uriZzb = this.zzblq.zzb(uriZzb, this.zzlk);
        } catch (zzdi e2) {
            zzaxi.zzd("Unable to process ad data", e2);
        }
        return uriZzb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbp(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.zzlk.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzblr.cancel(true);
        this.zzblm.cancel(true);
        this.zzblo.destroy();
        this.zzblo = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzwr getVideoController() {
        return null;
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
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void setUserId(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void showInterstitial() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaah zzaahVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzant zzantVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzanz zzanzVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzaqi zzaqiVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzqx zzqxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzua zzuaVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuf zzufVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzux zzuxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzuy zzuyVar) {
        this.zzblp = zzuyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvo zzvoVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvt zzvtVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzvz zzvzVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzwx zzwxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zza(zzyj zzyjVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final boolean zza(zztx zztxVar) {
        Preconditions.checkNotNull(this.zzblo, "This Search Ad has already been torn down");
        this.zzbln.zza(zztxVar, this.zzblk);
        this.zzblr = new zzp(this, null).execute(new Void[0]);
        return true;
    }

    @VisibleForTesting
    final void zzbl(int i2) {
        if (this.zzblo == null) {
            return;
        }
        this.zzblo.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzbm(String str) {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    final int zzbn(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzuv.zzoj();
            return zzawy.zza(this.zzlk, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final IObjectWrapper zzjr() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzblo);
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final void zzjs() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzua zzjt() {
        return this.zzbll;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final String zzju() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzvt zzjv() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.ads.zzvl
    public final zzuy zzjw() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @VisibleForTesting
    final String zzjx() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzuv.zzon().zzd(zzza.zzcpd));
        builder.appendQueryParameter(SearchIntents.EXTRA_QUERY, this.zzbln.getQuery());
        builder.appendQueryParameter("pubId", this.zzbln.zzka());
        Map<String, String> mapZzkb = this.zzbln.zzkb();
        for (String str : mapZzkb.keySet()) {
            builder.appendQueryParameter(str, mapZzkb.get(str));
        }
        Uri uriBuild = builder.build();
        zzdf zzdfVar = this.zzblq;
        if (zzdfVar != null) {
            try {
                uriBuild = zzdfVar.zza(uriBuild, this.zzlk);
            } catch (zzdi e2) {
                zzaxi.zzd("Unable to process ad data", e2);
            }
        }
        String strZzjy = zzjy();
        String encodedQuery = uriBuild.getEncodedQuery();
        StringBuilder sb = new StringBuilder(String.valueOf(strZzjy).length() + 1 + String.valueOf(encodedQuery).length());
        sb.append(strZzjy);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    @VisibleForTesting
    final String zzjy() {
        String strZzjz = this.zzbln.zzjz();
        if (TextUtils.isEmpty(strZzjz)) {
            strZzjz = "www.google.com";
        }
        String str = (String) zzuv.zzon().zzd(zzza.zzcpd);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzjz).length() + 8 + String.valueOf(str).length());
        sb.append("https://");
        sb.append(strZzjz);
        sb.append(str);
        return sb.toString();
    }
}
