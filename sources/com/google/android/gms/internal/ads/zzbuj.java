package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbuj extends zzbkk {
    private final zzaxl zzblk;
    private final zzdf zzegb;
    private final Executor zzfbx;
    private final zzbuy zzfdo;
    private final zzasm zzfff;
    private final zzbur zzfjl;
    private final zzbuz zzfkp;
    private final zzbvj zzfkq;
    private final zzbuv zzfkr;
    private final zzdvv<zzbxz> zzfks;
    private final zzdvv<zzbxx> zzfkt;
    private final zzdvv<zzbyc> zzfku;
    private final zzdvv<zzbxs> zzfkv;
    private final zzdvv<zzbyb> zzfkw;
    private zzbvz zzfkx;
    private boolean zzfky;
    private final zzbup zzfkz;
    private final Context zzlk;

    public zzbuj(zzbkn zzbknVar, Executor executor, zzbur zzburVar, zzbuz zzbuzVar, zzbvj zzbvjVar, zzbuv zzbuvVar, zzbuy zzbuyVar, zzdvv<zzbxz> zzdvvVar, zzdvv<zzbxx> zzdvvVar2, zzdvv<zzbyc> zzdvvVar3, zzdvv<zzbxs> zzdvvVar4, zzdvv<zzbyb> zzdvvVar5, zzasm zzasmVar, zzdf zzdfVar, zzaxl zzaxlVar, Context context, zzbup zzbupVar) {
        super(zzbknVar);
        this.zzfbx = executor;
        this.zzfjl = zzburVar;
        this.zzfkp = zzbuzVar;
        this.zzfkq = zzbvjVar;
        this.zzfkr = zzbuvVar;
        this.zzfdo = zzbuyVar;
        this.zzfks = zzdvvVar;
        this.zzfkt = zzdvvVar2;
        this.zzfku = zzdvvVar3;
        this.zzfkv = zzdvvVar4;
        this.zzfkw = zzdvvVar5;
        this.zzfff = zzasmVar;
        this.zzegb = zzdfVar;
        this.zzblk = zzaxlVar;
        this.zzlk = context;
        this.zzfkz = zzbupVar;
    }

    public static boolean zzx(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    public final synchronized void cancelUnconfirmedClick() {
        this.zzfkp.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final synchronized void destroy() {
        this.zzfbx.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbuk
            private final zzbuj zzfko;

            {
                this.zzfko = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfko.zzahn();
            }
        });
        super.destroy();
    }

    public final synchronized boolean isCustomClickGestureEnabled() {
        return this.zzfkp.isCustomClickGestureEnabled();
    }

    public final synchronized void recordCustomClickGesture() {
        if (this.zzfkx == null) {
            zzaxi.zzdv("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = this.zzfkx instanceof zzbve;
            this.zzfbx.execute(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzbun
                private final boolean zzdyt;
                private final zzbuj zzfko;

                {
                    this.zzfko = this;
                    this.zzdyt = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfko.zzaz(this.zzdyt);
                }
            });
        }
    }

    public final synchronized void setClickConfirmingView(View view) {
        this.zzfkp.setClickConfirmingView(view);
    }

    public final synchronized void zza(View view, MotionEvent motionEvent, View view2) {
        this.zzfkp.zza(view, motionEvent, view2);
    }

    public final synchronized void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcsx)).booleanValue()) {
            this.zzfkq.zzc(this.zzfkx);
        }
        this.zzfkp.zza(view, view2, map, map2, z);
    }

    public final synchronized void zza(zzadf zzadfVar) {
        this.zzfkp.zza(zzadfVar);
    }

    public final synchronized void zza(zzbvz zzbvzVar) {
        zzdc zzdcVarZzcd;
        this.zzfkx = zzbvzVar;
        this.zzfkq.zza(zzbvzVar);
        this.zzfkp.zza(zzbvzVar.zzaeu(), zzbvzVar.zzaiq(), zzbvzVar.zzair(), zzbvzVar, zzbvzVar);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcnb)).booleanValue() && (zzdcVarZzcd = this.zzegb.zzcd()) != null) {
            zzdcVarZzcd.zzb(zzbvzVar.zzaeu());
        }
        if (zzbvzVar.zzaio() != null) {
            zzbvzVar.zzaio().zza(this.zzfff);
        }
    }

    public final synchronized void zza(zzwe zzweVar) {
        this.zzfkp.zza(zzweVar);
    }

    public final synchronized void zza(zzwi zzwiVar) {
        this.zzfkp.zza(zzwiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final void zzafa() {
        this.zzfbx.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbui
            private final zzbuj zzfko;

            {
                this.zzfko = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfko.zzaho();
            }
        });
        if (this.zzfjl.zzahp() != 7) {
            Executor executor = this.zzfbx;
            zzbuz zzbuzVar = this.zzfkp;
            zzbuzVar.getClass();
            executor.execute(zzbul.zza(zzbuzVar));
        }
        super.zzafa();
    }

    public final synchronized void zzahd() {
        if (this.zzfky) {
            return;
        }
        this.zzfkp.zzahd();
    }

    public final boolean zzahk() {
        return this.zzfkr.zzaic();
    }

    public final boolean zzahl() {
        return this.zzfkr.zzahl();
    }

    public final zzbup zzahm() {
        return this.zzfkz;
    }

    final /* synthetic */ void zzahn() {
        this.zzfkp.destroy();
        this.zzfjl.destroy();
    }

    final /* synthetic */ void zzaho() {
        try {
            int iZzahp = this.zzfjl.zzahp();
            if (iZzahp == 1) {
                if (this.zzfdo.zzaie() != null) {
                    zzg("Google", true);
                    this.zzfdo.zzaie().zza(this.zzfks.get());
                    return;
                }
                return;
            }
            if (iZzahp == 2) {
                if (this.zzfdo.zzaif() != null) {
                    zzg("Google", true);
                    this.zzfdo.zzaif().zza(this.zzfkt.get());
                    return;
                }
                return;
            }
            if (iZzahp == 3) {
                if (this.zzfdo.zzfu(this.zzfjl.getCustomTemplateId()) != null) {
                    if (this.zzfjl.zzahu() != null) {
                        zzg("Google", true);
                    }
                    this.zzfdo.zzfu(this.zzfjl.getCustomTemplateId()).zzb(this.zzfkw.get());
                    return;
                }
                return;
            }
            if (iZzahp == 6) {
                if (this.zzfdo.zzaig() != null) {
                    zzg("Google", true);
                    this.zzfdo.zzaig().zza(this.zzfku.get());
                    return;
                }
                return;
            }
            if (iZzahp != 7) {
                zzaxi.zzes("Wrong native template id!");
            } else if (this.zzfdo.zzaii() != null) {
                this.zzfdo.zzaii().zza(this.zzfkv.get());
            }
        } catch (RemoteException e2) {
            zzaxi.zzc("RemoteException when notifyAdLoad is called", e2);
        }
    }

    final /* synthetic */ void zzaz(boolean z) {
        this.zzfkp.zza(this.zzfkx.zzaeu(), this.zzfkx.zzaip(), this.zzfkx.zzaiq(), z);
    }

    public final synchronized void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.zzfky) {
            return;
        }
        if (z) {
            this.zzfkp.zza(view, map, map2);
            this.zzfky = true;
            return;
        }
        if (!z) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcom)).booleanValue() && map != null) {
                Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    View view2 = it.next().getValue().get();
                    if (view2 != null && zzx(view2)) {
                        this.zzfkp.zza(view, map, map2);
                        this.zzfky = true;
                        return;
                    }
                }
            }
        }
    }

    public final synchronized void zzb(zzbvz zzbvzVar) {
        this.zzfkp.zza(zzbvzVar.zzaeu(), zzbvzVar.zzaip());
        if (zzbvzVar.zzain() != null) {
            zzbvzVar.zzain().setClickable(false);
            zzbvzVar.zzain().removeAllViews();
        }
        if (zzbvzVar.zzaio() != null) {
            zzbvzVar.zzaio().zzb(this.zzfff);
        }
        this.zzfkx = null;
    }

    public final synchronized void zzf(Bundle bundle) {
        this.zzfkp.zzf(bundle);
    }

    public final synchronized void zzfp(String str) {
        this.zzfkp.zzfp(str);
    }

    public final synchronized void zzg(Bundle bundle) {
        this.zzfkp.zzg(bundle);
    }

    public final void zzg(String str, boolean z) {
        String str2;
        View view;
        if (this.zzfkr.zzahl()) {
            zzbbw zzbbwVarZzahv = this.zzfjl.zzahv();
            zzbbw zzbbwVarZzahu = this.zzfjl.zzahu();
            if (zzbbwVarZzahv == null && zzbbwVarZzahu == null) {
                return;
            }
            boolean z2 = zzbbwVarZzahv != null;
            boolean z3 = zzbbwVarZzahu != null;
            String str3 = null;
            if (z2) {
                str2 = str3;
            } else if (z3) {
                str3 = "javascript";
                zzbbwVarZzahv = zzbbwVarZzahu;
                str2 = str3;
            } else {
                zzbbwVarZzahv = null;
                str2 = null;
            }
            if (zzbbwVarZzahv.getWebView() != null && com.google.android.gms.ads.internal.zzq.zzky().zzp(this.zzlk)) {
                zzaxl zzaxlVar = this.zzblk;
                int i2 = zzaxlVar.zzdwe;
                int i3 = zzaxlVar.zzdwf;
                StringBuilder sb = new StringBuilder(23);
                sb.append(i2);
                sb.append(".");
                sb.append(i3);
                IObjectWrapper iObjectWrapperZza = com.google.android.gms.ads.internal.zzq.zzky().zza(sb.toString(), zzbbwVarZzahv.getWebView(), "", "javascript", str2, str);
                if (iObjectWrapperZza == null) {
                    return;
                }
                this.zzfjl.zzas(iObjectWrapperZza);
                zzbbwVarZzahv.zzaq(iObjectWrapperZza);
                if (z3 && (view = zzbbwVarZzahu.getView()) != null) {
                    com.google.android.gms.ads.internal.zzq.zzky().zza(iObjectWrapperZza, view);
                }
                if (z) {
                    com.google.android.gms.ads.internal.zzq.zzky().zzae(iObjectWrapperZza);
                }
            }
        }
    }

    public final synchronized boolean zzh(Bundle bundle) {
        if (this.zzfky) {
            return true;
        }
        boolean zZzh = this.zzfkp.zzh(bundle);
        this.zzfky = zZzh;
        return zZzh;
    }

    public final synchronized void zzqw() {
        this.zzfkp.zzqw();
    }

    public final void zzy(View view) {
        IObjectWrapper iObjectWrapperZzahw = this.zzfjl.zzahw();
        boolean z = this.zzfjl.zzahv() != null;
        if (!this.zzfkr.zzahl() || iObjectWrapperZzahw == null || !z || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzky().zza(iObjectWrapperZzahw, view);
    }

    public final void zzz(View view) {
        IObjectWrapper iObjectWrapperZzahw = this.zzfjl.zzahw();
        if (!this.zzfkr.zzahl() || iObjectWrapperZzahw == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzky().zzb(iObjectWrapperZzahw, view);
    }
}
