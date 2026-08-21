package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class zzdoz extends WeakReference<Throwable> {
    private final int zzhfj;

    public zzdoz(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.zzhfj = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzdoz.class) {
            if (this == obj) {
                return true;
            }
            zzdoz zzdozVar = (zzdoz) obj;
            if (this.zzhfj == zzdozVar.zzhfj && get() == zzdozVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzhfj;
    }
}
