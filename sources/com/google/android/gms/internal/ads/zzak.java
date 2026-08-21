package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class zzak implements zzn {
    private static final boolean DEBUG = zzag.DEBUG;

    @Deprecated
    private final zzas zzbu;
    private final zzah zzbv;
    private final zzaj zzbw;

    public zzak(zzah zzahVar) {
        this(zzahVar, new zzaj(MpegAudioHeader.MAX_FRAME_SIZE_BYTES));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private zzak(zzah zzahVar, zzaj zzajVar) {
        this.zzbv = zzahVar;
        this.zzbu = zzahVar;
        this.zzbw = zzajVar;
    }

    private static void zza(String str, zzq<?> zzqVar, zzae zzaeVar) throws zzae {
        zzad zzadVarZzi = zzqVar.zzi();
        int iZzh = zzqVar.zzh();
        try {
            zzadVarZzi.zza(zzaeVar);
            zzqVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iZzh)));
        } catch (zzae e2) {
            zzqVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iZzh)));
            throw e2;
        }
    }

    private final byte[] zza(InputStream inputStream, int i2) throws IOException {
        zzaw zzawVar = new zzaw(this.zzbw, i2);
        try {
            if (inputStream == null) {
                throw new zzac();
            }
            byte[] bArrZzc = this.zzbw.zzc(1024);
            while (true) {
                int i3 = inputStream.read(bArrZzc);
                if (i3 == -1) {
                    break;
                }
                zzawVar.write(bArrZzc, 0, i3);
            }
            byte[] byteArray = zzawVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                    zzag.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbw.zza(bArrZzc);
            zzawVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    zzag.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbw.zza(null);
            zzawVar.close();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0197  */
    @Override // com.google.android.gms.internal.ads.zzn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.internal.ads.zzo zzc(com.google.android.gms.internal.ads.zzq<?> r22) throws com.google.android.gms.internal.ads.zzae {
        /*
            Method dump skipped, instruction units count: 557
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzak.zzc(com.google.android.gms.internal.ads.zzq):com.google.android.gms.internal.ads.zzo");
    }
}
