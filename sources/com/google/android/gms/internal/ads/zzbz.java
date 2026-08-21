package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzbz implements zzdra {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);

    private static final zzdqz<zzbz> zzeg = new zzdqz<zzbz>() { // from class: com.google.android.gms.internal.ads.zzby
    };
    private final int value;

    zzbz(int i2) {
        this.value = i2;
    }

    public static zzdrc zzac() {
        return zzcb.zzep;
    }

    public static zzbz zzj(int i2) {
        if (i2 == 0) {
            return ENUM_FALSE;
        }
        if (i2 == 1) {
            return ENUM_TRUE;
        }
        if (i2 == 2) {
            return ENUM_FAILURE;
        }
        if (i2 != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzbz.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        return this.value;
    }
}
