package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzcw<T> extends zzcy<T> {
    static final zzcw<Object> zza = new zzcw<>();

    private zzcw() {
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final boolean zza() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final T zzb() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }
}
