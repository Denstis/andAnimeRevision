package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbo;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzem extends zzfl {
    private static final zzfk<zzcf> zzzt = new zzfk<>();
    private final Context zzzu;
    private zzbk.zza zzzv;

    public zzem(zzdx zzdxVar, String str, String str2, zzbo.zza.zzb zzbVar, int i2, int i3, Context context, zzbk.zza zzaVar) {
        super(zzdxVar, str, str2, zzbVar, i2, 27);
        this.zzzv = null;
        this.zzzu = context;
        this.zzzv = zzaVar;
    }

    private static String zza(zzbk.zza zzaVar) {
        if (zzaVar == null || !zzaVar.zzv() || zzee.zzat(zzaVar.zzw().zzad())) {
            return null;
        }
        return zzaVar.zzw().zzad();
    }

    private final String zzcv() {
        try {
            if (this.zzvo.zzcn() != null) {
                this.zzvo.zzcn().get();
            }
            zzbo.zza zzaVarZzcm = this.zzvo.zzcm();
            if (zzaVarZzcm == null || !zzaVarZzcm.zzah()) {
                return null;
            }
            return zzaVarZzcm.zzad();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfl
    protected final void zzcu() {
        zzcf zzcfVar;
        zzbm zzbmVar;
        String strZzad;
        AtomicReference<zzcf> atomicReferenceZzau = zzzt.zzau(this.zzzu.getPackageName());
        synchronized (atomicReferenceZzau) {
            zzcf zzcfVar2 = atomicReferenceZzau.get();
            if (zzcfVar2 == null || zzee.zzat(zzcfVar2.zzno) || zzcfVar2.zzno.equals("E") || zzcfVar2.zzno.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (zzee.zzat(zza(this.zzzv))) {
                    zzbk.zza zzaVar = this.zzzv;
                    zzbmVar = (Boolean.valueOf(zzee.zzat(zza(zzaVar)) && zzaVar != null && zzaVar.zzt() && zzaVar.zzu().zzy() == zzbm.ENUM_SIGNAL_SOURCE_GASS).booleanValue() && this.zzvo.zzck()) ? zzbm.ENUM_SIGNAL_SOURCE_GASS : zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD;
                } else {
                    zzbmVar = zzbm.ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
                }
                Method method = this.zzaal;
                Object[] objArr = new Object[3];
                objArr[0] = this.zzzu;
                objArr[1] = Boolean.valueOf(zzbmVar == zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD);
                objArr[2] = zzuv.zzon().zzd(zzza.zzcnf);
                zzcf zzcfVar3 = new zzcf((String) method.invoke(null, objArr));
                if (zzee.zzat(zzcfVar3.zzno) || zzcfVar3.zzno.equals("E")) {
                    int i2 = zzep.zzzx[zzbmVar.ordinal()];
                    if (i2 == 1) {
                        strZzad = this.zzzv.zzw().zzad();
                    } else if (i2 == 2) {
                        strZzad = zzcv();
                        if (!zzee.zzat(strZzad)) {
                        }
                    }
                    zzcfVar3.zzno = strZzad;
                }
                atomicReferenceZzau.set(zzcfVar3);
            }
            zzcfVar = atomicReferenceZzau.get();
        }
        synchronized (this.zzaaa) {
            if (zzcfVar != null) {
                this.zzaaa.zzab(zzcfVar.zzno);
                this.zzaaa.zzba(zzcfVar.zznp);
                this.zzaaa.zzad(zzcfVar.zznq);
                this.zzaaa.zzae(zzcfVar.zznr);
                this.zzaaa.zzaf(zzcfVar.zzns);
            }
        }
    }
}
