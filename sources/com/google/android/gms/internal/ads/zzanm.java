package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: loaded from: classes.dex */
public final class zzanm extends RemoteCreator<zzanp> {
    public zzanm() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzanp getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return iInterfaceQueryLocalInterface instanceof zzanp ? (zzanp) iInterfaceQueryLocalInterface : new zzans(iBinder);
    }

    public final zzano zzc(Activity activity) {
        try {
            IBinder iBinderZzah = getRemoteCreatorInstance(activity).zzah(ObjectWrapper.wrap(activity));
            if (iBinderZzah == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzah.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return iInterfaceQueryLocalInterface instanceof zzano ? (zzano) iInterfaceQueryLocalInterface : new zzanq(iBinderZzah);
        } catch (RemoteException e2) {
            zzaxi.zzd("Could not create remote AdOverlay.", e2);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e3) {
            zzaxi.zzd("Could not create remote AdOverlay.", e3);
            return null;
        }
    }
}
