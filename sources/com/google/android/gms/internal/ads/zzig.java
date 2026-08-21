package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public final class zzig {
    public byte[] iv;
    private byte[] key;
    private int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    private int numSubSamples;
    private int zzalv;
    private int zzalw;
    private final MediaCodec.CryptoInfo zzalx;
    private final zzii zzaly;

    public zzig() {
        this.zzalx = zzof.SDK_INT >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.zzaly = zzof.SDK_INT >= 24 ? new zzii(this.zzalx) : null;
    }

    public final void set(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3) {
        this.numSubSamples = i2;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.iv = bArr2;
        this.mode = i3;
        this.zzalv = 0;
        this.zzalw = 0;
        int i4 = zzof.SDK_INT;
        if (i4 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.zzalx;
            cryptoInfo.numSubSamples = this.numSubSamples;
            cryptoInfo.numBytesOfClearData = this.numBytesOfClearData;
            cryptoInfo.numBytesOfEncryptedData = this.numBytesOfEncryptedData;
            cryptoInfo.key = this.key;
            cryptoInfo.iv = this.iv;
            cryptoInfo.mode = this.mode;
            if (i4 >= 24) {
                this.zzaly.set(0, 0);
            }
        }
    }

    @TargetApi(16)
    public final MediaCodec.CryptoInfo zzft() {
        return this.zzalx;
    }
}
