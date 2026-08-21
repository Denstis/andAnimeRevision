package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
final class zzasj {
    private static final Map<String, String> zzdpe;
    private final List<String> zzdpf;
    private final zzarv zzdpg;
    private final Context zzlk;

    static {
        HashMap map = new HashMap();
        if (PlatformVersion.isAtLeastLollipop()) {
            map.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            map.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        zzdpe = map;
    }

    zzasj(Context context, List<String> list, zzarv zzarvVar) {
        this.zzlk = context;
        this.zzdpf = list;
        this.zzdpg = zzarvVar;
    }

    final List<String> zzb(String[] strArr) {
        boolean z;
        boolean z2;
        String strValueOf;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Iterator<String> it = this.zzdpf.iterator();
            do {
                z = true;
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                String next = it.next();
                if (next.equals(str)) {
                    break;
                }
                strValueOf = String.valueOf(next);
            } while (!(strValueOf.length() != 0 ? "android.webkit.resource.".concat(strValueOf) : new String("android.webkit.resource.")).equals(str));
            z2 = true;
            if (z2) {
                if (zzdpe.containsKey(str)) {
                    com.google.android.gms.ads.internal.zzq.zzkj();
                    if (!zzaul.zzq(this.zzlk, zzdpe.get(str))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                } else {
                    this.zzdpg.zzds(str);
                }
            } else {
                this.zzdpg.zzdr(str);
            }
        }
        return arrayList;
    }
}
