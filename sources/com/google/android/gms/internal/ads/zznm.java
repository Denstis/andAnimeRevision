package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zznm {
    private final Map<String, String> zzbfp = new HashMap();
    private Map<String, String> zzbfq;

    public final synchronized Map<String, String> zzif() {
        if (this.zzbfq == null) {
            this.zzbfq = Collections.unmodifiableMap(new HashMap(this.zzbfp));
        }
        return this.zzbfq;
    }
}
