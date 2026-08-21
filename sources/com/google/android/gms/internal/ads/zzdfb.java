package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdjn;
import com.google.android.gms.internal.ads.zzdjx;
import com.google.android.gms.internal.ads.zzdjy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzdfb {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);

    public static zzdjy zzc(zzdjx zzdjxVar) {
        zzdjy.zza zzaVarZzev = zzdjy.zzaus().zzev(zzdjxVar.zzaui());
        for (zzdjx.zza zzaVar : zzdjxVar.zzauj()) {
            zzaVarZzev.zzb((zzdjy.zzb) zzdjy.zzb.zzauu().zzhc(zzaVar.zzauo().zzatu()).zzc(zzaVar.zzaps()).zzc(zzaVar.zzapt()).zzew(zzaVar.zzaup()).zzazr());
        }
        return (zzdjy) zzaVarZzev.zzazr();
    }

    public static void zzd(zzdjx zzdjxVar) throws GeneralSecurityException {
        int iZzaui = zzdjxVar.zzaui();
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzdjx.zza zzaVar : zzdjxVar.zzauj()) {
            if (zzaVar.zzaps() == zzdjr.ENABLED) {
                if (!zzaVar.zzaun()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzaVar.zzaup())));
                }
                if (zzaVar.zzapt() == zzdkj.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzaVar.zzaup())));
                }
                if (zzaVar.zzaps() == zzdjr.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzaVar.zzaup())));
                }
                if (zzaVar.zzaup() == iZzaui) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                if (zzaVar.zzauo().zzatw() != zzdjn.zzb.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
                i2++;
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }

    public static byte[] zzg(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }
}
