package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class zzdpo implements Comparator<zzdpm> {
    zzdpo() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdpm zzdpmVar, zzdpm zzdpmVar2) {
        zzdpm zzdpmVar3 = zzdpmVar;
        zzdpm zzdpmVar4 = zzdpmVar2;
        zzdpv zzdpvVar = (zzdpv) zzdpmVar3.iterator();
        zzdpv zzdpvVar2 = (zzdpv) zzdpmVar4.iterator();
        while (zzdpvVar.hasNext() && zzdpvVar2.hasNext()) {
            int iCompare = Integer.compare(zzdpm.zzb(zzdpvVar.nextByte()), zzdpm.zzb(zzdpvVar2.nextByte()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzdpmVar3.size(), zzdpmVar4.size());
    }
}
