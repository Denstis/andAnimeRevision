package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzjr extends zzjs {
    public final long zzaqu;
    public final List<zzju> zzaqv;
    public final List<zzjr> zzaqw;

    public zzjr(int i2, long j2) {
        super(i2);
        this.zzaqu = j2;
        this.zzaqv = new ArrayList();
        this.zzaqw = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzjs
    public final String toString() {
        String strZzao = zzjs.zzao(this.type);
        String string = Arrays.toString(this.zzaqv.toArray());
        String string2 = Arrays.toString(this.zzaqw.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(strZzao).length() + 22 + String.valueOf(string).length() + String.valueOf(string2).length());
        sb.append(strZzao);
        sb.append(" leaves: ");
        sb.append(string);
        sb.append(" containers: ");
        sb.append(string2);
        return sb.toString();
    }

    public final zzju zzak(int i2) {
        int size = this.zzaqv.size();
        for (int i3 = 0; i3 < size; i3++) {
            zzju zzjuVar = this.zzaqv.get(i3);
            if (zzjuVar.type == i2) {
                return zzjuVar;
            }
        }
        return null;
    }

    public final zzjr zzal(int i2) {
        int size = this.zzaqw.size();
        for (int i3 = 0; i3 < size; i3++) {
            zzjr zzjrVar = this.zzaqw.get(i3);
            if (zzjrVar.type == i2) {
                return zzjrVar;
            }
        }
        return null;
    }
}
