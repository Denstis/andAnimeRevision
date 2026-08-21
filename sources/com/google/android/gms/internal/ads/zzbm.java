package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzbm implements zzdra {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);

    private static final zzdqz<zzbm> zzeg = new zzdqz<zzbm>() { // from class: com.google.android.gms.internal.ads.zzbl
    };
    private final int value;

    zzbm(int i2) {
        this.value = i2;
    }

    public static zzdrc zzac() {
        return zzbn.zzep;
    }

    public static zzbm zze(int i2) {
        if (i2 == 0) {
            return ENUM_SIGNAL_SOURCE_UNKNOWN;
        }
        if (i2 == 1) {
            return ENUM_SIGNAL_SOURCE_DISABLE;
        }
        if (i2 == 2) {
            return ENUM_SIGNAL_SOURCE_ADSHIELD;
        }
        if (i2 == 3) {
            return ENUM_SIGNAL_SOURCE_GASS;
        }
        if (i2 != 4) {
            return null;
        }
        return ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzbm.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        return this.value;
    }
}
