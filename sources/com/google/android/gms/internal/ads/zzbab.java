package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzbab implements zzne {
    private boolean isOpen;
    private Uri uri;
    private InputStream zzebw;
    private final zzne zzebx;
    private final zzns<zzne> zzeby;
    private final zzbae zzebz;
    private final Context zzlk;

    public zzbab(Context context, zzne zzneVar, zzns<zzne> zznsVar, zzbae zzbaeVar) {
        this.zzlk = context;
        this.zzebx = zzneVar;
        this.zzeby = zznsVar;
        this.zzebz = zzbaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void close() throws IOException {
        if (!this.isOpen) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.isOpen = false;
        this.uri = null;
        InputStream inputStream = this.zzebw;
        if (inputStream != null) {
            IOUtils.closeQuietly(inputStream);
            this.zzebw = null;
        } else {
            this.zzebx.close();
        }
        zzns<zzne> zznsVar = this.zzeby;
        if (zznsVar != null) {
            zznsVar.zze(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        if (!this.isOpen) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.zzebw;
        int i4 = inputStream != null ? inputStream.read(bArr, i2, i3) : this.zzebx.read(bArr, i2, i3);
        zzns<zzne> zznsVar = this.zzeby;
        if (zznsVar != null) {
            zznsVar.zzc(this, i4);
        }
        return i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x011e  */
    @Override // com.google.android.gms.internal.ads.zzne
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zza(com.google.android.gms.internal.ads.zznf r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbab.zza(com.google.android.gms.internal.ads.zznf):long");
    }
}
