package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class zzqo {
    @VisibleForTesting
    private static long zza(long j2, int i2) {
        if (i2 == 0) {
            return 1L;
        }
        if (i2 == 1) {
            return j2;
        }
        return (i2 % 2 == 0 ? zza((j2 * j2) % 1073807359, i2 / 2) : j2 * (zza((j2 * j2) % 1073807359, i2 / 2) % 1073807359)) % 1073807359;
    }

    @VisibleForTesting
    private static String zza(String[] strArr, int i2, int i3) {
        int i4 = i3 + i2;
        if (strArr.length < i4) {
            zzaxi.zzes("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i5 = i4 - 1;
            if (i2 >= i5) {
                sb.append(strArr[i5]);
                return sb.toString();
            }
            sb.append(strArr[i2]);
            sb.append(' ');
            i2++;
        }
    }

    @VisibleForTesting
    private static void zza(int i2, long j2, String str, int i3, PriorityQueue<zzqn> priorityQueue) {
        zzqn zzqnVar = new zzqn(j2, str, i3);
        if ((priorityQueue.size() != i2 || (priorityQueue.peek().zzbqf <= zzqnVar.zzbqf && priorityQueue.peek().value <= zzqnVar.value)) && !priorityQueue.contains(zzqnVar)) {
            priorityQueue.add(zzqnVar);
            if (priorityQueue.size() > i2) {
                priorityQueue.poll();
            }
        }
    }

    public static void zza(String[] strArr, int i2, int i3, PriorityQueue<zzqn> priorityQueue) {
        if (strArr.length < i3) {
            zza(i2, zzb(strArr, 0, strArr.length), zza(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long jZzb = zzb(strArr, 0, i3);
        zza(i2, jZzb, zza(strArr, 0, i3), i3, priorityQueue);
        long jZza = zza(16785407L, i3 - 1);
        for (int i4 = 1; i4 < (strArr.length - i3) + 1; i4++) {
            jZzb = ((((((jZzb + 1073807359) - ((((((long) zzqj.zzbs(strArr[i4 - 1])) + 2147483647L) % 1073807359) * jZza) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((((long) zzqj.zzbs(strArr[(i4 + i3) - 1])) + 2147483647L) % 1073807359)) % 1073807359;
            zza(i2, jZzb, zza(strArr, i4, i3), strArr.length, priorityQueue);
        }
    }

    private static long zzb(String[] strArr, int i2, int i3) {
        long jZzbs = (((long) zzqj.zzbs(strArr[0])) + 2147483647L) % 1073807359;
        for (int i4 = 1; i4 < i3; i4++) {
            jZzbs = (((jZzbs * 16785407) % 1073807359) + ((((long) zzqj.zzbs(strArr[i4])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return jZzbs;
    }
}
