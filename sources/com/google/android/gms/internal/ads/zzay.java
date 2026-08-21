package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzay implements zzba {
    private static Logger zzcn = Logger.getLogger(zzay.class.getName());
    private ThreadLocal<ByteBuffer> zzco = new zzax(this);

    @Override // com.google.android.gms.internal.ads.zzba
    public final zzbb zza(zzdvn zzdvnVar, zzbe zzbeVar) throws EOFException {
        int i2;
        long size;
        long jPosition = zzdvnVar.position();
        this.zzco.get().rewind().limit(8);
        do {
            i2 = zzdvnVar.read(this.zzco.get());
            if (i2 == 8) {
                this.zzco.get().rewind();
                long jZza = zzbc.zza(this.zzco.get());
                byte[] bArr = null;
                if (jZza < 8 && jZza > 1) {
                    Logger logger = zzcn;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jZza);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                String strZzf = zzbc.zzf(this.zzco.get());
                if (jZza == 1) {
                    this.zzco.get().limit(16);
                    zzdvnVar.read(this.zzco.get());
                    this.zzco.get().position(8);
                    size = zzbc.zzc(this.zzco.get()) - 16;
                } else {
                    size = jZza == 0 ? zzdvnVar.size() - zzdvnVar.position() : jZza - 8;
                }
                if ("uuid".equals(strZzf)) {
                    this.zzco.get().limit(this.zzco.get().limit() + 16);
                    zzdvnVar.read(this.zzco.get());
                    bArr = new byte[16];
                    for (int iPosition = this.zzco.get().position() - 16; iPosition < this.zzco.get().position(); iPosition++) {
                        bArr[iPosition - (this.zzco.get().position() - 16)] = this.zzco.get().get(iPosition);
                    }
                    size -= 16;
                }
                long j2 = size;
                zzbb zzbbVarZza = zza(strZzf, bArr, zzbeVar instanceof zzbb ? ((zzbb) zzbeVar).getType() : "");
                zzbbVarZza.zza(zzbeVar);
                this.zzco.get().rewind();
                zzbbVarZza.zza(zzdvnVar, this.zzco.get(), j2, this);
                return zzbbVarZza;
            }
        } while (i2 >= 0);
        zzdvnVar.zzew(jPosition);
        throw new EOFException();
    }

    public abstract zzbb zza(String str, byte[] bArr, String str2);
}
