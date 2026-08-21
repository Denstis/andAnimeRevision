package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaas extends RelativeLayout {
    private static final float[] zzcvl = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private AnimationDrawable zzcvm;

    public zzaas(Context context, zzaat zzaatVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.checkNotNull(zzaatVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzcvl, null, null));
        shapeDrawable.getPaint().setColor(zzaatVar.getBackgroundColor());
        setLayoutParams(layoutParams);
        com.google.android.gms.ads.internal.zzq.zzkl();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzaatVar.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzaatVar.getText());
            textView.setTextColor(zzaatVar.getTextColor());
            textView.setTextSize(zzaatVar.getTextSize());
            zzuv.zzoj();
            int iZza = zzawy.zza(context, 4);
            zzuv.zzoj();
            textView.setPadding(iZza, 0, zzawy.zza(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzaau> listZzqf = zzaatVar.zzqf();
        if (listZzqf != null && listZzqf.size() > 1) {
            this.zzcvm = new AnimationDrawable();
            Iterator<zzaau> it = listZzqf.iterator();
            while (it.hasNext()) {
                try {
                    this.zzcvm.addFrame((Drawable) ObjectWrapper.unwrap(it.next().zzqi()), zzaatVar.zzqg());
                } catch (Exception e2) {
                    zzaxi.zzc("Error while getting drawable.", e2);
                }
            }
            com.google.android.gms.ads.internal.zzq.zzkl();
            imageView.setBackground(this.zzcvm);
        } else if (listZzqf.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.unwrap(listZzqf.get(0).zzqi()));
            } catch (Exception e3) {
                zzaxi.zzc("Error while getting drawable.", e3);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.zzcvm;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
