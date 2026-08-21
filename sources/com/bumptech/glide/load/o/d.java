package com.bumptech.glide.load.o;

import android.util.Log;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class d implements n<File, ByteBuffer> {

    private static final class a implements com.bumptech.glide.load.m.d<ByteBuffer> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f3702b;

        a(File file) {
            this.f3702b = file;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super ByteBuffer> aVar) {
            try {
                aVar.a(c.a.a.t.a.a(this.f3702b));
            } catch (IOException e2) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e2);
                }
                aVar.a((Exception) e2);
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.m.d
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.m.d
        public void cancel() {
        }
    }

    public static class b implements o<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.o.o
        public n<File, ByteBuffer> a(r rVar) {
            return new d();
        }
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<ByteBuffer> a(File file, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(file), new a(file));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(File file) {
        return true;
    }
}
