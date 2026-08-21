package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwo {
    static final /* synthetic */ void zza(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        try {
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                try {
                    IOUtils.copyStream(inputStream, autoCloseOutputStream);
                    autoCloseOutputStream.close();
                    if (inputStream != null) {
                        zza((Throwable) null, inputStream);
                    }
                } finally {
                }
            } catch (IOException unused) {
            }
        } finally {
        }
    }

    private static /* synthetic */ void zza(Throwable th, InputStream inputStream) throws IOException {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            zzdoy.zza(th, th2);
        }
    }

    public static ParcelFileDescriptor zze(final InputStream inputStream) throws IOException {
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
        zzaxn.zzdwi.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.zzcwn
            private final InputStream zzgks;
            private final ParcelFileDescriptor zzgkt;

            {
                this.zzgks = inputStream;
                this.zzgkt = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcwo.zza(this.zzgks, this.zzgkt);
            }
        });
        return parcelFileDescriptor;
    }
}
