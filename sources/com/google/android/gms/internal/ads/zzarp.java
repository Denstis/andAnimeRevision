package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzarp implements zzaxk {
    static final zzaxk zzbty = new zzarp();

    private zzarp() {
    }

    @Override // com.google.android.gms.internal.ads.zzaxk
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return iInterfaceQueryLocalInterface instanceof zzarg ? (zzarg) iInterfaceQueryLocalInterface : new zzarf(iBinder);
    }
}
