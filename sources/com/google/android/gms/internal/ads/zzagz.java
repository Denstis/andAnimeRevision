package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzagz<ReferenceT> implements zzagw {
    private final Map<String, CopyOnWriteArrayList<zzaer<? super ReferenceT>>> zzczf = new HashMap();
    private ReferenceT zzczg;

    private final synchronized void zzb(final String str, final Map<String, String> map) {
        if (zzaxi.isLoggable(2)) {
            String strValueOf = String.valueOf(str);
            zzaug.zzdy(strValueOf.length() != 0 ? "Received GMSG: ".concat(strValueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzaug.zzdy(sb.toString());
            }
        }
        CopyOnWriteArrayList<zzaer<? super ReferenceT>> copyOnWriteArrayList = this.zzczf.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzctw)).booleanValue() && com.google.android.gms.ads.internal.zzq.zzkn().zzub() != null) {
                zzaxn.zzdwi.execute(new Runnable(str) { // from class: com.google.android.gms.internal.ads.zzahb
                    private final String zzczh;

                    {
                        this.zzczh = str;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        com.google.android.gms.ads.internal.zzq.zzkn().zzub().zzcm(this.zzczh.substring(1));
                    }
                });
                return;
            }
            return;
        }
        for (final zzaer<? super ReferenceT> zzaerVar : copyOnWriteArrayList) {
            zzaxn.zzdwm.execute(new Runnable(this, zzaerVar, map) { // from class: com.google.android.gms.internal.ads.zzagy
                private final zzagz zzczc;
                private final zzaer zzczd;
                private final Map zzcze;

                {
                    this.zzczc = this;
                    this.zzczd = zzaerVar;
                    this.zzcze = map;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzczc.zza(this.zzczd, this.zzcze);
                }
            });
        }
    }

    public final synchronized void reset() {
        this.zzczf.clear();
    }

    final /* synthetic */ void zza(zzaer zzaerVar, Map map) {
        zzaerVar.zza(this.zzczg, map);
    }

    public final synchronized void zza(String str, Predicate<zzaer<? super ReferenceT>> predicate) {
        CopyOnWriteArrayList<zzaer<? super ReferenceT>> copyOnWriteArrayList = this.zzczf.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (zzaer<? super ReferenceT> zzaerVar : copyOnWriteArrayList) {
            if (predicate.apply(zzaerVar)) {
                arrayList.add(zzaerVar);
            }
        }
        copyOnWriteArrayList.removeAll(arrayList);
    }

    public final synchronized void zza(String str, zzaer<? super ReferenceT> zzaerVar) {
        CopyOnWriteArrayList<zzaer<? super ReferenceT>> copyOnWriteArrayList = this.zzczf.get(str);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.zzczf.put(str, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(zzaerVar);
    }

    public final synchronized void zzb(String str, zzaer<? super ReferenceT> zzaerVar) {
        CopyOnWriteArrayList<zzaer<? super ReferenceT>> copyOnWriteArrayList = this.zzczf.get(str);
        if (copyOnWriteArrayList == null) {
            return;
        }
        copyOnWriteArrayList.remove(zzaerVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagw
    public final boolean zzcx(String str) {
        return str != null && zzg(Uri.parse(str));
    }

    public final void zzg(ReferenceT referencet) {
        this.zzczg = referencet;
    }

    public final boolean zzg(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        zzh(uri);
        return true;
    }

    public final void zzh(Uri uri) {
        String path = uri.getPath();
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzb(path, zzaul.zzi(uri));
    }
}
