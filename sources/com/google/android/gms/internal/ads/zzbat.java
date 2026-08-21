package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbat implements zzaer<zzazj> {
    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzazj zzazjVar, Map map) {
        zzazj zzazjVar2 = zzazjVar;
        zzbco zzbcoVarZzxl = zzazjVar2.zzxl();
        if (zzbcoVarZzxl == null) {
            try {
                zzbco zzbcoVar = new zzbco(zzazjVar2, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzazjVar2.zza(zzbcoVar);
                zzbcoVarZzxl = zzbcoVar;
            } catch (NullPointerException | NumberFormatException e2) {
                zzaxi.zzc("Unable to parse videoMeta message.", e2);
                com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float f2 = Float.parseFloat((String) map.get("duration"));
        boolean zEquals = "1".equals(map.get("muted"));
        float f3 = Float.parseFloat((String) map.get("currentTime"));
        int i2 = Integer.parseInt((String) map.get("playbackState"));
        int i3 = (i2 < 0 || 3 < i2) ? 0 : i2;
        String str = (String) map.get("aspectRatio");
        float f4 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzaxi.isLoggable(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(f3);
            sb.append(" , duration : ");
            sb.append(f2);
            sb.append(" , isMuted : ");
            sb.append(zEquals);
            sb.append(" , playbackState : ");
            sb.append(i3);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            zzaxi.zzdv(sb.toString());
        }
        zzbcoVarZzxl.zza(f3, f2, i3, zEquals, f4);
    }
}
