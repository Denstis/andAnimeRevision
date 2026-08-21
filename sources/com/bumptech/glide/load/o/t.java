package com.bumptech.glide.load.o;

import android.util.Log;
import com.google.android.exoplayer2.C;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class t implements com.bumptech.glide.load.d<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3768a;

    public t(com.bumptech.glide.load.n.a0.b bVar) {
        this.f3768a = bVar;
    }

    @Override // com.bumptech.glide.load.d
    public boolean a(InputStream inputStream, File file, com.bumptech.glide.load.i iVar) throws Throwable {
        FileOutputStream fileOutputStream;
        byte[] bArr = (byte[]) this.f3768a.b(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
        boolean z = false;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException unused) {
                }
            } catch (IOException e2) {
                e = e2;
            }
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                } catch (IOException e3) {
                    e = e3;
                    fileOutputStream2 = fileOutputStream;
                    if (Log.isLoggable("StreamEncoder", 3)) {
                        Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    this.f3768a.a(bArr);
                    return z;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f3768a.a(bArr);
                    throw th;
                }
                this.f3768a.a(bArr);
                return z;
            }
            fileOutputStream.close();
            z = true;
            fileOutputStream.close();
            this.f3768a.a(bArr);
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
