package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzmn extends zzms {
    private static final int[] zzbdh = new int[0];
    private final zzmw zzbdi;
    private final AtomicReference<zzmq> zzbdj;

    public zzmn() {
        this(null);
    }

    private zzmn(zzmw zzmwVar) {
        this.zzbdi = null;
        this.zzbdj = new AtomicReference<>(new zzmq());
    }

    private static boolean zza(zzgo zzgoVar, String str) {
        return str != null && TextUtils.equals(str, zzof.zzbg(zzgoVar.zzaft));
    }

    private static int zzd(int i2, int i3) {
        if (i2 == -1) {
            return i3 == -1 ? 0 : -1;
        }
        if (i3 == -1) {
            return 1;
        }
        return i2 - i3;
    }

    private static boolean zze(int i2, boolean z) {
        int i3 = i2 & 3;
        if (i3 != 3) {
            return z && i3 == 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0189 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ac  */
    @Override // com.google.android.gms.internal.ads.zzms
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final com.google.android.gms.internal.ads.zzmt[] zza(com.google.android.gms.internal.ads.zzgw[] r37, com.google.android.gms.internal.ads.zzmk[] r38, int[][][] r39) {
        /*
            Method dump skipped, instruction units count: 1106
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmn.zza(com.google.android.gms.internal.ads.zzgw[], com.google.android.gms.internal.ads.zzmk[], int[][][]):com.google.android.gms.internal.ads.zzmt[]");
    }
}
