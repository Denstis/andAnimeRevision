package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzbv implements zzdra {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3);

    private static final zzdqz<zzbv> zzeg = new zzdqz<zzbv>() { // from class: com.google.android.gms.internal.ads.zzbx
    };
    private final int value;

    zzbv(int i2) {
        this.value = i2;
    }

    public static zzdrc zzac() {
        return zzbw.zzep;
    }

    public static zzbv zzi(int i2) {
        if (i2 == 0) {
            return UNKNOWN_ENCRYPTION_METHOD;
        }
        if (i2 == 1) {
            return BITSLICER;
        }
        if (i2 == 2) {
            return TINK_HYBRID;
        }
        if (i2 != 3) {
            return null;
        }
        return UNENCRYPTED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzbv.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        return this.value;
    }
}
