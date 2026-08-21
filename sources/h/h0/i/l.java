package h.h0.i;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f4805a = new a();

    final class a implements l {
        a() {
        }

        @Override // h.h0.i.l
        public void a(int i2, b bVar) {
        }

        @Override // h.h0.i.l
        public boolean a(int i2, i.e eVar, int i3, boolean z) {
            eVar.skip(i3);
            return true;
        }

        @Override // h.h0.i.l
        public boolean a(int i2, List<c> list) {
            return true;
        }

        @Override // h.h0.i.l
        public boolean a(int i2, List<c> list, boolean z) {
            return true;
        }
    }

    void a(int i2, b bVar);

    boolean a(int i2, i.e eVar, int i3, boolean z);

    boolean a(int i2, List<c> list);

    boolean a(int i2, List<c> list, boolean z);
}
