package com.google.android.gms.ads.consent;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzzl;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ConsentSdkUtil {

    public interface ConsentInformationCallback {
        void onFailure(int i2);

        void onSuccess(String str);
    }

    private ConsentSdkUtil() {
    }

    @KeepForSdk
    public static void requestConsentInformation(Context context, Map<String, String> map, ConsentInformationCallback consentInformationCallback) {
        zzzl.zzj(context.getApplicationContext()).zza(map, consentInformationCallback);
    }
}
