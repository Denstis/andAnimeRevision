package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzga {
    public static final int CHANNEL_OUT_7POINT1_SURROUND;
    public static final UUID zzaca;
    private static final UUID zzacb;
    private static final UUID zzacc;
    private static final UUID zzacd;

    static {
        CHANNEL_OUT_7POINT1_SURROUND = zzof.SDK_INT < 23 ? 1020 : 6396;
        zzaca = new UUID(0L, 0L);
        zzacb = new UUID(1186680826959645954L, -5988876978535335093L);
        zzacc = new UUID(-1301668207276963122L, -6645017420763422227L);
        zzacd = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long zzdg(long j2) {
        return j2 == C.TIME_UNSET ? C.TIME_UNSET : j2 / 1000;
    }

    public static long zzdh(long j2) {
        return j2 == C.TIME_UNSET ? C.TIME_UNSET : j2 * 1000;
    }
}
