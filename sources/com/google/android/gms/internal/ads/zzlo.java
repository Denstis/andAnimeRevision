package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
final class zzlo {
    private final zziy zzapk;
    private final zziw[] zzbaz;
    private zziw zzbba;

    public zzlo(zziw[] zziwVarArr, zziy zziyVar) {
        this.zzbaz = zziwVarArr;
        this.zzapk = zziyVar;
    }

    public final void release() {
        zziw zziwVar = this.zzbba;
        if (zziwVar != null) {
            zziwVar.release();
            this.zzbba = null;
        }
    }

    public final zziw zza(zziv zzivVar, Uri uri) throws zzmj {
        zziw zziwVar = this.zzbba;
        if (zziwVar != null) {
            return zziwVar;
        }
        zziw[] zziwVarArr = this.zzbaz;
        int length = zziwVarArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            zziw zziwVar2 = zziwVarArr[i2];
            try {
                if (zziwVar2.zza(zzivVar)) {
                    this.zzbba = zziwVar2;
                    zzivVar.zzgb();
                    break;
                }
                continue;
            } catch (EOFException unused) {
            } catch (Throwable th) {
                zzivVar.zzgb();
                throw th;
            }
            zzivVar.zzgb();
            i2++;
        }
        zziw zziwVar3 = this.zzbba;
        if (zziwVar3 != null) {
            zziwVar3.zza(this.zzapk);
            return this.zzbba;
        }
        String strZza = zzof.zza(this.zzbaz);
        StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(strZza);
        sb.append(") could read the stream.");
        throw new zzmj(sb.toString(), uri);
    }
}
