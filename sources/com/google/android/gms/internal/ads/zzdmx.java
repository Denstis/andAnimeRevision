package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmx implements zzdel {
    private static final byte[] zzgtg = new byte[0];
    private final zzdmz zzhby;
    private final String zzhbz;
    private final byte[] zzhca;
    private final zzdns zzhcb;
    private final zzdmv zzhcc;

    public zzdmx(ECPublicKey eCPublicKey, byte[] bArr, String str, zzdns zzdnsVar, zzdmv zzdmvVar) throws GeneralSecurityException {
        zzdno.zza(eCPublicKey);
        this.zzhby = new zzdmz(eCPublicKey);
        this.zzhca = bArr;
        this.zzhbz = str;
        this.zzhcb = zzdnsVar;
        this.zzhcc = zzdmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzdnc zzdncVarZza = this.zzhby.zza(this.zzhbz, this.zzhca, bArr2, this.zzhcc.zzaqa(), this.zzhcb);
        byte[] bArrZzc = this.zzhcc.zzl(zzdncVarZza.zzawx()).zzc(bArr, zzgtg);
        byte[] bArrZzaww = zzdncVarZza.zzaww();
        return ByteBuffer.allocate(bArrZzaww.length + bArrZzc.length).put(bArrZzaww).put(bArrZzc).array();
    }
}
