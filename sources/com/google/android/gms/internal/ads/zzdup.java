package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class zzdup {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Object zzhre = new Object();

    public static void zza(zzdul zzdulVar, zzdul zzdulVar2) {
        zzdun zzdunVar = zzdulVar.zzhqy;
        if (zzdunVar != null) {
            zzdulVar2.zzhqy = (zzdun) zzdunVar.clone();
        }
    }
}
