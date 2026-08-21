package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class zzdpp extends zzdpr {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzdpm zzhge;

    zzdpp(zzdpm zzdpmVar) {
        this.zzhge = zzdpmVar;
        this.limit = this.zzhge.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzdpv
    public final byte nextByte() {
        int i2 = this.position;
        if (i2 >= this.limit) {
            throw new NoSuchElementException();
        }
        this.position = i2 + 1;
        return this.zzhge.zzfn(i2);
    }
}
