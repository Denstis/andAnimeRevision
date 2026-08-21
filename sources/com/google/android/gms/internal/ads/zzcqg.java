package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqg implements zzcru<zzcqd> {
    private final PackageInfo zzdiv;
    private final zzaui zzdrp;
    private final zzcwe zzfga;
    private final zzddl zzfoa;

    public zzcqg(zzddl zzddlVar, zzcwe zzcweVar, PackageInfo packageInfo, zzaui zzauiVar) {
        this.zzfoa = zzddlVar;
        this.zzfga = zzcweVar;
        this.zzdiv = packageInfo;
        this.zzdrp = zzauiVar;
    }

    final /* synthetic */ void zza(ArrayList arrayList, Bundle bundle) {
        JSONArray jSONArrayOptJSONArray;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.zzfga.zzgkj);
        String str = "landscape";
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcog)).booleanValue() && this.zzfga.zzdeh.versionCode > 3) {
            bundle.putBoolean("enable_native_media_orientation", true);
            int i2 = this.zzfga.zzdeh.zzbjw;
            String str2 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "unknown" : "square" : "portrait" : "landscape" : "any";
            if (!"unknown".equals(str2)) {
                bundle.putString("native_media_orientation", str2);
            }
        }
        int i3 = this.zzfga.zzdeh.zzbjv;
        if (i3 == 0) {
            str = "any";
        } else if (i3 == 1) {
            str = "portrait";
        } else if (i3 != 2) {
            str = "unknown";
        }
        if (!"unknown".equals(str)) {
            bundle.putString("native_image_orientation", str);
        }
        bundle.putBoolean("native_multiple_images", this.zzfga.zzdeh.zzbjx);
        bundle.putBoolean("use_custom_mute", this.zzfga.zzdeh.zzbka);
        PackageInfo packageInfo = this.zzdiv;
        int i4 = packageInfo == null ? 0 : packageInfo.versionCode;
        if (i4 > this.zzdrp.zzvd()) {
            this.zzdrp.zzvj();
            this.zzdrp.zzcm(i4);
        }
        JSONObject jSONObjectZzvi = this.zzdrp.zzvi();
        String string = (jSONObjectZzvi == null || (jSONArrayOptJSONArray = jSONObjectZzvi.optJSONArray(this.zzfga.zzgkh)) == null) ? null : jSONArrayOptJSONArray.toString();
        if (!TextUtils.isEmpty(string)) {
            bundle.putString("native_advanced_settings", string);
        }
        int i5 = this.zzfga.zzgdf;
        if (i5 > 1) {
            bundle.putInt("max_num_ads", i5);
        }
        zzagd zzagdVar = this.zzfga.zzdkl;
        if (zzagdVar != null) {
            int i6 = zzagdVar.zzcyt;
            String str3 = "l";
            if (i6 != 1) {
                if (i6 != 2) {
                    StringBuilder sb = new StringBuilder(52);
                    sb.append("Instream ad video aspect ratio ");
                    sb.append(i6);
                    sb.append(" is wrong.");
                    zzaxi.zzes(sb.toString());
                } else {
                    str3 = TtmlNode.TAG_P;
                }
            }
            bundle.putString("ia_var", str3);
            bundle.putBoolean("instr", true);
        }
        if (this.zzfga.zzana() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcqd> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcqf
            private final zzcqg zzgfj;

            {
                this.zzgfj = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgfj.zzamc();
            }
        });
    }

    final /* synthetic */ zzcqd zzamc() {
        final ArrayList<String> arrayList = this.zzfga.zzgki;
        return arrayList == null ? zzcqi.zzgfk : arrayList.isEmpty() ? zzcqh.zzgfk : new zzcqd(this, arrayList) { // from class: com.google.android.gms.internal.ads.zzcqk
            private final zzcqg zzgfj;
            private final ArrayList zzgfl;

            {
                this.zzgfj = this;
                this.zzgfl = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcrr
            public final void zzr(Bundle bundle) {
                this.zzgfj.zza(this.zzgfl, bundle);
            }
        };
    }
}
