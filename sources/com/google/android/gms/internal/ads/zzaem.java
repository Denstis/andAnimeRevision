package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzaem implements zzaer<zzbbw> {
    zzaem() {
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzbbw zzbbwVar2 = zzbbwVar;
        if (map.keySet().contains(TtmlNode.START)) {
            zzbbwVar2.zzzp().zzzc();
        } else if (map.keySet().contains("stop")) {
            zzbbwVar2.zzzp().zzzd();
        } else if (map.keySet().contains("cancel")) {
            zzbbwVar2.zzzp().zzze();
        }
    }
}
