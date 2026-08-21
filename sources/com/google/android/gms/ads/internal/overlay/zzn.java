package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.exoplayer2.C;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zztp;

/* JADX INFO: loaded from: classes.dex */
public final class zzn {
    public static void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzdid == 4 && adOverlayInfoParcel.zzdhy == null) {
            zztp zztpVar = adOverlayInfoParcel.zzcbs;
            if (zztpVar != null) {
                zztpVar.onAdClicked();
            }
            com.google.android.gms.ads.internal.zzq.zzkh();
            zzb.zza(context, adOverlayInfoParcel.zzdhx, adOverlayInfoParcel.zzdic);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzblk.zzdwg);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zza(context, intent);
    }
}
