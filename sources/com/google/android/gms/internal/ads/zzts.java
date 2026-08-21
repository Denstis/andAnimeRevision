package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;

/* JADX INFO: loaded from: classes.dex */
public final class zzts extends RemoteCreator<zzvj> {
    public zzts() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzvj getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return iInterfaceQueryLocalInterface instanceof zzvj ? (zzvj) iInterfaceQueryLocalInterface : new zzvi(iBinder);
    }

    public final zzve zza(Context context, String str, zzajx zzajxVar) {
        try {
            IBinder iBinderZzc = getRemoteCreatorInstance(context).zzc(ObjectWrapper.wrap(context), str, zzajxVar, 15601000);
            if (iBinderZzc == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return iInterfaceQueryLocalInterface instanceof zzve ? (zzve) iInterfaceQueryLocalInterface : new zzvg(iBinderZzc);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e2) {
            zzaxi.zzd("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }
}
