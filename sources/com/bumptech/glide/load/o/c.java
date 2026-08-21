package com.bumptech.glide.load.o;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.bumptech.glide.load.d<ByteBuffer> {
    @Override // com.bumptech.glide.load.d
    public boolean a(ByteBuffer byteBuffer, File file, com.bumptech.glide.load.i iVar) throws Throwable {
        try {
            c.a.a.t.a.a(byteBuffer, file);
            return true;
        } catch (IOException e2) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e2);
            }
            return false;
        }
    }
}
