package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: loaded from: classes.dex */
final class zzchu implements zzbsu {
    private final zzaxl zzblh;
    private final zzcvr zzflx;
    private final zzddi<zzbru> zzfyq;
    private final zzbbw zzfyr;
    private final Context zzlk;

    private zzchu(Context context, zzaxl zzaxlVar, zzddi<zzbru> zzddiVar, zzcvr zzcvrVar, zzbbw zzbbwVar) {
        this.zzlk = context;
        this.zzblh = zzaxlVar;
        this.zzfyq = zzddiVar;
        this.zzflx = zzcvrVar;
        this.zzfyr = zzbbwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final void zza(boolean z, Context context) {
        zzbru zzbruVar = (zzbru) zzdcy.zzc(this.zzfyq);
        this.zzfyr.zzas(true);
        com.google.android.gms.ads.internal.zzq.zzkj();
        com.google.android.gms.ads.internal.zzg zzgVar = new com.google.android.gms.ads.internal.zzg(false, zzaul.zzbb(this.zzlk), false, 0.0f, -1, z, this.zzflx.zzgjl, false);
        com.google.android.gms.ads.internal.zzq.zzki();
        zzbsm zzbsmVarZzadj = zzbruVar.zzadj();
        zzbbw zzbbwVar = this.zzfyr;
        zzcvr zzcvrVar = this.zzflx;
        int i2 = zzcvrVar.zzgjm;
        zzaxl zzaxlVar = this.zzblh;
        String str = zzcvrVar.zzdkv;
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((zztp) null, zzbsmVarZzadj, (com.google.android.gms.ads.internal.overlay.zzt) null, zzbbwVar, i2, zzaxlVar, str, zzgVar, zzcvvVar.zzdhz, zzcvvVar.zzdib), true);
    }
}
