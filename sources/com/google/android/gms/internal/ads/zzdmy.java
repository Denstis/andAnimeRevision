package com.google.android.gms.internal.ads;

import java.security.interfaces.ECPrivateKey;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmy implements zzdei {
    private static final byte[] zzgtg = new byte[0];
    private final String zzhbz;
    private final byte[] zzhca;
    private final zzdns zzhcb;
    private final zzdmv zzhcc;
    private final ECPrivateKey zzhcd;
    private final zzdna zzhce;

    public zzdmy(ECPrivateKey eCPrivateKey, byte[] bArr, String str, zzdns zzdnsVar, zzdmv zzdmvVar) {
        this.zzhcd = eCPrivateKey;
        this.zzhce = new zzdna(eCPrivateKey);
        this.zzhca = bArr;
        this.zzhbz = str;
        this.zzhcb = zzdnsVar;
        this.zzhcc = zzdmvVar;
    }
}
