package h.h0.g;

import h.a0;
import h.t;
import java.net.Proxy;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static String a(a0 a0Var, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(a0Var.e());
        sb.append(' ');
        boolean zB = b(a0Var, type);
        t tVarG = a0Var.g();
        if (zB) {
            sb.append(tVarG);
        } else {
            sb.append(a(tVarG));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    public static String a(t tVar) {
        String strC = tVar.c();
        String strE = tVar.e();
        if (strE == null) {
            return strC;
        }
        return strC + '?' + strE;
    }

    private static boolean b(a0 a0Var, Proxy.Type type) {
        return !a0Var.d() && type == Proxy.Type.HTTP;
    }
}
