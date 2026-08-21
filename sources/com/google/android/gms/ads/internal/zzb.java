package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzb<T extends IInterface> extends BaseGmsClient<T> {
    protected zzb(Context context, Looper looper, int i2, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        super(context, looper, i2, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }
}
