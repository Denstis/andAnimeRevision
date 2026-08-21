package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class zzqh implements Comparator<zzqn> {
    zzqh(zzqi zzqiVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzqn zzqnVar, zzqn zzqnVar2) {
        zzqn zzqnVar3 = zzqnVar;
        zzqn zzqnVar4 = zzqnVar2;
        int i2 = zzqnVar3.zzbqf - zzqnVar4.zzbqf;
        return i2 != 0 ? i2 : (int) (zzqnVar3.value - zzqnVar4.value);
    }
}
