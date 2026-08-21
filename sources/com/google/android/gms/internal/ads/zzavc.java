package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(28)
public final class zzavc extends zzauz {
    static /* synthetic */ WindowInsets zza(Activity activity, View view, WindowInsets windowInsets) {
        if (com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzvk() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String strConcat = "";
            if (displayCutout != null) {
                zzaui zzauiVarZzuh = com.google.android.gms.ads.internal.zzq.zzkn().zzuh();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String str = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(strConcat)) {
                        strConcat = String.valueOf(strConcat).concat("|");
                    }
                    String strValueOf = String.valueOf(strConcat);
                    String strValueOf2 = String.valueOf(str);
                    strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                }
                zzauiVarZzuh.zzec(strConcat);
            } else {
                com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzec("");
            }
        }
        zza(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static void zza(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i2 = attributes.layoutInDisplayCutoutMode;
        int i3 = z ? 1 : 2;
        if (i3 != i2) {
            attributes.layoutInDisplayCutoutMode = i3;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzg(final Activity activity) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzckx)).booleanValue() && com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzvk() == null && !activity.isInMultiWindowMode()) {
            zza(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.internal.ads.zzavb
                private final zzavc zzdtd;
                private final Activity zzdte;

                {
                    this.zzdtd = this;
                    this.zzdte = activity;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzavc.zza(this.zzdte, view, windowInsets);
                }
            });
        }
    }
}
