package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxh {
    public static <T> T zza(Context context, String str, zzaxk<IBinder, T> zzaxkVar) throws zzaxj {
        try {
            return zzaxkVar.apply(zzbq(context).instantiate(str));
        } catch (Exception e2) {
            throw new zzaxj(e2);
        }
    }

    public static Context zzbp(Context context) {
        return zzbq(context).getModuleContext();
    }

    private static DynamiteModule zzbq(Context context) throws zzaxj {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID);
        } catch (Exception e2) {
            throw new zzaxj(e2);
        }
    }
}
