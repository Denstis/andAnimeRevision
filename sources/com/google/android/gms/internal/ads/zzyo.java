package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzyo extends zzyp<Boolean> {
    zzyo(int i2, String str, Boolean bool) {
        super(i2, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Boolean zza(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(getKey(), zzpq().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Boolean zza(Bundle bundle) {
        String strValueOf = String.valueOf(getKey());
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzpq();
        }
        String strValueOf2 = String.valueOf(getKey());
        return Boolean.valueOf(bundle.getBoolean(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Boolean zza(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(getKey(), zzpq().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(getKey(), bool.booleanValue());
    }
}
