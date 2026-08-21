package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzdd<T> implements zzcz<T>, Serializable {
    private final T zza;

    zzdd(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdd)) {
            return false;
        }
        T t = this.zza;
        T t2 = ((zzdd) obj).zza;
        if (t != t2) {
            return t != null && t.equals(t2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final T zza() {
        return this.zza;
    }
}
