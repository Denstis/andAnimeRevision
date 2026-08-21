package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzys extends zzyp<String> {
    zzys(int i2, String str, String str2) {
        super(i2, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ String zza(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(getKey(), zzpq());
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ String zza(Bundle bundle) {
        String strValueOf = String.valueOf(getKey());
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzpq();
        }
        String strValueOf2 = String.valueOf(getKey());
        return bundle.getString(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ String zza(JSONObject jSONObject) {
        return jSONObject.optString(getKey(), zzpq());
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, String str) {
        editor.putString(getKey(), str);
    }
}
