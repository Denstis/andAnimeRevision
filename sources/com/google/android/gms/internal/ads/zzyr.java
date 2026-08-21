package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzyr extends zzyp<Integer> {
    zzyr(int i2, String str, Integer num) {
        super(i2, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Integer zza(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(getKey(), zzpq().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Integer zza(Bundle bundle) {
        String strValueOf = String.valueOf(getKey());
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzpq();
        }
        String strValueOf2 = String.valueOf(getKey());
        return Integer.valueOf(bundle.getInt(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Integer zza(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(getKey(), zzpq().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(getKey(), num.intValue());
    }
}
