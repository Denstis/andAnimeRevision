package com.google.android.gms.common.util;

import b.e.a;
import b.e.b;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    public static boolean isEmpty(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(T t) {
        return Collections.singletonList(t);
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : listOf(tArr[0]) : listOf();
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(K k2, V v, K k3, V v2, K k4, V v3) {
        Map mapZzb = zzb(3, false);
        mapZzb.put(k2, v);
        mapZzb.put(k3, v2);
        mapZzb.put(k4, v3);
        return Collections.unmodifiableMap(mapZzb);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5, K k7, V v6) {
        Map mapZzb = zzb(6, false);
        mapZzb.put(k2, v);
        mapZzb.put(k3, v2);
        mapZzb.put(k4, v3);
        mapZzb.put(k5, v4);
        mapZzb.put(k6, v5);
        mapZzb.put(k7, v6);
        return Collections.unmodifiableMap(mapZzb);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOfKeyValueArrays(K[] kArr, V[] vArr) {
        if (kArr.length != vArr.length) {
            int length = kArr.length;
            int length2 = vArr.length;
            StringBuilder sb = new StringBuilder(66);
            sb.append("Key and values array lengths not equal: ");
            sb.append(length);
            sb.append(" != ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        }
        int length3 = kArr.length;
        if (length3 == 0) {
            return Collections.emptyMap();
        }
        if (length3 == 1) {
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        Map mapZzb = zzb(kArr.length, false);
        for (int i2 = 0; i2 < kArr.length; i2++) {
            mapZzb.put(kArr[i2], vArr[i2]);
        }
        return Collections.unmodifiableMap(mapZzb);
    }

    @KeepForSdk
    public static <T> Set<T> mutableSetOfWithSize(int i2) {
        return i2 == 0 ? new b() : zza(i2, true);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(T t, T t2, T t3) {
        Set setZza = zza(3, false);
        setZza.add(t);
        setZza.add(t2);
        setZza.add(t3);
        return Collections.unmodifiableSet(setZza);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set setZza = zza(2, false);
            setZza.add(t);
            setZza.add(t2);
            return Collections.unmodifiableSet(setZza);
        }
        if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set setZza2 = zza(tArr.length, false);
            Collections.addAll(setZza2, tArr);
            return Collections.unmodifiableSet(setZza2);
        }
        T t3 = tArr[0];
        T t4 = tArr[1];
        T t5 = tArr[2];
        T t6 = tArr[3];
        Set setZza3 = zza(4, false);
        setZza3.add(t3);
        setZza3.add(t4);
        setZza3.add(t5);
        setZza3.add(t6);
        return Collections.unmodifiableSet(setZza3);
    }

    private static <T> Set<T> zza(int i2, boolean z) {
        return i2 <= (z ? 128 : 256) ? new b(i2) : new HashSet(i2, z ? 0.75f : 1.0f);
    }

    private static <K, V> Map<K, V> zzb(int i2, boolean z) {
        return i2 <= 256 ? new a(i2) : new HashMap(i2, 1.0f);
    }
}
