package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzo {
    public final List<zzk> allHeaders;
    public final byte[] data;
    public final int statusCode;
    public final Map<String, String> zzab;
    public final boolean zzac;
    private final long zzad;

    private zzo(int i2, byte[] bArr, Map<String, String> map, List<zzk> list, boolean z, long j2) {
        this.statusCode = i2;
        this.data = bArr;
        this.zzab = map;
        this.allHeaders = list == null ? null : Collections.unmodifiableList(list);
        this.zzac = z;
        this.zzad = j2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public zzo(int i2, byte[] bArr, Map<String, String> map, boolean z, long j2) {
        List arrayList;
        if (map == null) {
            arrayList = null;
        } else if (map.isEmpty()) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new zzk(entry.getKey(), entry.getValue()));
            }
        }
        this(i2, bArr, map, arrayList, z, j2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zzo(int i2, byte[] bArr, boolean z, long j2, List<zzk> list) {
        Map treeMap;
        if (list == null) {
            treeMap = null;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (zzk zzkVar : list) {
                treeMap.put(zzkVar.getName(), zzkVar.getValue());
            }
        }
        this(i2, bArr, treeMap, list, z, j2);
    }

    @Deprecated
    public zzo(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
