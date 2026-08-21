package c.a.a.r;

import android.graphics.Bitmap;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.n.j;

/* JADX INFO: loaded from: classes.dex */
public class f extends a<f> {
    private static f B;
    private static f C;

    public static f J() {
        if (B == null) {
            f fVarB = new f().b();
            fVarB.a();
            B = fVarB;
        }
        return B;
    }

    public static f K() {
        if (C == null) {
            f fVarC = new f().c();
            fVarC.a();
            C = fVarC;
        }
        return C;
    }

    public static f b(com.bumptech.glide.load.g gVar) {
        return new f().a(gVar);
    }

    public static f b(l<Bitmap> lVar) {
        return new f().a(lVar);
    }

    public static f b(j jVar) {
        return new f().a(jVar);
    }

    public static f b(Class<?> cls) {
        return new f().a(cls);
    }
}
