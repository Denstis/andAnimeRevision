package com.bumptech.glide.load.p.d;

import com.bumptech.glide.load.m.e;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class a implements e<ByteBuffer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f3868a;

    /* JADX INFO: renamed from: com.bumptech.glide.load.p.d.a$a, reason: collision with other inner class name */
    public static class C0149a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.m.e.a
        public e<ByteBuffer> a(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.m.e.a
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f3868a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.m.e
    public ByteBuffer a() {
        this.f3868a.position(0);
        return this.f3868a;
    }

    @Override // com.bumptech.glide.load.m.e
    public void b() {
    }
}
