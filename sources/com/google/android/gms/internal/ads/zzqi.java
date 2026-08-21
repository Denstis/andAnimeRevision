package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class zzqi {
    private final int zzbqg;
    private final zzqf zzbqi = new zzqm();
    private final int zzbqf = 6;
    private final int zzbqh = 0;

    public zzqi(int i2) {
        this.zzbqg = i2;
    }

    @VisibleForTesting
    private final String zzbr(String str) {
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        zzqk zzqkVar = new zzqk();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbqg, new zzqh(this));
        for (String str2 : strArrSplit) {
            String[] strArrZze = zzqj.zze(str2, false);
            if (strArrZze.length != 0) {
                zzqo.zza(strArrZze, this.zzbqg, this.zzbqf, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzqkVar.write(this.zzbqi.zzbq(((zzqn) it.next()).zzbqm));
            } catch (IOException e2) {
                zzaxi.zzc("Error while writing hash to byteStream", e2);
            }
        }
        return zzqkVar.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList.get(i2);
            i2++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return zzbr(sb.toString());
    }
}
