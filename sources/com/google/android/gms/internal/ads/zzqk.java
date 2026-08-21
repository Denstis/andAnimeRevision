package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class zzqk {

    @VisibleForTesting
    private ByteArrayOutputStream zzbqj = new ByteArrayOutputStream(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);

    @VisibleForTesting
    private Base64OutputStream zzbqk = new Base64OutputStream(this.zzbqj, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        try {
            this.zzbqk.close();
        } catch (IOException e2) {
            zzaxi.zzc("HashManager: Unable to convert to Base64.", e2);
        }
        try {
            try {
                this.zzbqj.close();
                string = this.zzbqj.toString();
            } catch (IOException e3) {
                zzaxi.zzc("HashManager: Unable to convert to Base64.", e3);
                string = "";
            }
            return string;
        } finally {
            this.zzbqj = null;
            this.zzbqk = null;
        }
    }

    public final void write(byte[] bArr) {
        this.zzbqk.write(bArr);
    }
}
