package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwl {
    private final Executor executor;
    private final Clock zzbmp;
    private final zzavy zzfnz;

    public zzbwl(zzavy zzavyVar, Clock clock, Executor executor) {
        this.zzfnz = zzavyVar;
        this.zzbmp = clock;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap zza(byte[] bArr, double d2, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d2 * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcsv)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zza(bArr, options);
            options.inJustDecodeBounds = false;
            int i2 = options.outWidth * options.outHeight;
            if (i2 > 0) {
                int i3 = i2 - 1;
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros(i3 / ((Integer) zzuv.zzon().zzd(zzza.zzcsw)).intValue())) / 2);
            }
        }
        return zza(bArr, options);
    }

    private final Bitmap zza(byte[] bArr, BitmapFactory.Options options) {
        long jElapsedRealtime = this.zzbmp.elapsedRealtime();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long jElapsedRealtime2 = this.zzbmp.elapsedRealtime();
        if (Build.VERSION.SDK_INT >= 19 && bitmapDecodeByteArray != null) {
            int width = bitmapDecodeByteArray.getWidth();
            int height = bitmapDecodeByteArray.getHeight();
            int allocationByteCount = bitmapDecodeByteArray.getAllocationByteCount();
            long j2 = jElapsedRealtime2 - jElapsedRealtime;
            boolean z = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j2);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzaug.zzdy(sb.toString());
        }
        return bitmapDecodeByteArray;
    }

    public final zzddi<Bitmap> zza(String str, double d2, boolean z) {
        return zzdcy.zzb(zzavy.zzel(str), new zzbwk(this, d2, z), this.executor);
    }
}
