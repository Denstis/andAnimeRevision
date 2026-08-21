package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzais {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    public static final zzait<JSONObject> zzday = new zzaiu();
    public static final zzair<InputStream> zzdaz = zzaiv.zzdba;

    static final /* synthetic */ InputStream zze(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
