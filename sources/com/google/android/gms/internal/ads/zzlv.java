package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzlv implements zzlu {
    private final zzlu[] zzbbf;
    private final ArrayList<zzlu> zzbbg;
    private zzlt zzbbh;
    private zzgy zzbbi;
    private Object zzbbj;
    private zzlx zzbbl;
    private final zzhd zzacv = new zzhd();
    private int zzbbk = -1;

    public zzlv(zzlu... zzluVarArr) {
        this.zzbbf = zzluVarArr;
        this.zzbbg = new ArrayList<>(Arrays.asList(zzluVarArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i2, zzgy zzgyVar, Object obj) {
        zzlx zzlxVar;
        if (this.zzbbl == null) {
            int iZzep = zzgyVar.zzep();
            int i3 = 0;
            while (true) {
                if (i3 >= iZzep) {
                    if (this.zzbbk == -1) {
                        this.zzbbk = zzgyVar.zzeq();
                    } else if (zzgyVar.zzeq() != this.zzbbk) {
                        zzlxVar = new zzlx(1);
                    }
                    zzlxVar = null;
                } else {
                    if (zzgyVar.zza(i3, this.zzacv, false).zzagt) {
                        zzlxVar = new zzlx(0);
                        break;
                    }
                    i3++;
                }
            }
            this.zzbbl = zzlxVar;
        }
        if (this.zzbbl != null) {
            return;
        }
        this.zzbbg.remove(this.zzbbf[i2]);
        if (i2 == 0) {
            this.zzbbi = zzgyVar;
            this.zzbbj = obj;
        }
        if (this.zzbbg.isEmpty()) {
            this.zzbbh.zzb(this.zzbbi, this.zzbbj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final zzls zza(int i2, zznc zzncVar) {
        zzls[] zzlsVarArr = new zzls[this.zzbbf.length];
        for (int i3 = 0; i3 < zzlsVarArr.length; i3++) {
            zzlsVarArr[i3] = this.zzbbf[i3].zza(i2, zzncVar);
        }
        return new zzlw(zzlsVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zza(zzgc zzgcVar, boolean z, zzlt zzltVar) {
        this.zzbbh = zzltVar;
        int i2 = 0;
        while (true) {
            zzlu[] zzluVarArr = this.zzbbf;
            if (i2 >= zzluVarArr.length) {
                return;
            }
            zzluVarArr[i2].zza(zzgcVar, false, new zzly(this, i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzb(zzls zzlsVar) {
        zzlw zzlwVar = (zzlw) zzlsVar;
        int i2 = 0;
        while (true) {
            zzlu[] zzluVarArr = this.zzbbf;
            if (i2 >= zzluVarArr.length) {
                return;
            }
            zzluVarArr[i2].zzb(zzlwVar.zzbbm[i2]);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzhl() throws zzlx {
        zzlx zzlxVar = this.zzbbl;
        if (zzlxVar != null) {
            throw zzlxVar;
        }
        for (zzlu zzluVar : this.zzbbf) {
            zzluVar.zzhl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzhm() {
        for (zzlu zzluVar : this.zzbbf) {
            zzluVar.zzhm();
        }
    }
}
