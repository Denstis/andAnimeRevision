package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzao {
    long zzcd;
    final String zzce;
    final String zzg;
    final long zzh;
    final long zzi;
    final long zzj;
    final long zzk;
    final List<zzk> zzm;

    /* JADX WARN: Illegal instructions before constructor call */
    zzao(String str, zzd zzdVar) {
        String str2 = zzdVar.zzg;
        long j2 = zzdVar.zzh;
        long j3 = zzdVar.zzi;
        long j4 = zzdVar.zzj;
        long j5 = zzdVar.zzk;
        List arrayList = zzdVar.zzm;
        if (arrayList == null) {
            Map<String, String> map = zzdVar.zzl;
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new zzk(entry.getKey(), entry.getValue()));
            }
        }
        this(str, str2, j2, j3, j4, j5, arrayList);
    }

    private zzao(String str, String str2, long j2, long j3, long j4, long j5, List<zzk> list) {
        this.zzce = str;
        this.zzg = "".equals(str2) ? null : str2;
        this.zzh = j2;
        this.zzi = j3;
        this.zzj = j4;
        this.zzk = j5;
        this.zzm = list;
    }

    static zzao zzc(zzan zzanVar) throws IOException {
        if (zzal.zzb((InputStream) zzanVar) == 538247942) {
            return new zzao(zzal.zza(zzanVar), zzal.zza(zzanVar), zzal.zzc(zzanVar), zzal.zzc(zzanVar), zzal.zzc(zzanVar), zzal.zzc(zzanVar), zzal.zzb(zzanVar));
        }
        throw new IOException();
    }

    final boolean zza(OutputStream outputStream) {
        try {
            zzal.zza(outputStream, 538247942);
            zzal.zza(outputStream, this.zzce);
            zzal.zza(outputStream, this.zzg == null ? "" : this.zzg);
            zzal.zza(outputStream, this.zzh);
            zzal.zza(outputStream, this.zzi);
            zzal.zza(outputStream, this.zzj);
            zzal.zza(outputStream, this.zzk);
            List<zzk> list = this.zzm;
            if (list != null) {
                zzal.zza(outputStream, list.size());
                for (zzk zzkVar : list) {
                    zzal.zza(outputStream, zzkVar.getName());
                    zzal.zza(outputStream, zzkVar.getValue());
                }
            } else {
                zzal.zza(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e2) {
            zzag.d("%s", e2.toString());
            return false;
        }
    }
}
