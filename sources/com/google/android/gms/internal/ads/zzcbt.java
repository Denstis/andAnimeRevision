package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbt {
    private List<Map<String, String>> zzfsk = new ArrayList();
    private boolean zzfsl = false;
    private boolean zzfsm = false;
    private String zzfsn;
    private zzcbo zzfso;

    public zzcbt(String str, zzcbo zzcboVar) {
        this.zzfsn = str;
        this.zzfso = zzcboVar;
    }

    private final Map<String, String> zzajz() {
        Map<String, String> mapZzajv = this.zzfso.zzajv();
        mapZzajv.put("tms", Long.toString(com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime(), 10));
        mapZzajv.put("tid", this.zzfsn);
        return mapZzajv;
    }

    public final synchronized void zzajx() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmt)).booleanValue()) {
            if (!this.zzfsl) {
                Map<String, String> mapZzajz = zzajz();
                mapZzajz.put("action", "init_started");
                this.zzfsk.add(mapZzajz);
                this.zzfsl = true;
            }
        }
    }

    public final synchronized void zzajy() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmt)).booleanValue()) {
            if (!this.zzfsm) {
                Map<String, String> mapZzajz = zzajz();
                mapZzajz.put("action", "init_finished");
                this.zzfsk.add(mapZzajz);
                Iterator<Map<String, String>> it = this.zzfsk.iterator();
                while (it.hasNext()) {
                    this.zzfso.zzm(it.next());
                }
                this.zzfsm = true;
            }
        }
    }

    public final synchronized void zzfy(String str) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmt)).booleanValue()) {
            Map<String, String> mapZzajz = zzajz();
            mapZzajz.put("action", "adapter_init_started");
            mapZzajz.put("ancn", str);
            this.zzfsk.add(mapZzajz);
        }
    }

    public final synchronized void zzfz(String str) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmt)).booleanValue()) {
            Map<String, String> mapZzajz = zzajz();
            mapZzajz.put("action", "adapter_init_finished");
            mapZzajz.put("ancn", str);
            this.zzfsk.add(mapZzajz);
        }
    }

    public final synchronized void zzr(String str, String str2) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcmt)).booleanValue()) {
            Map<String, String> mapZzajz = zzajz();
            mapZzajz.put("action", "adapter_init_finished");
            mapZzajz.put("ancn", str);
            mapZzajz.put("rqe", str2);
            this.zzfsk.add(mapZzajz);
        }
    }
}
