package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzsv implements zzdra {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);

    private static final zzdqz<zzsv> zzeg = new zzdqz<zzsv>() { // from class: com.google.android.gms.internal.ads.zzsu
    };
    private final int value;

    zzsv(int i2) {
        this.value = i2;
    }

    public static zzdrc zzac() {
        return zzsw.zzep;
    }

    public static zzsv zzbt(int i2) {
        if (i2 == 0) {
            return ENUM_FALSE;
        }
        if (i2 == 1) {
            return ENUM_TRUE;
        }
        if (i2 != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzsv.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        return this.value;
    }
}
