package com.bumptech.glide.load.o.y;

import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.m.j;
import com.bumptech.glide.load.o.g;
import com.bumptech.glide.load.o.m;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.r;
import com.google.android.exoplayer2.DefaultLoadControl;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class a implements n<g, InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h<Integer> f3780b = h.a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m<g, g> f3781a;

    /* JADX INFO: renamed from: com.bumptech.glide.load.o.y.a$a, reason: collision with other inner class name */
    public static class C0148a implements o<g, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final m<g, g> f3782a = new m<>(500);

        @Override // com.bumptech.glide.load.o.o
        public n<g, InputStream> a(r rVar) {
            return new a(this.f3782a);
        }
    }

    public a(m<g, g> mVar) {
        this.f3781a = mVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<InputStream> a(g gVar, int i2, int i3, i iVar) {
        m<g, g> mVar = this.f3781a;
        if (mVar != null) {
            g gVarA = mVar.a(gVar, 0, 0);
            if (gVarA == null) {
                this.f3781a.a(gVar, 0, 0, gVar);
            } else {
                gVar = gVarA;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) iVar.a(f3780b)).intValue()));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(g gVar) {
        return true;
    }
}
