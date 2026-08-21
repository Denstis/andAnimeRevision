package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzca implements zzdra {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);

    private static final zzdqz<zzca> zzeg = new zzdqz<zzca>() { // from class: com.google.android.gms.internal.ads.zzcd
    };
    private final int value;

    zzca(int i2) {
        this.value = i2;
    }

    public static zzdrc zzac() {
        return zzcc.zzep;
    }

    public static zzca zzk(int i2) {
        if (i2 == 0) {
            return UNKNOWN_PROTO;
        }
        if (i2 == 1) {
            return AFMA_SIGNALS;
        }
        if (i2 == 2) {
            return UNITY_SIGNALS;
        }
        if (i2 != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzca.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        return this.value;
    }
}
