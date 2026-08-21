package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.MurmurHash3;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public final class zzqj {
    public static int zzbs(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes(C.UTF8_NAME);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        return MurmurHash3.murmurhash3_x86_32(bytes, 0, bytes.length, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] zze(java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqj.zze(java.lang.String, boolean):java.lang.String[]");
    }
}
