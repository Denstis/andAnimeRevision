package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzdam {
    private final String className;
    private final zzdap zzgor;
    private zzdap zzgos;
    private boolean zzgot;

    private zzdam(String str) {
        this.zzgor = new zzdap();
        this.zzgos = this.zzgor;
        this.zzgot = false;
        this.className = (String) zzdaq.checkNotNull(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.className);
        sb.append('{');
        zzdap zzdapVar = this.zzgor.zzgou;
        String str = "";
        while (zzdapVar != null) {
            Object obj = zzdapVar.value;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            zzdapVar = zzdapVar.zzgou;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzdam zzy(Object obj) {
        zzdap zzdapVar = new zzdap();
        this.zzgos.zzgou = zzdapVar;
        this.zzgos = zzdapVar;
        zzdapVar.value = obj;
        return this;
    }
}
