package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzyt extends zzyp<Float> {
    zzyt(int i2, String str, Float f2) {
        super(i2, str, f2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Float zza(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(getKey(), zzpq().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Float zza(Bundle bundle) {
        String strValueOf = String.valueOf(getKey());
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzpq();
        }
        String strValueOf2 = String.valueOf(getKey());
        return Float.valueOf(bundle.getFloat(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Float zza(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(getKey(), zzpq().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Float f2) {
        editor.putFloat(getKey(), f2.floatValue());
    }
}
