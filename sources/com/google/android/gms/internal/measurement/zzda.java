package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzda<T> extends zzcy<T> {
    private final T zza;

    zzda(T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzda) {
            return this.zza.equals(((zzda) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final T zzb() {
        return this.zza;
    }
}
