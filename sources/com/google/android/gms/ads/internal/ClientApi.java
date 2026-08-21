package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabm;
import com.google.android.gms.internal.ads.zzabt;
import com.google.android.gms.internal.ads.zzajx;
import com.google.android.gms.internal.ads.zzano;
import com.google.android.gms.internal.ads.zzany;
import com.google.android.gms.internal.ads.zzaqb;
import com.google.android.gms.internal.ads.zzara;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzbei;
import com.google.android.gms.internal.ads.zzbve;
import com.google.android.gms.internal.ads.zzbvh;
import com.google.android.gms.internal.ads.zzcly;
import com.google.android.gms.internal.ads.zzcma;
import com.google.android.gms.internal.ads.zzcme;
import com.google.android.gms.internal.ads.zzcmk;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwb;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ClientApi extends zzvx {
    @KeepForSdk
    public ClientApi() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzabt zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzbve((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzaqb zza(IObjectWrapper iObjectWrapper, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbei.zza(context, zzajxVar, i2).zzabn().zzbt(context).zzadm().zzadk();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzve zza(IObjectWrapper iObjectWrapper, String str, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcly(zzbei.zza(context, zzajxVar, i2), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, int i2) {
        return new zzl((Context) ObjectWrapper.unwrap(iObjectWrapper), zzuaVar, str, new zzaxl(15601000, i2, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcme(zzbei.zza(context, zzajxVar, i2), context, zzuaVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwb zza(IObjectWrapper iObjectWrapper, int i2) {
        return zzbei.zzd((Context) ObjectWrapper.unwrap(iObjectWrapper), i2).zzabh();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzara zzb(IObjectWrapper iObjectWrapper, String str, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbei.zza(context, zzajxVar, i2).zzabn().zzbt(context).zzfm(str).zzadm().zzadl();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zzb(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcmk(zzbei.zza(context, zzajxVar, i2), context, zzuaVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzabm zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzbvh((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvl zzc(IObjectWrapper iObjectWrapper, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcma(zzbei.zza(context, zzajxVar, i2), context, zzuaVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzano zzf(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel adOverlayInfoParcelZzc = AdOverlayInfoParcel.zzc(activity.getIntent());
        if (adOverlayInfoParcelZzc == null) {
            return new zzr(activity);
        }
        int i2 = adOverlayInfoParcelZzc.zzdid;
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? new zzr(activity) : new zzu(activity, adOverlayInfoParcelZzc) : new zzz(activity) : new zzx(activity) : new zzs(activity);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwb zzg(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzany zzh(IObjectWrapper iObjectWrapper) {
        return null;
    }
}
