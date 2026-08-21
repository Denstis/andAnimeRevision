package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbvr {
    private final zzbuz zzfkp;
    private final zzbyh zzfnd;
    private final zzbzl zzfnm;
    private final zzbhx zzfnn;
    private final Context zzlk;

    public zzbvr(Context context, zzbzl zzbzlVar, zzbyh zzbyhVar, zzbhx zzbhxVar, zzbuz zzbuzVar) {
        this.zzlk = context;
        this.zzfnm = zzbzlVar;
        this.zzfnd = zzbyhVar;
        this.zzfnn = zzbhxVar;
        this.zzfkp = zzbuzVar;
    }

    final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzaxi.zzet("Hiding native ads overlay.");
        zzbbwVar.getView().setVisibility(8);
        this.zzfnn.zzax(false);
    }

    final /* synthetic */ void zza(Map map, boolean z) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "htmlLoaded");
        map2.put(TtmlNode.ATTR_ID, (String) map.get(TtmlNode.ATTR_ID));
        this.zzfnd.zza("sendMessageToNativeJs", map2);
    }

    public final View zzaiy() {
        zzbbw zzbbwVarZza = this.zzfnm.zza(zzua.zzg(this.zzlk), false);
        zzbbwVarZza.getView().setVisibility(8);
        zzbbwVarZza.zza("/sendMessageToSdk", new zzaer(this) { // from class: com.google.android.gms.internal.ads.zzbvq
            private final zzbvr zzfnl;

            {
                this.zzfnl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, Map map) {
                this.zzfnl.zzd((zzbbw) obj, map);
            }
        });
        zzbbwVarZza.zza("/adMuted", new zzaer(this) { // from class: com.google.android.gms.internal.ads.zzbvt
            private final zzbvr zzfnl;

            {
                this.zzfnl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, Map map) {
                this.zzfnl.zzc((zzbbw) obj, map);
            }
        });
        this.zzfnd.zza(new WeakReference(zzbbwVarZza), "/loadHtml", new zzaer(this) { // from class: com.google.android.gms.internal.ads.zzbvs
            private final zzbvr zzfnl;

            {
                this.zzfnl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, final Map map) {
                final zzbvr zzbvrVar = this.zzfnl;
                zzbbw zzbbwVar = (zzbbw) obj;
                zzbbwVar.zzzp().zza(new zzbdf(zzbvrVar, map) { // from class: com.google.android.gms.internal.ads.zzbvx
                    private final Map zzdwd;
                    private final zzbvr zzfnl;

                    {
                        this.zzfnl = zzbvrVar;
                        this.zzdwd = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbdf
                    public final void zzad(boolean z) {
                        this.zzfnl.zza(this.zzdwd, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzbbwVar.loadData(str, "text/html", C.UTF8_NAME);
                } else {
                    zzbbwVar.loadDataWithBaseURL(str2, str, "text/html", C.UTF8_NAME, null);
                }
            }
        });
        this.zzfnd.zza(new WeakReference(zzbbwVarZza), "/showOverlay", new zzaer(this) { // from class: com.google.android.gms.internal.ads.zzbvv
            private final zzbvr zzfnl;

            {
                this.zzfnl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, Map map) {
                this.zzfnl.zzb((zzbbw) obj, map);
            }
        });
        this.zzfnd.zza(new WeakReference(zzbbwVarZza), "/hideOverlay", new zzaer(this) { // from class: com.google.android.gms.internal.ads.zzbvu
            private final zzbvr zzfnl;

            {
                this.zzfnl = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, Map map) {
                this.zzfnl.zza((zzbbw) obj, map);
            }
        });
        return zzbbwVarZza.getView();
    }

    final /* synthetic */ void zzb(zzbbw zzbbwVar, Map map) {
        zzaxi.zzet("Showing native ads overlay.");
        zzbbwVar.getView().setVisibility(0);
        this.zzfnn.zzax(true);
    }

    final /* synthetic */ void zzc(zzbbw zzbbwVar, Map map) {
        this.zzfkp.zzahe();
    }

    final /* synthetic */ void zzd(zzbbw zzbbwVar, Map map) {
        this.zzfnd.zza("sendMessageToNativeJs", (Map<String, ?>) map);
    }
}
