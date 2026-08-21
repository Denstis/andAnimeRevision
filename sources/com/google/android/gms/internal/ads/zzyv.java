package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzyv {
    private final Collection<zzyp<?>> zzcft = new ArrayList();
    private final Collection<zzyp<String>> zzcfu = new ArrayList();
    private final Collection<zzyp<String>> zzcfv = new ArrayList();

    public final void zza(SharedPreferences.Editor editor, int i2, JSONObject jSONObject) {
        for (zzyp<?> zzypVar : this.zzcft) {
            if (zzypVar.getSource() == 1) {
                zzypVar.zza(editor, zzypVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzaxi.zzes("Flag Json is null.");
        }
    }

    public final void zza(zzyp zzypVar) {
        this.zzcft.add(zzypVar);
    }

    public final void zzb(zzyp<String> zzypVar) {
        this.zzcfu.add(zzypVar);
    }

    public final void zzc(zzyp<String> zzypVar) {
        this.zzcfv.add(zzypVar);
    }

    public final List<String> zzpr() {
        ArrayList arrayList = new ArrayList();
        Iterator<zzyp<String>> it = this.zzcfu.iterator();
        while (it.hasNext()) {
            String str = (String) zzuv.zzon().zzd(it.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List<String> zzps() {
        List<String> listZzpr = zzpr();
        Iterator<zzyp<String>> it = this.zzcfv.iterator();
        while (it.hasNext()) {
            String str = (String) zzuv.zzon().zzd(it.next());
            if (str != null) {
                listZzpr.add(str);
            }
        }
        return listZzpr;
    }
}
