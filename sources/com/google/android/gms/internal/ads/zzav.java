package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class zzav extends zzq<String> {
    private final Object mLock;
    private zzab<String> zzcm;

    public zzav(int i2, String str, zzab<String> zzabVar, zzy zzyVar) {
        super(i2, str, zzyVar);
        this.mLock = new Object();
        this.zzcm = zzabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzq
    protected final zzz<String> zza(zzo zzoVar) {
        String str;
        try {
            byte[] bArr = zzoVar.data;
            String str2 = "ISO-8859-1";
            String str3 = zzoVar.zzab.get("Content-Type");
            if (str3 != null) {
                String[] strArrSplit = str3.split(";", 0);
                int i2 = 1;
                while (true) {
                    if (i2 >= strArrSplit.length) {
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i2].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str2 = strArrSplit2[1];
                        break;
                    }
                    i2++;
                }
            }
            str = new String(bArr, str2);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzoVar.data);
        }
        return zzz.zza(str, zzaq.zzb(zzoVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzq
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public void zza(String str) {
        zzab<String> zzabVar;
        synchronized (this.mLock) {
            zzabVar = this.zzcm;
        }
        if (zzabVar != null) {
            zzabVar.zzb(str);
        }
    }
}
