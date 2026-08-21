package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwa implements zzbuz {
    private final zzaxl zzblk;
    private final zzcvr zzfet;
    private final zzcwe zzfga;
    private final zzbni zzfjm;
    private final zzbmv zzfjn;
    private boolean zzfjr = false;
    private boolean zzfju = false;
    private final zzakg zzfnq;
    private final zzakl zzfnr;
    private final zzakm zzfns;
    private final Context zzlk;

    public zzbwa(zzakg zzakgVar, zzakl zzaklVar, zzakm zzakmVar, zzbni zzbniVar, zzbmv zzbmvVar, Context context, zzcvr zzcvrVar, zzaxl zzaxlVar, zzcwe zzcweVar) {
        this.zzfnq = zzakgVar;
        this.zzfnr = zzaklVar;
        this.zzfns = zzakmVar;
        this.zzfjm = zzbniVar;
        this.zzfjn = zzbmvVar;
        this.zzlk = context;
        this.zzfet = zzcvrVar;
        this.zzblk = zzaxlVar;
        this.zzfga = zzcweVar;
    }

    private final void zzab(View view) {
        try {
            if (this.zzfns != null && !this.zzfns.getOverrideClickHandling()) {
                this.zzfns.zzy(ObjectWrapper.wrap(view));
                this.zzfjn.onAdClicked();
            } else if (this.zzfnq != null && !this.zzfnq.getOverrideClickHandling()) {
                this.zzfnq.zzy(ObjectWrapper.wrap(view));
                this.zzfjn.onAdClicked();
            } else {
                if (this.zzfnr == null || this.zzfnr.getOverrideClickHandling()) {
                    return;
                }
                this.zzfnr.zzy(ObjectWrapper.wrap(view));
                this.zzfjn.onAdClicked();
            }
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to call handleClick", e2);
        }
    }

    private static HashMap<String, View> zzb(Map<String, WeakReference<View>> map) {
        HashMap<String, View> map2 = new HashMap<>();
        if (map == null) {
            return map2;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    map2.put(entry.getKey(), view);
                }
            }
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final boolean isCustomClickGestureEnabled() {
        return this.zzfet.zzdcn;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void setClickConfirmingView(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.zzfju && this.zzfet.zzdcn) {
            return;
        }
        zzab(view);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            if (this.zzfns != null) {
                this.zzfns.zzaa(iObjectWrapperWrap);
            } else if (this.zzfnq != null) {
                this.zzfnq.zzaa(iObjectWrapperWrap);
            } else if (this.zzfnr != null) {
                this.zzfnr.zzaa(iObjectWrapperWrap);
            }
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to call untrackView", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.zzfjr && this.zzfet.zzgjj != null) {
                this.zzfjr |= com.google.android.gms.ads.internal.zzq.zzkt().zzb(this.zzlk, this.zzblk.zzblz, this.zzfet.zzgjj.toString(), this.zzfga.zzgkh);
            }
            if (this.zzfns != null && !this.zzfns.getOverrideImpressionRecording()) {
                this.zzfns.recordImpression();
                this.zzfjm.onAdImpression();
            } else if (this.zzfnq != null && !this.zzfnq.getOverrideImpressionRecording()) {
                this.zzfnq.recordImpression();
                this.zzfjm.onAdImpression();
            } else {
                if (this.zzfnr == null || this.zzfnr.getOverrideImpressionRecording()) {
                    return;
                }
                this.zzfnr.recordImpression();
                this.zzfjm.onAdImpression();
            }
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to call recordImpression", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(view);
            HashMap<String, View> mapZzb = zzb(map);
            HashMap<String, View> mapZzb2 = zzb(map2);
            if (this.zzfns != null) {
                this.zzfns.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                return;
            }
            if (this.zzfnq != null) {
                this.zzfnq.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                this.zzfnq.zzz(iObjectWrapperWrap);
            } else if (this.zzfnr != null) {
                this.zzfnr.zzc(iObjectWrapperWrap, ObjectWrapper.wrap(mapZzb), ObjectWrapper.wrap(mapZzb2));
                this.zzfnr.zzz(iObjectWrapperWrap);
            }
        } catch (RemoteException e2) {
            zzaxi.zzd("Failed to call trackView", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        String str;
        if (!this.zzfju) {
            str = "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.";
        } else {
            if (this.zzfet.zzdcn) {
                zzab(view);
                return;
            }
            str = "Custom click reporting for 3p ads failed. Ad unit id not whitelisted.";
        }
        zzaxi.zzeu(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(zzadf zzadfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(zzwe zzweVar) {
        zzaxi.zzeu("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zza(zzwi zzwiVar) {
        zzaxi.zzeu("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzahd() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzahe() {
        zzaxi.zzeu("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzahf() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzf(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzfp(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzg(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final boolean zzh(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzqw() {
        this.zzfju = true;
    }
}
