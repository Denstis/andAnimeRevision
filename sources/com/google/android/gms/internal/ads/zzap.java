package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzap {
    private final int zzcf;
    private final List<zzk> zzcg;
    private final int zzch;
    private final InputStream zzci;

    public zzap(int i2, List<zzk> list) {
        this(i2, list, -1, null);
    }

    public zzap(int i2, List<zzk> list, int i3, InputStream inputStream) {
        this.zzcf = i2;
        this.zzcg = list;
        this.zzch = i3;
        this.zzci = inputStream;
    }

    public final InputStream getContent() {
        return this.zzci;
    }

    public final int getContentLength() {
        return this.zzch;
    }

    public final int getStatusCode() {
        return this.zzcf;
    }

    public final List<zzk> zzo() {
        return Collections.unmodifiableList(this.zzcg);
    }
}
