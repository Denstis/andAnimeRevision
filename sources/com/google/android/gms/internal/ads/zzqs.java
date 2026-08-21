package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class zzqs implements Comparator<zzqg> {
    public zzqs(zzqp zzqpVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzqg zzqgVar, zzqg zzqgVar2) {
        zzqg zzqgVar3 = zzqgVar;
        zzqg zzqgVar4 = zzqgVar2;
        if (zzqgVar3.zzmb() < zzqgVar4.zzmb()) {
            return -1;
        }
        if (zzqgVar3.zzmb() > zzqgVar4.zzmb()) {
            return 1;
        }
        if (zzqgVar3.zzma() < zzqgVar4.zzma()) {
            return -1;
        }
        if (zzqgVar3.zzma() > zzqgVar4.zzma()) {
            return 1;
        }
        float fZzmd = (zzqgVar3.zzmd() - zzqgVar3.zzmb()) * (zzqgVar3.zzmc() - zzqgVar3.zzma());
        float fZzmd2 = (zzqgVar4.zzmd() - zzqgVar4.zzmb()) * (zzqgVar4.zzmc() - zzqgVar4.zzma());
        if (fZzmd > fZzmd2) {
            return -1;
        }
        return fZzmd < fZzmd2 ? 1 : 0;
    }
}
