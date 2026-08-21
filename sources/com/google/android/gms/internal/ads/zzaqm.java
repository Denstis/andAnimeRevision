package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: loaded from: classes.dex */
public final class zzaqm extends RemoteCreator<zzaqg> {
    public zzaqm() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzaqg getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return iInterfaceQueryLocalInterface instanceof zzaqg ? (zzaqg) iInterfaceQueryLocalInterface : new zzaqf(iBinder);
    }

    public final zzaqb zza(Context context, zzajx zzajxVar) {
        try {
            IBinder iBinderZzb = getRemoteCreatorInstance(context).zzb(ObjectWrapper.wrap(context), zzajxVar, 15601000);
            if (iBinderZzb == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzb.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return iInterfaceQueryLocalInterface instanceof zzaqb ? (zzaqb) iInterfaceQueryLocalInterface : new zzaqd(iBinderZzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzaxi.zzd("Could not get remote RewardedVideoAd.", e2);
            return null;
        }
    }
}
