package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzadm extends RemoteCreator<zzabu> {
    @VisibleForTesting
    public zzadm() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzabu getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return iInterfaceQueryLocalInterface instanceof zzabu ? (zzabu) iInterfaceQueryLocalInterface : new zzabx(iBinder);
    }

    public final zzabt zzb(View view, HashMap<String, View> map, HashMap<String, View> map2) {
        try {
            IBinder iBinderZzb = getRemoteCreatorInstance(view.getContext()).zzb(ObjectWrapper.wrap(view), ObjectWrapper.wrap(map), ObjectWrapper.wrap(map2));
            if (iBinderZzb == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzb.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return iInterfaceQueryLocalInterface instanceof zzabt ? (zzabt) iInterfaceQueryLocalInterface : new zzabv(iBinderZzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzaxi.zzd("Could not create remote NativeAdViewHolderDelegate.", e2);
            return null;
        }
    }
}
