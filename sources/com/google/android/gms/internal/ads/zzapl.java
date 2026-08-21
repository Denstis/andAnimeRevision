package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class zzapl {
    private WeakHashMap<Context, zzapn> zzdnl = new WeakHashMap<>();

    public final Future<zzapj> zzt(Context context) {
        return zzaxn.zzdwi.submit(new zzapo(this, context));
    }
}
