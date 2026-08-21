package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzpw {

    @VisibleForTesting
    private int zzbpa;
    private final Object lock = new Object();
    private List<zzpt> zzbpb = new LinkedList();

    public final boolean zza(zzpt zzptVar) {
        synchronized (this.lock) {
            return this.zzbpb.contains(zzptVar);
        }
    }

    public final boolean zzb(zzpt zzptVar) {
        synchronized (this.lock) {
            Iterator<zzpt> it = this.zzbpb.iterator();
            while (it.hasNext()) {
                zzpt next = it.next();
                if (com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzuy()) {
                    if (!com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzva() && zzptVar != next && next.zzln().equals(zzptVar.zzln())) {
                        it.remove();
                        return true;
                    }
                } else if (zzptVar != next && next.zzll().equals(zzptVar.zzll())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzpt zzptVar) {
        synchronized (this.lock) {
            if (this.zzbpb.size() >= 10) {
                int size = this.zzbpb.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzaxi.zzdv(sb.toString());
                this.zzbpb.remove(0);
            }
            int i2 = this.zzbpa;
            this.zzbpa = i2 + 1;
            zzptVar.zzbo(i2);
            zzptVar.zzlr();
            this.zzbpb.add(zzptVar);
        }
    }

    public final zzpt zzn(boolean z) {
        synchronized (this.lock) {
            zzpt zzptVar = null;
            if (this.zzbpb.size() == 0) {
                zzaxi.zzdv("Queue empty");
                return null;
            }
            int i2 = 0;
            if (this.zzbpb.size() < 2) {
                zzpt zzptVar2 = this.zzbpb.get(0);
                if (z) {
                    this.zzbpb.remove(0);
                } else {
                    zzptVar2.zzlo();
                }
                return zzptVar2;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = 0;
            for (zzpt zzptVar3 : this.zzbpb) {
                int score = zzptVar3.getScore();
                if (score > i3) {
                    i2 = i4;
                    zzptVar = zzptVar3;
                    i3 = score;
                }
                i4++;
            }
            this.zzbpb.remove(i2);
            return zzptVar;
        }
    }
}
