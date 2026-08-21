package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzpk {
    private final long timestamp;
    public final boolean zzbnp;
    private final boolean zzbnx;
    public final boolean zzbny;
    public final Rect zzbnz;
    public final Rect zzboa;
    public final Rect zzbob;
    public final boolean zzboc;
    public final Rect zzbod;
    public final boolean zzboe;
    public final Rect zzbof;
    private final float zzbog;
    public final List<Rect> zzboh;
    public final int zzzk;

    public zzpk(long j2, boolean z, boolean z2, int i2, Rect rect, Rect rect2, Rect rect3, boolean z3, Rect rect4, boolean z4, Rect rect5, float f2, boolean z5, List<Rect> list) {
        this.timestamp = j2;
        this.zzbnx = z;
        this.zzbny = z2;
        this.zzzk = i2;
        this.zzbnz = rect;
        this.zzboa = rect2;
        this.zzbob = rect3;
        this.zzboc = z3;
        this.zzbod = rect4;
        this.zzboe = z4;
        this.zzbof = rect5;
        this.zzbog = f2;
        this.zzbnp = z5;
        this.zzboh = list;
    }
}
