package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzbo;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzci {
    private static boolean zznt = false;
    private static MessageDigest zznu;
    private static final Object zznv = new Object();
    private static final Object zznw = new Object();
    static CountDownLatch zznx = new CountDownLatch(1);

    private static zzbo.zza zza(zzbo.zza.zzd zzdVar) {
        zzbo.zza.zzb zzbVarZzal = zzbo.zza.zzal();
        zzbVarZzal.zzau(zzdVar.zzab());
        return (zzbo.zza) zzbVarZzal.zzazr();
    }

    static String zza(String str, String str2, boolean z) {
        byte[] bArrZzb = zzb(str, str2, true);
        return bArrZzb != null ? zzcg.zza(bArrZzb, true) : Integer.toString(7);
    }

    private static Vector<byte[]> zza(byte[] bArr, int i2) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i4, bArr.length - i4 > 255 ? i4 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    private static byte[] zza(byte[] bArr, String str, boolean z) {
        ByteBuffer byteBufferPut;
        int i2 = z ? 239 : 255;
        if (bArr.length > i2) {
            bArr = zza(zzbo.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray();
        }
        if (bArr.length < i2) {
            byte[] bArr2 = new byte[i2 - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            byteBufferPut = ByteBuffer.allocate(i2 + 1).put((byte) bArr.length).put(bArr).put(bArr2);
        } else {
            byteBufferPut = ByteBuffer.allocate(i2 + 1).put((byte) bArr.length).put(bArr);
        }
        byte[] bArrArray = byteBufferPut.array();
        if (z) {
            bArrArray = ByteBuffer.allocate(256).put(zzb(bArrArray)).put(bArrArray).array();
        }
        byte[] bArr3 = new byte[256];
        for (zzcl zzclVar : new zzcj().zzvl) {
            zzclVar.zza(bArrArray, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzdpc(str.getBytes(C.UTF8_NAME)).zzx(bArr3);
        }
        return bArr3;
    }

    private static byte[] zzb(String str, String str2, boolean z) {
        zzbo.zzc.zza zzaVarZzav = zzbo.zzc.zzav();
        try {
            zzaVarZzav.zzg(zzdpm.zzy(str.length() < 3 ? str.getBytes("ISO-8859-1") : zzcg.zza(str, true)));
            zzaVarZzav.zzh(zzdpm.zzy(str2.length() < 3 ? str2.getBytes("ISO-8859-1") : zzcg.zza(str2, true)));
            return ((zzbo.zzc) ((zzdqw) zzaVarZzav.zzazr())).toByteArray();
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            return null;
        }
    }

    public static byte[] zzb(byte[] bArr) {
        byte[] bArrDigest;
        synchronized (zznv) {
            MessageDigest messageDigestZzby = zzby();
            if (messageDigestZzby == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigestZzby.reset();
            messageDigestZzby.update(bArr);
            bArrDigest = zznu.digest();
        }
        return bArrDigest;
    }

    static void zzbx() {
        synchronized (zznw) {
            if (!zznt) {
                zznt = true;
                new Thread(new zzck()).start();
            }
        }
    }

    private static MessageDigest zzby() {
        boolean zAwait;
        MessageDigest messageDigest;
        zzbx();
        try {
            zAwait = zznx.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            zAwait = false;
        }
        if (zAwait && (messageDigest = zznu) != null) {
            return messageDigest;
        }
        return null;
    }

    static String zzj(zzbo.zza zzaVar, String str) throws GeneralSecurityException {
        byte[] bArrZza;
        zzdsg zzdsgVarZzazr;
        byte[] byteArray = zzaVar.toByteArray();
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcni)).booleanValue()) {
            Vector<byte[]> vectorZza = zza(byteArray, 255);
            if (vectorZza == null || vectorZza.size() == 0) {
                bArrZza = zza(zza(zzbo.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray(), str, true);
                return zzcg.zza(bArrZza, true);
            }
            zzbo.zzg.zza zzaVarZzbj = zzbo.zzg.zzbj();
            Iterator<byte[]> it = vectorZza.iterator();
            while (it.hasNext()) {
                zzaVarZzbj.zzm(zzdpm.zzy(zza(it.next(), str, false)));
            }
            zzaVarZzbj.zzn(zzdpm.zzy(zzb(byteArray)));
            zzdsgVarZzazr = zzaVarZzbj.zzazr();
        } else {
            if (zzed.zzyo == null) {
                throw new GeneralSecurityException();
            }
            zzdsgVarZzazr = zzbo.zzg.zzbj().zzm(zzdpm.zzy(zzed.zzyo.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zza(zzbv.TINK_HYBRID).zzazr();
        }
        bArrZza = ((zzbo.zzg) zzdsgVarZzazr).toByteArray();
        return zzcg.zza(bArrZza, true);
    }
}
