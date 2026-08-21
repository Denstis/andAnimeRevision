package com.bumptech.glide.load.o;

import android.util.Base64;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class e<Model, Data> implements n<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a<Data> f3703a;

    public interface a<Data> {
        Class<Data> a();

        Data a(String str);

        void a(Data data);
    }

    private static final class b<Data> implements com.bumptech.glide.load.m.d<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a<Data> f3705c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Data f3706d;

        b(String str, a<Data> aVar) {
            this.f3704b = str;
            this.f3705c = aVar;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<Data> a() {
            return this.f3705c.a();
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super Data> aVar) {
            try {
                this.f3706d = this.f3705c.a(this.f3704b);
                aVar.a(this.f3706d);
            } catch (IllegalArgumentException e2) {
                aVar.a((Exception) e2);
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
            try {
                this.f3705c.a(this.f3706d);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.m.d
        public void cancel() {
        }
    }

    public static final class c<Model> implements o<Model, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a<InputStream> f3707a = new a(this);

        class a implements a<InputStream> {
            a(c cVar) {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.load.o.e.a
            public InputStream a(String str) {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }

            @Override // com.bumptech.glide.load.o.e.a
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.o.e.a
            public void a(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Model, InputStream> a(r rVar) {
            return new e(this.f3707a);
        }
    }

    public e(a<Data> aVar) {
        this.f3703a = aVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Model model, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(model), new b(model.toString(), this.f3703a));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Model model) {
        return model.toString().startsWith("data:image");
    }
}
