package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zznj extends zznk {
    private final int responseCode;
    private final Map<String, List<String>> zzbfl;

    public zznj(int i2, Map<String, List<String>> map, zznf zznfVar) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("Response code: ");
        sb.append(i2);
        super(sb.toString(), zznfVar, 1);
        this.responseCode = i2;
        this.zzbfl = map;
    }
}
