package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: classes.dex */
abstract class zzus<T> {
    private static final zzvu zzcdm = zzog();

    zzus() {
    }

    private static zzvu zzog() {
        try {
            Object objNewInstance = zzug.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(objNewInstance instanceof IBinder)) {
                zzaxi.zzeu("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return iInterfaceQueryLocalInterface instanceof zzvu ? (zzvu) iInterfaceQueryLocalInterface : new zzvw(iBinder);
        } catch (Exception unused) {
            zzaxi.zzeu("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    private final T zzoh() {
        zzvu zzvuVar = zzcdm;
        if (zzvuVar == null) {
            zzaxi.zzeu("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zza(zzvuVar);
        } catch (RemoteException e2) {
            zzaxi.zzd("Cannot invoke local loader using ClientApi class.", e2);
            return null;
        }
    }

    private final T zzoi() {
        try {
            return zzof();
        } catch (RemoteException e2) {
            zzaxi.zzd("Cannot invoke remote loader.", e2);
            return null;
        }
    }

    protected abstract T zza(zzvu zzvuVar);

    public final T zzd(Context context, boolean z) {
        T tZzoh;
        boolean z2 = z;
        if (!z2) {
            zzuv.zzoj();
            if (!zzawy.zzc(context, 12451000)) {
                zzaxi.zzdv("Google Play Services is not available.");
                z2 = true;
            }
        }
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID)) {
            z2 = true;
        }
        zzza.initialize(context);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcqr)).booleanValue()) {
            z2 = false;
        }
        if (z2) {
            tZzoh = zzoh();
            if (tZzoh == null) {
                tZzoh = zzoi();
            }
        } else {
            T tZzoi = zzoi();
            int i2 = tZzoi == null ? 1 : 0;
            if (i2 != 0) {
                if (zzuv.zzoq().nextInt(((Integer) zzuv.zzon().zzd(zzza.zzcta)).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", i2);
                    zzuv.zzoj().zza(context, zzuv.zzop().zzblz, "gmob-apps", bundle, true);
                }
            }
            tZzoh = tZzoi == null ? zzoh() : tZzoi;
        }
        return tZzoh == null ? zzoe() : tZzoh;
    }

    protected abstract T zzoe();

    protected abstract T zzof();
}
