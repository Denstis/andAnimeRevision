package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbbk {
    private final ArrayList<zznh> zzeea = new ArrayList<>();
    private long zzeeb;

    zzbbk() {
    }

    final void zza(zznh zznhVar) {
        this.zzeea.add(zznhVar);
    }

    final long zzyt() {
        Iterator<zznh> it = this.zzeea.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry<String, List<String>> entry : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.zzeeb = Math.max(this.zzeeb, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.zzeeb;
    }
}
