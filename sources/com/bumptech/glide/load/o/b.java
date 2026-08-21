package com.bumptech.glide.load.o;

import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class b<Data> implements n<byte[], Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InterfaceC0146b<Data> f3699a;

    public static class a implements o<byte[], ByteBuffer> {

        /* JADX INFO: renamed from: com.bumptech.glide.load.o.b$a$a, reason: collision with other inner class name */
        class C0145a implements InterfaceC0146b<ByteBuffer> {
            C0145a(a aVar) {
            }

            @Override // com.bumptech.glide.load.o.b.InterfaceC0146b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // com.bumptech.glide.load.o.b.InterfaceC0146b
            public ByteBuffer a(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // com.bumptech.glide.load.o.o
        public n<byte[], ByteBuffer> a(r rVar) {
            return new b(new C0145a(this));
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.o.b$b, reason: collision with other inner class name */
    public interface InterfaceC0146b<Data> {
        Class<Data> a();

        Data a(byte[] bArr);
    }

    private static class c<Data> implements com.bumptech.glide.load.m.d<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f3700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InterfaceC0146b<Data> f3701c;

        c(byte[] bArr, InterfaceC0146b<Data> interfaceC0146b) {
            this.f3700b = bArr;
            this.f3701c = interfaceC0146b;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<Data> a() {
            return this.f3701c.a();
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super Data> aVar) {
            aVar.a(this.f3701c.a(this.f3700b));
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

    public static class d implements o<byte[], InputStream> {

        class a implements InterfaceC0146b<InputStream> {
            a(d dVar) {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.load.o.b.InterfaceC0146b
            public InputStream a(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }

            @Override // com.bumptech.glide.load.o.b.InterfaceC0146b
            public Class<InputStream> a() {
                return InputStream.class;
            }
        }

        @Override // com.bumptech.glide.load.o.o
        public n<byte[], InputStream> a(r rVar) {
            return new b(new a(this));
        }
    }

    public b(InterfaceC0146b<Data> interfaceC0146b) {
        this.f3699a = interfaceC0146b;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(byte[] bArr, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(bArr), new c(bArr, this.f3699a));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(byte[] bArr) {
        return true;
    }
}
