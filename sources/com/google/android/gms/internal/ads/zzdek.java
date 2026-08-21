package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdjn;
import com.google.android.gms.internal.ads.zzdjx;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzdek implements zzdeo {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final InputStream zzbey;
    private boolean zzgsk = false;
    private final JSONObject zzgsj = null;

    private zzdek(InputStream inputStream) {
        this.zzbey = inputStream;
    }

    public static zzdeo zzf(InputStream inputStream) {
        return new zzdek(inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzdeo
    public final zzdjx zzapn() throws IOException {
        zzdjr zzdjrVar;
        zzdkj zzdkjVar;
        zzdjn.zzb zzbVar;
        try {
            JSONObject jSONObject = new JSONObject(new String(zzdfb.zzg(this.zzbey), UTF_8));
            if (!jSONObject.has("key") || jSONObject.getJSONArray("key").length() == 0) {
                throw new JSONException("invalid keyset");
            }
            zzdjx.zzb zzbVarZzaul = zzdjx.zzaul();
            if (jSONObject.has("primaryKeyId")) {
                zzbVarZzaul.zzet(jSONObject.getInt("primaryKeyId"));
            }
            JSONArray jSONArray = jSONObject.getJSONArray("key");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                if (!jSONObject2.has("keyData") || !jSONObject2.has("status") || !jSONObject2.has("keyId") || !jSONObject2.has("outputPrefixType")) {
                    throw new JSONException("invalid key");
                }
                zzdjx.zza.C0157zza c0157zzaZzauq = zzdjx.zza.zzauq();
                String string = jSONObject2.getString("status");
                if (string.equals("ENABLED")) {
                    zzdjrVar = zzdjr.ENABLED;
                } else {
                    if (!string.equals("DISABLED")) {
                        String strValueOf = String.valueOf(string);
                        throw new JSONException(strValueOf.length() != 0 ? "unknown status: ".concat(strValueOf) : new String("unknown status: "));
                    }
                    zzdjrVar = zzdjr.DISABLED;
                }
                zzdjx.zza.C0157zza c0157zzaZzeu = c0157zzaZzauq.zzb(zzdjrVar).zzeu(jSONObject2.getInt("keyId"));
                String string2 = jSONObject2.getString("outputPrefixType");
                if (string2.equals("TINK")) {
                    zzdkjVar = zzdkj.TINK;
                } else if (string2.equals("RAW")) {
                    zzdkjVar = zzdkj.RAW;
                } else if (string2.equals("LEGACY")) {
                    zzdkjVar = zzdkj.LEGACY;
                } else {
                    if (!string2.equals("CRUNCHY")) {
                        String strValueOf2 = String.valueOf(string2);
                        throw new JSONException(strValueOf2.length() != 0 ? "unknown output prefix type: ".concat(strValueOf2) : new String("unknown output prefix type: "));
                    }
                    zzdkjVar = zzdkj.CRUNCHY;
                }
                zzdjx.zza.C0157zza c0157zzaZzb = c0157zzaZzeu.zzb(zzdkjVar);
                JSONObject jSONObject3 = jSONObject2.getJSONObject("keyData");
                if (!jSONObject3.has("typeUrl") || !jSONObject3.has("value") || !jSONObject3.has("keyMaterialType")) {
                    throw new JSONException("invalid keyData");
                }
                zzdjn.zza zzaVarZzbo = zzdjn.zzatx().zzgw(jSONObject3.getString("typeUrl")).zzbo(zzdpm.zzy(zzdmm.decode(jSONObject3.getString("value"))));
                String string3 = jSONObject3.getString("keyMaterialType");
                if (string3.equals("SYMMETRIC")) {
                    zzbVar = zzdjn.zzb.SYMMETRIC;
                } else if (string3.equals("ASYMMETRIC_PRIVATE")) {
                    zzbVar = zzdjn.zzb.ASYMMETRIC_PRIVATE;
                } else if (string3.equals("ASYMMETRIC_PUBLIC")) {
                    zzbVar = zzdjn.zzb.ASYMMETRIC_PUBLIC;
                } else {
                    if (!string3.equals("REMOTE")) {
                        String strValueOf3 = String.valueOf(string3);
                        throw new JSONException(strValueOf3.length() != 0 ? "unknown key material type: ".concat(strValueOf3) : new String("unknown key material type: "));
                    }
                    zzbVar = zzdjn.zzb.REMOTE;
                }
                zzbVarZzaul.zzb((zzdjx.zza) ((zzdqw) c0157zzaZzb.zzb((zzdjn) ((zzdqw) zzaVarZzbo.zzb(zzbVar).zzazr())).zzazr()));
            }
            return (zzdjx) ((zzdqw) zzbVarZzaul.zzazr());
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }
}
