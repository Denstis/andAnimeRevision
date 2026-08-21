package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: loaded from: classes.dex */
public final class zztv extends RemoteCreator<zzvm> {
    @VisibleForTesting
    public zztv() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzvm getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof zzvm ? (zzvm) iInterfaceQueryLocalInterface : new zzvp(iBinder);
    }

    public final zzvl zza(Context context, zzua zzuaVar, String str, zzajx zzajxVar, int i2) {
        try {
            IBinder iBinderZza = getRemoteCreatorInstance(context).zza(ObjectWrapper.wrap(context), zzuaVar, str, zzajxVar, 15601000, i2);
            if (iBinderZza == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(iBinderZza);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzaxi.zzb("Could not create remote AdManager.", e2);
            return null;
        }
    }
}
