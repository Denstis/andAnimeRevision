package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzarq {
    public static zzara zzd(Context context, String str, zzajx zzajxVar) {
        try {
            IBinder iBinderZzd = ((zzarg) zzaxh.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzarp.zzbty)).zzd(ObjectWrapper.wrap(context), str, zzajxVar, 15601000);
            if (iBinderZzd == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzd.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return iInterfaceQueryLocalInterface instanceof zzara ? (zzara) iInterfaceQueryLocalInterface : new zzarc(iBinderZzd);
        } catch (RemoteException | zzaxj e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }
}
