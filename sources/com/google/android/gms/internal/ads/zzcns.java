package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class zzcns implements zzcrr<Bundle> {
    private final zzcwe zzfga;

    public zzcns(zzcwe zzcweVar) {
        Preconditions.checkNotNull(zzcweVar, "the targeting must not be null");
        this.zzfga = zzcweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcwe zzcweVar = this.zzfga;
        zztx zztxVar = zzcweVar.zzgkg;
        bundle2.putString("slotname", zzcweVar.zzgkh);
        if (this.zzfga.zzgkn.contains("new_rewarded")) {
            bundle2.putBoolean("is_new_rewarded", true);
        }
        zzcwk.zza(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zztxVar.zzcbx)), zztxVar.zzcbx != -1);
        zzcwk.zza(bundle2, "extras", zztxVar.extras);
        zzcwk.zza(bundle2, "cust_gender", Integer.valueOf(zztxVar.zzcby), zztxVar.zzcby != -1);
        zzcwk.zza(bundle2, "kw", zztxVar.zzcbz);
        zzcwk.zza(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zztxVar.zzabj), zztxVar.zzabj != -1);
        boolean z = zztxVar.zzcca;
        if (z) {
            bundle2.putBoolean("test_request", z);
        }
        zzcwk.zza(bundle2, "d_imp_hdr", (Integer) 1, zztxVar.versionCode >= 2 && zztxVar.zzbkg);
        String str = zztxVar.zzccb;
        zzcwk.zza(bundle2, "ppid", str, zztxVar.versionCode >= 2 && !TextUtils.isEmpty(str));
        Location location = zztxVar.zzng;
        if (location != null) {
            Float fValueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long lValueOf = Long.valueOf(location.getTime() * 1000);
            Long lValueOf2 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long lValueOf3 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", fValueOf.floatValue());
            bundle3.putLong("lat", lValueOf2.longValue());
            bundle3.putLong("long", lValueOf3.longValue());
            bundle3.putLong("time", lValueOf.longValue());
            bundle2.putBundle("uule", bundle3);
        }
        zzcwk.zza(bundle2, ImagesContract.URL, zztxVar.zzccd);
        zzcwk.zza(bundle2, "custom_targeting", zztxVar.zzccf);
        zzcwk.zza(bundle2, "category_exclusions", zztxVar.zzccg);
        zzcwk.zza(bundle2, "request_agent", zztxVar.zzcch);
        zzcwk.zza(bundle2, "request_pkg", zztxVar.zzcci);
        zzcwk.zza(bundle2, "is_designed_for_families", Boolean.valueOf(zztxVar.zzccj), zztxVar.versionCode >= 7);
        if (zztxVar.versionCode >= 8) {
            zzcwk.zza(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zztxVar.zzabk), zztxVar.zzabk != -1);
            zzcwk.zza(bundle2, "max_ad_content_rating", zztxVar.zzabl);
        }
    }
}
