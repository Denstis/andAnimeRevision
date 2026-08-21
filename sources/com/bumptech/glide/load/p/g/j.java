package com.bumptech.glide.load.p.g;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.n.v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j implements com.bumptech.glide.load.j<InputStream, c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ImageHeaderParser> f3914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.j<ByteBuffer, c> f3915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3916c;

    public j(List<ImageHeaderParser> list, com.bumptech.glide.load.j<ByteBuffer, c> jVar, com.bumptech.glide.load.n.a0.b bVar) {
        this.f3914a = list;
        this.f3915b = jVar;
        this.f3916c = bVar;
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (IOException e2) {
            if (!Log.isLoggable("StreamGifDecoder", 5)) {
                return null;
            }
            Log.w("StreamGifDecoder", "Error reading data from stream", e2);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.j
    public v<c> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.i iVar) {
        byte[] bArrA = a(inputStream);
        if (bArrA == null) {
            return null;
        }
        return this.f3915b.a(ByteBuffer.wrap(bArrA), i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(InputStream inputStream, com.bumptech.glide.load.i iVar) {
        return !((Boolean) iVar.a(i.f3913b)).booleanValue() && com.bumptech.glide.load.f.b(this.f3914a, inputStream, this.f3916c) == ImageHeaderParser.ImageType.GIF;
    }
}
