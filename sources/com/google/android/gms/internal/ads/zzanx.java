package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class zzanx extends zzfm implements zzany {
    public static zzany zzag(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
        return iInterfaceQueryLocalInterface instanceof zzany ? (zzany) iInterfaceQueryLocalInterface : new zzaoa(iBinder);
    }
}
