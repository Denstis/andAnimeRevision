package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.ads.zzauc;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zzaur;

/* JADX INFO: loaded from: classes.dex */
final class zzl extends zzauc {
    final /* synthetic */ zzc zzdhw;

    private zzl(zzc zzcVar) {
        this.zzdhw = zzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauc
    public final void zzsx() {
        Bitmap bitmapZza = com.google.android.gms.ads.internal.zzq.zzlc().zza(Integer.valueOf(this.zzdhw.zzdgv.zzdif.zzblb));
        if (bitmapZza != null) {
            zzaur zzaurVarZzkl = com.google.android.gms.ads.internal.zzq.zzkl();
            zzc zzcVar = this.zzdhw;
            Activity activity = zzcVar.zzzr;
            com.google.android.gms.ads.internal.zzg zzgVar = zzcVar.zzdgv.zzdif;
            final Drawable drawableZza = zzaurVarZzkl.zza(activity, bitmapZza, zzgVar.zzbkz, zzgVar.zzbla);
            zzaul.zzdsu.post(new Runnable(this, drawableZza) { // from class: com.google.android.gms.ads.internal.overlay.zzk
                private final zzl zzdhu;
                private final Drawable zzdhv;

                {
                    this.zzdhu = this;
                    this.zzdhv = drawableZza;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzl zzlVar = this.zzdhu;
                    zzlVar.zzdhw.zzzr.getWindow().setBackgroundDrawable(this.zzdhv);
                }
            });
        }
    }
}
