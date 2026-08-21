package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwi {
    public static zzcvu zza(List<zzcvu> list, zzcvu zzcvuVar) {
        return list.get(0);
    }

    public static zzua zza(Context context, List<zzcvu> list) {
        ArrayList arrayList = new ArrayList();
        for (zzcvu zzcvuVar : list) {
            if (zzcvuVar.zzgjv) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzcvuVar.width, zzcvuVar.height));
            }
        }
        return new zzua(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzcvu zze(zzua zzuaVar) {
        return zzuaVar.zzcco ? new zzcvu(-3, 0, true) : new zzcvu(zzuaVar.width, zzuaVar.height, false);
    }
}
