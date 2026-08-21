package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcuc implements Callable {
    static final Callable zzgfh = new zzcuc();

    private zzcuc() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        HashMap map = new HashMap();
        String str = (String) zzuv.zzon().zzd(zzza.zzchw);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzuv.zzon().zzd(zzza.zzchx)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    map.put(str2, zzaww.zzem(str2));
                }
            }
        }
        return new zzcua(map);
    }
}
