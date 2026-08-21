package g.p.b;

/* JADX INFO: loaded from: classes.dex */
public class k {
    public String a(e eVar) {
        String string = eVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String a(g gVar) {
        return a((e) gVar);
    }
}
