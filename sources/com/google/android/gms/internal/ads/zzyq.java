package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzyq extends zzyp<Long> {
    zzyq(int i2, String str, Long l) {
        super(i2, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Long zza(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(getKey(), zzpq().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Long zza(Bundle bundle) {
        String strValueOf = String.valueOf(getKey());
        if (!bundle.containsKey(strValueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzpq();
        }
        String strValueOf2 = String.valueOf(getKey());
        return Long.valueOf(bundle.getLong(strValueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(strValueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ Long zza(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(getKey(), zzpq().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Long l) {
        editor.putLong(getKey(), l.longValue());
    }
}
