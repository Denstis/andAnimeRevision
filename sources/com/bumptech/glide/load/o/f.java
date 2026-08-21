package com.bumptech.glide.load.o;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import com.google.android.exoplayer2.C;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class f<Data> implements n<File, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<Data> f3708a;

    public static class a<Data> implements o<File, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d<Data> f3709a;

        public a(d<Data> dVar) {
            this.f3709a = dVar;
        }

        @Override // com.bumptech.glide.load.o.o
        public final n<File, Data> a(r rVar) {
            return new f(this.f3709a);
        }
    }

    public static class b extends a<ParcelFileDescriptor> {

        class a implements d<ParcelFileDescriptor> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.load.o.f.d
            public ParcelFileDescriptor a(File file) {
                return ParcelFileDescriptor.open(file, C.ENCODING_PCM_MU_LAW);
            }

            @Override // com.bumptech.glide.load.o.f.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.o.f.d
            public void a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    private static final class c<Data> implements com.bumptech.glide.load.m.d<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f3710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d<Data> f3711c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Data f3712d;

        c(File file, d<Data> dVar) {
            this.f3710b = file;
            this.f3711c = dVar;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<Data> a() {
            return this.f3711c.a();
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super Data> aVar) {
            try {
                this.f3712d = this.f3711c.a(this.f3710b);
                aVar.a(this.f3712d);
            } catch (FileNotFoundException e2) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e2);
                }
                aVar.a((Exception) e2);
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
            Data data = this.f3712d;
            if (data != null) {
                try {
                    this.f3711c.a(data);
                } catch (IOException unused) {
                }
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

    public interface d<Data> {
        Class<Data> a();

        Data a(File file);

        void a(Data data);
    }

    public static class e extends a<InputStream> {

        class a implements d<InputStream> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.load.o.f.d
            public InputStream a(File file) {
                return new FileInputStream(file);
            }

            @Override // com.bumptech.glide.load.o.f.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.o.f.d
            public void a(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.f3708a = dVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(File file, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(file), new c(file, this.f3708a));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(File file) {
        return true;
    }
}
