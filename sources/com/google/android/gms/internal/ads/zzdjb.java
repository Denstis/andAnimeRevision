package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum zzdjb implements zzdra {
    UNKNOWN_CURVE(0),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    UNRECOGNIZED(-1);

    private static final zzdqz<zzdjb> zzeg = new zzdqz<zzdjb>() { // from class: com.google.android.gms.internal.ads.zzdjd
    };
    private final int value;

    zzdjb(int i2) {
        this.value = i2;
    }

    public static zzdjb zzej(int i2) {
        if (i2 == 0) {
            return UNKNOWN_CURVE;
        }
        if (i2 == 2) {
            return NIST_P256;
        }
        if (i2 == 3) {
            return NIST_P384;
        }
        if (i2 != 4) {
            return null;
        }
        return NIST_P521;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(zzdjb.class.getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zzab());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdra
    public final int zzab() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
