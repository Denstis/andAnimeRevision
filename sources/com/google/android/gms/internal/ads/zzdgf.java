package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
final class zzdgf {
    public static zzdnq zza(zzdjb zzdjbVar) throws GeneralSecurityException {
        int i2 = zzdge.zzgtl[zzdjbVar.ordinal()];
        if (i2 == 1) {
            return zzdnq.NIST_P256;
        }
        if (i2 == 2) {
            return zzdnq.NIST_P384;
        }
        if (i2 == 3) {
            return zzdnq.NIST_P521;
        }
        String strValueOf = String.valueOf(zzdjbVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 20);
        sb.append("unknown curve type: ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static zzdns zza(zzdhz zzdhzVar) throws GeneralSecurityException {
        int i2 = zzdge.zzgtm[zzdhzVar.ordinal()];
        if (i2 == 1) {
            return zzdns.UNCOMPRESSED;
        }
        if (i2 == 2) {
            return zzdns.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i2 == 3) {
            return zzdns.COMPRESSED;
        }
        String strValueOf = String.valueOf(zzdhzVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
        sb.append("unknown point format: ");
        sb.append(strValueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static String zza(zzdjg zzdjgVar) throws NoSuchAlgorithmException {
        int i2 = zzdge.zzgtk[zzdjgVar.ordinal()];
        if (i2 == 1) {
            return "HmacSha1";
        }
        if (i2 == 2) {
            return "HmacSha256";
        }
        if (i2 == 3) {
            return "HmacSha512";
        }
        String strValueOf = String.valueOf(zzdjgVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("hash unsupported for HMAC: ");
        sb.append(strValueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    public static void zza(zzdip zzdipVar) throws GeneralSecurityException {
        zzdno.zza(zza(zzdipVar.zzasq().zzatb()));
        zza(zzdipVar.zzasq().zzaqp());
        if (zzdipVar.zzass() == zzdhz.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        zzdey.zza(zzdipVar.zzasr().zzasl());
    }
}
