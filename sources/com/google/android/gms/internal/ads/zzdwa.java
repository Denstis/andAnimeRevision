package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwa {
    public static <T> List<T> zzhk(int i2) {
        return i2 == 0 ? Collections.emptyList() : new ArrayList(i2);
    }

    static <T> HashSet<T> zzhl(int i2) {
        return new HashSet<>(zzhn(i2));
    }

    public static <K, V> LinkedHashMap<K, V> zzhm(int i2) {
        return new LinkedHashMap<>(zzhn(i2));
    }

    private static int zzhn(int i2) {
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }
}
