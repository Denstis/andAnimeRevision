package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzqn {
    final long value;
    final int zzbqf;
    final String zzbqm;

    zzqn(long j2, String str, int i2) {
        this.value = j2;
        this.zzbqm = str;
        this.zzbqf = i2;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzqn)) {
            zzqn zzqnVar = (zzqn) obj;
            if (zzqnVar.value == this.value && zzqnVar.zzbqf == this.zzbqf) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
