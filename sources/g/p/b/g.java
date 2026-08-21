package g.p.b;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class g<R> implements e<R>, Serializable {
    public g(int i2) {
    }

    public String toString() {
        String strA = j.a(this);
        f.a((Object) strA, "Reflection.renderLambdaToString(this)");
        return strA;
    }
}
