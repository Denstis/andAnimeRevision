package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import com.google.android.gms.internal.ads.zzdut;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzasa implements Runnable {
    private final /* synthetic */ Bitmap val$bitmap;
    private final /* synthetic */ zzarv zzdov;

    zzasa(zzarv zzarvVar, Bitmap bitmap) {
        this.zzdov = zzarvVar;
        this.val$bitmap = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.val$bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        synchronized (this.zzdov.lock) {
            this.zzdov.zzdoh.zzhvm = new zzdvi();
            this.zzdov.zzdoh.zzhvm.zzhwl = byteArrayOutputStream.toByteArray();
            this.zzdov.zzdoh.zzhvm.mimeType = "image/png";
            this.zzdov.zzdoh.zzhvm.zzhwk = zzdut.zzb.zzf.EnumC0163zzb.TYPE_CREATIVE;
        }
    }
}
