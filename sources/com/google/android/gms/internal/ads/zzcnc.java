package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzcnc {
    private String zzgdm;

    public static class zza {
        private String zzgdm;

        public final zza zzge(String str) {
            this.zzgdm = str;
            return this;
        }
    }

    private zzcnc(zza zzaVar) {
        this.zzgdm = zzaVar.zzgdm;
    }

    public final Set<String> zzals() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zzgdm.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzalt() {
        return this.zzgdm.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzalu() {
        /*
            r6 = this;
            java.lang.String r0 = r6.zzgdm
            int r1 = r0.hashCode()
            r2 = 0
            r3 = 2
            r4 = 3
            r5 = 1
            switch(r1) {
                case -1999289321: goto L2c;
                case -1372958932: goto L22;
                case 543046670: goto L18;
                case 1951953708: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L36
        Le:
            java.lang.String r1 = "BANNER"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 0
            goto L37
        L18:
            java.lang.String r1 = "REWARDED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 3
            goto L37
        L22:
            java.lang.String r1 = "INTERSTITIAL"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 1
            goto L37
        L2c:
            java.lang.String r1 = "NATIVE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 2
            goto L37
        L36:
            r0 = -1
        L37:
            if (r0 == 0) goto L45
            if (r0 == r5) goto L44
            if (r0 == r3) goto L42
            if (r0 == r4) goto L40
            return r2
        L40:
            r0 = 7
            return r0
        L42:
            r0 = 6
            return r0
        L44:
            return r4
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcnc.zzalu():int");
    }
}
