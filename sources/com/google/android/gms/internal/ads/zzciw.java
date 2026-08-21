package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzciw<AdT> implements zzcga<AdT> {
    private static Bundle zzm(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    protected abstract zzddi<AdT> zza(zzcwe zzcweVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        return !TextUtils.isEmpty(zzcvrVar.zzgjh.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<AdT> zzb(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        String strOptString = zzcvrVar.zzgjh.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzcwe zzcweVar = zzcvzVar.zzgka.zzfga;
        zzcwg zzcwgVarZzgf = new zzcwg().zzg(zzcweVar.zzgkg).zzd(zzcweVar.zzbll).zzc(zzcweVar.zzgke).zzgf(zzcweVar.zzgkh).zzc(zzcweVar.zzgkf).zzb(zzcweVar.zzgki).zzc(zzcweVar.zzgkj).zzb(zzcweVar.zzdeh).zzb(zzcweVar.zzgkk).zzb(zzcweVar.zzgkl).zzgf(strOptString);
        Bundle bundleZzm = zzm(zzcweVar.zzgkg.zzcce);
        Bundle bundleZzm2 = zzm(bundleZzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        bundleZzm2.putInt("gw", 1);
        String strOptString2 = zzcvrVar.zzgjh.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundleZzm2.putString("mad_hac", strOptString2);
        }
        String strOptString3 = zzcvrVar.zzgjh.optString("adJson", null);
        if (strOptString3 != null) {
            bundleZzm2.putString("_ad", strOptString3);
        }
        bundleZzm2.putBoolean("_noRefresh", true);
        Iterator<String> itKeys = zzcvrVar.zzgjk.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = zzcvrVar.zzgjk.optString(next, null);
            if (next != null) {
                bundleZzm2.putString(next, strOptString4);
            }
        }
        bundleZzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundleZzm2);
        zztx zztxVar = zzcweVar.zzgkg;
        zzcwe zzcweVarZzane = zzcwgVarZzgf.zzg(new zztx(zztxVar.versionCode, zztxVar.zzcbx, bundleZzm2, zztxVar.zzcby, zztxVar.zzcbz, zztxVar.zzcca, zztxVar.zzabj, zztxVar.zzbkg, zztxVar.zzccb, zztxVar.zzccc, zztxVar.zzng, zztxVar.zzccd, bundleZzm, zztxVar.zzccf, zztxVar.zzccg, zztxVar.zzcch, zztxVar.zzcci, zztxVar.zzccj, zztxVar.zzcck, zztxVar.zzabk, zztxVar.zzabl)).zzane();
        Bundle bundle = new Bundle();
        zzcvt zzcvtVar = zzcvzVar.zzgkb.zzgjy;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzcvtVar.zzdcb));
        bundle2.putInt("refresh_interval", zzcvtVar.zzgju);
        bundle2.putString("gws_query_id", zzcvtVar.zzbzn);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzcvzVar.zzgka.zzfga.zzgkh;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzcvrVar.zzdcu);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzcvrVar.zzdby));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzcvrVar.zzdbz));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzcvrVar.zzdks));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzcvrVar.zzgjc));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzcvrVar.zzdlf));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzcvrVar.zzdlg));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzcvrVar.zzgjb));
        bundle3.putString(FirebaseAnalytics.Param.TRANSACTION_ID, zzcvrVar.zzddf);
        bundle3.putString("valid_from_timestamp", zzcvrVar.zzddg);
        bundle3.putBoolean("is_closable_area_disabled", zzcvrVar.zzble);
        if (zzcvrVar.zzdle != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzcvrVar.zzdle.zzdnv);
            bundle4.putString("rb_type", zzcvrVar.zzdle.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zza(zzcweVarZzane, bundle);
    }
}
