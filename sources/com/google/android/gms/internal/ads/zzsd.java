package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzsf;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzsd {
    private final zzsi zzbsa;
    private final zztl zzbsb;
    private final boolean zzbsc;

    private zzsd() {
        this.zzbsc = false;
        this.zzbsa = new zzsi();
        this.zzbsb = new zztl();
        zzmn();
    }

    public zzsd(zzsi zzsiVar) {
        this.zzbsa = zzsiVar;
        this.zzbsc = ((Boolean) zzuv.zzon().zzd(zzza.zzcql)).booleanValue();
        this.zzbsb = new zztl();
        zzmn();
    }

    private final synchronized void zzb(zzsf.zza.EnumC0165zza enumC0165zza) {
        this.zzbsb.zzcat = zzmo();
        this.zzbsa.zzf(zzdus.zzb(this.zzbsb)).zzbq(enumC0165zza.zzab()).zzdh();
        String strValueOf = String.valueOf(Integer.toString(enumC0165zza.zzab(), 10));
        zzaug.zzdy(strValueOf.length() != 0 ? "Logging Event with event code : ".concat(strValueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void zzc(zzsf.zza.EnumC0165zza enumC0165zza) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(zzd(enumC0165zza).getBytes());
                } catch (IOException unused) {
                    zzaug.zzdy("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                        zzaug.zzdy("Could not close Clearcut output stream.");
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                    zzaug.zzdy("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused4) {
            zzaug.zzdy("Could not find file for Clearcut");
        }
    }

    private final synchronized String zzd(zzsf.zza.EnumC0165zza enumC0165zza) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzbsb.zzcap, Long.valueOf(com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime()), Integer.valueOf(enumC0165zza.zzab()), Base64.encodeToString(zzdus.zzb(this.zzbsb), 3));
    }

    public static zzsd zzmm() {
        return new zzsd();
    }

    private final synchronized void zzmn() {
        this.zzbsb.zzcax = new zzth();
        this.zzbsb.zzcax.zzbzv = new zztg();
        this.zzbsb.zzcau = new zztj();
    }

    private static long[] zzmo() {
        int i2;
        List<String> listZzps = zzza.zzps();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = listZzps.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            String[] strArrSplit = it.next().split(",");
            int length = strArrSplit.length;
            while (i2 < length) {
                try {
                    arrayList.add(Long.valueOf(strArrSplit[i2]));
                } catch (NumberFormatException unused) {
                    zzaug.zzdy("Experiment ID is not a number");
                }
                i2++;
            }
        }
        long[] jArr = new long[arrayList.size()];
        int size = arrayList.size();
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            jArr[i3] = ((Long) obj).longValue();
            i3++;
        }
        return jArr;
    }

    public final synchronized void zza(zzsf.zza.EnumC0165zza enumC0165zza) {
        if (this.zzbsc) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqm)).booleanValue()) {
                zzc(enumC0165zza);
            } else {
                zzb(enumC0165zza);
            }
        }
    }

    public final synchronized void zza(zzsg zzsgVar) {
        if (this.zzbsc) {
            try {
                zzsgVar.zza(this.zzbsb);
            } catch (NullPointerException e2) {
                com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "AdMobClearcutLogger.modify");
            }
        }
    }
}
