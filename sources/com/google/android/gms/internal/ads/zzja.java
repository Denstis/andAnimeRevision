package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzkx;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzja {
    private static final zzlb zzamy = new zziz();
    private static final Pattern zzamz = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zzafp = -1;
    public int zzafq = -1;

    private final boolean zzd(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = zzamz.matcher(str2);
        if (matcher.find()) {
            try {
                int i2 = Integer.parseInt(matcher.group(1), 16);
                int i3 = Integer.parseInt(matcher.group(2), 16);
                if (i2 > 0 || i3 > 0) {
                    this.zzafp = i2;
                    this.zzafq = i3;
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public final boolean zzb(zzkx zzkxVar) {
        for (int i2 = 0; i2 < zzkxVar.length(); i2++) {
            zzkx.zza zzaVarZzar = zzkxVar.zzar(i2);
            if (zzaVarZzar instanceof zzkz) {
                zzkz zzkzVar = (zzkz) zzaVarZzar;
                if (zzd(zzkzVar.description, zzkzVar.zzazq)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean zzgf() {
        return (this.zzafp == -1 || this.zzafq == -1) ? false : true;
    }
}
