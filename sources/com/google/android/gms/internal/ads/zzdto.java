package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzdto extends RuntimeException {
    private final List<String> zzhoo;

    public zzdto(zzdsg zzdsgVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzhoo = null;
    }
}
