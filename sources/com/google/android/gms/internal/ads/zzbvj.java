package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbvj {
    private final Executor executor;
    private final zzaay zzdeh;
    private final zzaui zzdrp;
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbur zzfjl;
    private final zzbuv zzfkr;
    private final zzbup zzfkz;
    private final zzbvr zzfmy;
    private final Context zzlk;

    public zzbvj(Context context, zzaui zzauiVar, zzcwe zzcweVar, zzbuv zzbuvVar, zzbur zzburVar, zzbvr zzbvrVar, Executor executor, Executor executor2, zzbup zzbupVar) {
        this.zzlk = context;
        this.zzdrp = zzauiVar;
        this.zzfga = zzcweVar;
        this.zzdeh = zzcweVar.zzdeh;
        this.zzfkr = zzbuvVar;
        this.zzfjl = zzburVar;
        this.zzfmy = zzbvrVar;
        this.zzfbx = executor;
        this.executor = executor2;
        this.zzfkz = zzbupVar;
    }

    private static void zza(RelativeLayout.LayoutParams layoutParams, int i2) {
        if (i2 == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i2 == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i2 != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(zzbvz zzbvzVar, String[] strArr) {
        Map<String, WeakReference<View>> mapZzaiq = zzbvzVar.zzaiq();
        if (mapZzaiq == null) {
            return false;
        }
        for (String str : strArr) {
            if (mapZzaiq.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final void zza(final zzbvz zzbvzVar) {
        this.zzfbx.execute(new Runnable(this, zzbvzVar) { // from class: com.google.android.gms.internal.ads.zzbvi
            private final zzbvj zzfmw;
            private final zzbvz zzfmx;

            {
                this.zzfmw = this;
                this.zzfmx = zzbvzVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfmw.zzd(this.zzfmx);
            }
        });
    }

    public final boolean zza(ViewGroup viewGroup) {
        View viewZzaht = this.zzfjl.zzaht();
        if (viewZzaht == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewZzaht.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewZzaht.getParent()).removeView(viewZzaht);
        }
        viewGroup.addView(viewZzaht, ((Boolean) zzuv.zzon().zzd(zzza.zzcol)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    final /* synthetic */ void zzb(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzfjl.zzaht() != null) {
            if (2 == this.zzfjl.zzahp() || 1 == this.zzfjl.zzahp()) {
                this.zzdrp.zzc(this.zzfga.zzgkh, String.valueOf(this.zzfjl.zzahp()), z);
            } else if (6 == this.zzfjl.zzahp()) {
                this.zzdrp.zzc(this.zzfga.zzgkh, "2", z);
                this.zzdrp.zzc(this.zzfga.zzgkh, "1", z);
            }
        }
    }

    public final void zzc(zzbvz zzbvzVar) {
        if (zzbvzVar == null || this.zzfmy == null || zzbvzVar.zzain() == null) {
            return;
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcsy)).booleanValue() || this.zzfkr.zzaib()) {
            try {
                zzbvzVar.zzain().addView(this.zzfmy.zzaiy());
            } catch (zzbcf e2) {
                zzaug.zza("web view can not be obtained", e2);
            }
        }
    }

    final /* synthetic */ void zzd(zzbvz zzbvzVar) {
        ViewGroup viewGroup;
        View viewZzahq;
        final ViewGroup viewGroup2;
        IObjectWrapper iObjectWrapperZzqi;
        Drawable drawable;
        int i2 = 0;
        if (this.zzfkr.zzaid() || this.zzfkr.zzaic()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW};
            for (int i3 = 0; i3 < 2; i3++) {
                View viewZzfw = zzbvzVar.zzfw(strArr[i3]);
                if (viewZzfw != null && (viewZzfw instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) viewZzfw;
                    break;
                }
            }
            viewGroup = null;
        } else {
            viewGroup = null;
        }
        boolean z = viewGroup != null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzfjl.zzahq() != null) {
            viewZzahq = this.zzfjl.zzahq();
            zzaay zzaayVar = this.zzdeh;
            if (zzaayVar != null && !z) {
                zza(layoutParams, zzaayVar.zzbjy);
                viewZzahq.setLayoutParams(layoutParams);
            }
        } else if (this.zzfjl.zzqo() instanceof zzaat) {
            zzaat zzaatVar = (zzaat) this.zzfjl.zzqo();
            if (!z) {
                zza(layoutParams, zzaatVar.zzqh());
            }
            View zzaasVar = new zzaas(this.zzlk, zzaatVar, layoutParams);
            zzaasVar.setContentDescription((CharSequence) zzuv.zzon().zzd(zzza.zzcoi));
            viewZzahq = zzaasVar;
        } else {
            viewZzahq = null;
        }
        if (viewZzahq != null) {
            if (viewZzahq.getParent() instanceof ViewGroup) {
                ((ViewGroup) viewZzahq.getParent()).removeView(viewZzahq);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(viewZzahq);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzbvzVar.zzaeu().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(viewZzahq);
                FrameLayout frameLayoutZzain = zzbvzVar.zzain();
                if (frameLayoutZzain != null) {
                    frameLayoutZzain.addView(adChoicesView);
                }
            }
            zzbvzVar.zza(zzbvzVar.zzais(), viewZzahq, true);
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcsx)).booleanValue()) {
            zzc(zzbvzVar);
        }
        String[] strArr2 = zzbvh.zzfmp;
        int length = strArr2.length;
        while (true) {
            if (i2 >= length) {
                viewGroup2 = null;
                break;
            }
            View viewZzfw2 = zzbvzVar.zzfw(strArr2[i2]);
            if (viewZzfw2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) viewZzfw2;
                break;
            }
            i2++;
        }
        this.executor.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.zzbvl
            private final zzbvj zzfmw;
            private final ViewGroup zzfnc;

            {
                this.zzfmw = this;
                this.zzfnc = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfmw.zzb(this.zzfnc);
            }
        });
        if (viewGroup2 != null) {
            if (zza(viewGroup2)) {
                if (this.zzfjl.zzahu() != null) {
                    this.zzfjl.zzahu().zza(new zzbvk(this, zzbvzVar, viewGroup2));
                    return;
                }
                return;
            }
            viewGroup2.removeAllViews();
            View viewZzaeu = zzbvzVar.zzaeu();
            Context context = viewZzaeu != null ? viewZzaeu.getContext() : null;
            if (context != null) {
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcoh)).booleanValue()) {
                    zzabh zzabhVarZzqx = this.zzfkz.zzqx();
                    if (zzabhVarZzqx == null) {
                        return;
                    }
                    try {
                        iObjectWrapperZzqi = zzabhVarZzqx.zzql();
                    } catch (RemoteException unused) {
                        zzaxi.zzeu("Could not get main image drawable");
                        return;
                    }
                } else {
                    zzabi zzabiVarZzahr = this.zzfjl.zzahr();
                    if (zzabiVarZzahr == null) {
                        return;
                    }
                    try {
                        iObjectWrapperZzqi = zzabiVarZzahr.zzqi();
                    } catch (RemoteException unused2) {
                        zzaxi.zzeu("Could not get drawable from image");
                        return;
                    }
                }
                if (iObjectWrapperZzqi == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzqi)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context);
                imageView.setImageDrawable(drawable);
                IObjectWrapper iObjectWrapperZzait = zzbvzVar != null ? zzbvzVar.zzait() : null;
                imageView.setScaleType((iObjectWrapperZzait == null || !((Boolean) zzuv.zzon().zzd(zzza.zzcsz)).booleanValue()) ? ImageView.ScaleType.CENTER_INSIDE : (ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapperZzait));
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            }
        }
    }
}
