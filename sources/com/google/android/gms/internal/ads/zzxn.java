package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: loaded from: classes.dex */
public final class zzxn extends RemoteCreator<zzwc> {
    public zzxn() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzwc getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return iInterfaceQueryLocalInterface instanceof zzwc ? (zzwc) iInterfaceQueryLocalInterface : new zzwf(iBinder);
    }

    public final zzwb zzi(Context context) {
        try {
            IBinder iBinderZzb = getRemoteCreatorInstance(context).zzb(ObjectWrapper.wrap(context), 15601000);
            if (iBinderZzb == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzb.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return iInterfaceQueryLocalInterface instanceof zzwb ? (zzwb) iInterfaceQueryLocalInterface : new zzwd(iBinderZzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzaxi.zzd("Could not get remote MobileAdsSettingManager.", e2);
            return null;
        }
    }
}
