package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzawy;
import com.google.android.gms.internal.ads.zzuv;

/* JADX INFO: loaded from: classes.dex */
public final class zzq extends FrameLayout implements View.OnClickListener {
    private final ImageButton zzdig;
    private final zzy zzdih;

    public zzq(Context context, zzp zzpVar, zzy zzyVar) {
        super(context);
        this.zzdih = zzyVar;
        setOnClickListener(this);
        this.zzdig = new ImageButton(context);
        this.zzdig.setImageResource(R.drawable.btn_dialog);
        this.zzdig.setBackgroundColor(0);
        this.zzdig.setOnClickListener(this);
        ImageButton imageButton = this.zzdig;
        zzuv.zzoj();
        int iZza = zzawy.zza(context, zzpVar.paddingLeft);
        zzuv.zzoj();
        int iZza2 = zzawy.zza(context, 0);
        zzuv.zzoj();
        int iZza3 = zzawy.zza(context, zzpVar.paddingRight);
        zzuv.zzoj();
        imageButton.setPadding(iZza, iZza2, iZza3, zzawy.zza(context, zzpVar.paddingBottom));
        this.zzdig.setContentDescription("Interstitial close button");
        ImageButton imageButton2 = this.zzdig;
        zzuv.zzoj();
        int iZza4 = zzawy.zza(context, zzpVar.size + zzpVar.paddingLeft + zzpVar.paddingRight);
        zzuv.zzoj();
        addView(imageButton2, new FrameLayout.LayoutParams(iZza4, zzawy.zza(context, zzpVar.size + zzpVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzy zzyVar = this.zzdih;
        if (zzyVar != null) {
            zzyVar.zzso();
        }
    }

    public final void zzae(boolean z) {
        ImageButton imageButton;
        int i2;
        if (z) {
            imageButton = this.zzdig;
            i2 = 8;
        } else {
            imageButton = this.zzdig;
            i2 = 0;
        }
        imageButton.setVisibility(i2);
    }
}
