package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdat<T> extends zzdar<T> {
    private final T zzczg;

    zzdat(T t) {
        this.zzczg = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzdat) {
            return this.zzczg.equals(((zzdat) obj).zzczg);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzczg.hashCode() + 1502476572;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzczg);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdar
    public final T zzaof() {
        return this.zzczg;
    }
}
