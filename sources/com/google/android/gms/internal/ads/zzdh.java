package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class zzdh {
    private static Cipher zzxb;
    private static final Object zzxc = new Object();
    private static final Object zzxd = new Object();
    private final SecureRandom zzxa = null;

    public zzdh(SecureRandom secureRandom) {
    }

    private static Cipher getCipher() {
        Cipher cipher;
        synchronized (zzxd) {
            if (zzxb == null) {
                zzxb = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = zzxb;
        }
        return cipher;
    }

    public final byte[] zza(byte[] bArr, String str) throws zzdk {
        byte[] bArrDoFinal;
        if (bArr.length != 16) {
            throw new zzdk(this);
        }
        try {
            byte[] bArrZza = zzcg.zza(str, false);
            if (bArrZza.length <= 16) {
                throw new zzdk(this);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArrZza.length);
            byteBufferAllocate.put(bArrZza);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArrZza.length - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzxc) {
                getCipher().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = getCipher().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e2) {
            throw new zzdk(this, e2);
        } catch (InvalidAlgorithmParameterException e3) {
            throw new zzdk(this, e3);
        } catch (InvalidKeyException e4) {
            throw new zzdk(this, e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new zzdk(this, e5);
        } catch (BadPaddingException e6) {
            throw new zzdk(this, e6);
        } catch (IllegalBlockSizeException e7) {
            throw new zzdk(this, e7);
        } catch (NoSuchPaddingException e8) {
            throw new zzdk(this, e8);
        }
    }

    public final byte[] zzaq(String str) throws zzdk {
        try {
            byte[] bArrZza = zzcg.zza(str, false);
            if (bArrZza.length != 32) {
                throw new zzdk(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(bArrZza, 4, 16).get(bArr);
            for (int i2 = 0; i2 < 16; i2++) {
                bArr[i2] = (byte) (bArr[i2] ^ 68);
            }
            return bArr;
        } catch (IllegalArgumentException e2) {
            throw new zzdk(this, e2);
        }
    }

    public final String zzb(byte[] bArr, byte[] bArr2) throws zzdk {
        byte[] bArrDoFinal;
        byte[] iv;
        if (bArr.length != 16) {
            throw new zzdk(this);
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzxc) {
                getCipher().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = getCipher().doFinal(bArr2);
                iv = getCipher().getIV();
            }
            int length = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length];
            byteBufferAllocate.get(bArr3);
            return zzcg.zza(bArr3, false);
        } catch (InvalidKeyException e2) {
            throw new zzdk(this, e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new zzdk(this, e3);
        } catch (BadPaddingException e4) {
            throw new zzdk(this, e4);
        } catch (IllegalBlockSizeException e5) {
            throw new zzdk(this, e5);
        } catch (NoSuchPaddingException e6) {
            throw new zzdk(this, e6);
        }
    }
}
