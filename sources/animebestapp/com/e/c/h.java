package animebestapp.com.e.c;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private final byte[] dev = {117, 79, 106, 99, 68, 70, 86, 84, 114, 54, 101, 117, 83, 72, 100, 100, 56, 50, 80, 85, 97, 65, 57, 67, 43, 77, 99, 61};
    private final byte[] prod = {71, 79, 85, 69, 54, 89, 121, 69, 105, 85, 116, 119, 68, 47, 108, 77, 112, 89, 121, 111, 117, 113, 98, 100, 101, 52, 56, 61};
    private final byte[] byteArray2 = {83, 72, 65, 122, 66, 103, 85, 88, 120, 51, 118, 66, 118, 68, 89, 49, 105, 71, 74, 73, 119, 61};

    public final String getOriginalSignature() {
        return new String(this.prod, g.s.c.f4406a);
    }

    public final String getSha() {
        return new String(g.m.t.a((Collection<Byte>) g.m.h.a(this.byteArray2, new g.q.d(0, 2))), g.s.c.f4406a);
    }
}
