package com.google.android.gms.internal.measurement;

import android.net.Uri;
import b.e.a;

/* JADX INFO: loaded from: classes.dex */
public final class zzcm {
    private static final a<String, Uri> zza = new a<>();

    public static synchronized Uri zza(String str) {
        Uri uri;
        uri = zza.get(str);
        if (uri == null) {
            String strValueOf = String.valueOf(Uri.encode(str));
            uri = Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
            zza.put(str, uri);
        }
        return uri;
    }
}
