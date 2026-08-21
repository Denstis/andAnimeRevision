package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbct;
import com.google.android.gms.internal.ads.zzbcw;
import com.google.android.gms.internal.ads.zzbda;
import com.google.android.gms.internal.ads.zzbdb;
import com.google.android.gms.internal.ads.zzbdd;
import java.net.URISyntaxException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaev<T extends zzbct & zzbcw & zzbda & zzbdb & zzbdd> implements zzaer<T> {
    private final com.google.android.gms.ads.internal.zzc zzcyb;
    private final zzamz zzcyc;

    public zzaev(com.google.android.gms.ads.internal.zzc zzcVar, zzamz zzamzVar) {
        this.zzcyb = zzcVar;
        this.zzcyc = zzamzVar;
    }

    @VisibleForTesting
    static String zza(Context context, zzdf zzdfVar, String str, View view, Activity activity) {
        if (zzdfVar == null) {
            return str;
        }
        try {
            Uri uriZza = Uri.parse(str);
            if (zzdfVar.zzd(uriZza)) {
                uriZza = zzdfVar.zza(uriZza, context, view, activity);
            }
            return uriZza.toString();
        } catch (zzdi unused) {
            return str;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "OpenGmsgHandler.maybeAddClickSignalsToUrl");
            return str;
        }
    }

    private static boolean zzd(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zze(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if (TtmlNode.TAG_P.equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.zzq.zzkl();
            return 6;
        }
        if ("c".equalsIgnoreCase(str)) {
            return com.google.android.gms.ads.internal.zzq.zzkl().zzvq();
        }
        return -1;
    }

    private final void zzu(boolean z) {
        zzamz zzamzVar = this.zzcyc;
        if (zzamzVar != null) {
            zzamzVar.zzv(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbct zzbctVar = (zzbct) obj;
        String strZzd = zzate.zzd((String) map.get("u"), zzbctVar.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            zzaxi.zzeu("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzc zzcVar = this.zzcyb;
        if (zzcVar != null && !zzcVar.zzjk()) {
            this.zzcyb.zzbl(strZzd);
            return;
        }
        if ("expand".equalsIgnoreCase(str)) {
            if (((zzbcw) zzbctVar).zzzu()) {
                zzaxi.zzeu("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzu(false);
                ((zzbda) zzbctVar).zzb(zzd(map), zze(map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            zzu(false);
            zzbda zzbdaVar = (zzbda) zzbctVar;
            boolean zZzd = zzd(map);
            if (strZzd != null) {
                zzbdaVar.zza(zZzd, zze(map), strZzd);
                return;
            } else {
                zzbdaVar.zza(zZzd, zze(map), (String) map.get("html"), (String) map.get("baseurl"));
                return;
            }
        }
        if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            zzu(true);
            if (TextUtils.isEmpty(strZzd)) {
                zzaxi.zzeu("Destination url cannot be empty.");
                return;
            }
            try {
                ((zzbda) zzbctVar).zza(new com.google.android.gms.ads.internal.overlay.zzd(new zzaeu(zzbctVar.getContext(), ((zzbdb) zzbctVar).zzzs(), ((zzbdd) zzbctVar).getView()).zzc(map)));
                return;
            } catch (ActivityNotFoundException e2) {
                zzaxi.zzeu(e2.getMessage());
                return;
            }
        }
        zzu(true);
        String str2 = (String) map.get("intent_url");
        Intent uri = null;
        if (!TextUtils.isEmpty(str2)) {
            try {
                uri = Intent.parseUri(str2, 0);
            } catch (URISyntaxException e3) {
                String strValueOf = String.valueOf(str2);
                zzaxi.zzc(strValueOf.length() != 0 ? "Error parsing the url: ".concat(strValueOf) : new String("Error parsing the url: "), e3);
            }
        }
        if (uri != null && uri.getData() != null) {
            Uri data = uri.getData();
            String string = data.toString();
            if (!TextUtils.isEmpty(string)) {
                try {
                    string = zza(zzbctVar.getContext(), ((zzbdb) zzbctVar).zzzs(), string, ((zzbdd) zzbctVar).getView(), zzbctVar.zzxn());
                } catch (Exception e4) {
                    zzaxi.zzc("Error occurred while adding signals.", e4);
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e4, "OpenGmsgHandler.onGmsg");
                }
                try {
                    data = Uri.parse(string);
                } catch (Exception e5) {
                    String strValueOf2 = String.valueOf(string);
                    zzaxi.zzc(strValueOf2.length() != 0 ? "Error parsing the uri: ".concat(strValueOf2) : new String("Error parsing the uri: "), e5);
                    com.google.android.gms.ads.internal.zzq.zzkn().zza(e5, "OpenGmsgHandler.onGmsg");
                }
            }
            uri.setData(data);
        }
        if (uri != null) {
            ((zzbda) zzbctVar).zza(new com.google.android.gms.ads.internal.overlay.zzd(uri));
            return;
        }
        if (!TextUtils.isEmpty(strZzd)) {
            strZzd = zza(zzbctVar.getContext(), ((zzbdb) zzbctVar).zzzs(), strZzd, ((zzbdd) zzbctVar).getView(), zzbctVar.zzxn());
        }
        ((zzbda) zzbctVar).zza(new com.google.android.gms.ads.internal.overlay.zzd((String) map.get("i"), strZzd, (String) map.get("m"), (String) map.get(TtmlNode.TAG_P), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
    }
}
