package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzdbj<E> extends zzdbb<E> {
    private int zzafv;
    private Object[] zzgpl;

    public zzdbj() {
        super(4);
    }

    zzdbj(int i2) {
        super(i2);
        this.zzgpl = new Object[zzdbg.zzdr(i2)];
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final /* synthetic */ zzdba zza(Iterator it) {
        zzdaq.checkNotNull(it);
        while (it.hasNext()) {
            zzab(it.next());
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdbb, com.google.android.gms.internal.ads.zzdba
    public final /* synthetic */ zzdba zzab(Object obj) {
        zzdaq.checkNotNull(obj);
        if (this.zzgpl != null) {
            int iZzdr = zzdbg.zzdr(this.size);
            Object[] objArr = this.zzgpl;
            if (iZzdr <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iZzdp = zzdaz.zzdp(iHashCode);
                while (true) {
                    int i2 = iZzdp & length;
                    Object[] objArr2 = this.zzgpl;
                    Object obj2 = objArr2[i2];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iZzdp = i2 + 1;
                    } else {
                        objArr2[i2] = obj;
                        this.zzafv += iHashCode;
                        super.zzab(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzgpl = null;
        super.zzab(obj);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    /* JADX INFO: renamed from: zzac */
    public final /* synthetic */ zzdbb zzab(Object obj) {
        return (zzdbj) zzab(obj);
    }

    public final zzdbg<E> zzaov() {
        zzdbg<E> zzdbgVarZza;
        int i2 = this.size;
        if (i2 == 0) {
            return zzdbt.zzgpu;
        }
        if (i2 == 1) {
            return zzdbg.zzae(this.zzgoz[0]);
        }
        if (this.zzgpl == null || zzdbg.zzdr(i2) != this.zzgpl.length) {
            zzdbgVarZza = zzdbg.zza(this.size, this.zzgoz);
            this.size = zzdbgVarZza.size();
        } else {
            Object[] objArrCopyOf = zzdbg.zzu(this.size, this.zzgoz.length) ? Arrays.copyOf(this.zzgoz, this.size) : this.zzgoz;
            zzdbgVarZza = new zzdbt<>(objArrCopyOf, this.zzafv, this.zzgpl, r5.length - 1, this.size);
        }
        this.zzgpa = true;
        this.zzgpl = null;
        return zzdbgVarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzdbb, com.google.android.gms.internal.ads.zzdba
    public final /* synthetic */ zzdba zze(Iterable iterable) {
        zzdaq.checkNotNull(iterable);
        if (this.zzgpl != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzab(it.next());
            }
        } else {
            super.zze(iterable);
        }
        return this;
    }
}
