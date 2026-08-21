package b.q;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f2976b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f2975a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<n> f2977c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f2976b == tVar.f2976b && this.f2975a.equals(tVar.f2975a);
    }

    public int hashCode() {
        return (this.f2976b.hashCode() * 31) + this.f2975a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2976b + "\n") + "    values:";
        for (String str2 : this.f2975a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2975a.get(str2) + "\n";
        }
        return str;
    }
}
