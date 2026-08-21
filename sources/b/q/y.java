package b.q;

import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
class y {
    static x a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new w(viewGroup) : v.a(viewGroup);
    }

    static void a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            a0.a(viewGroup, z);
        } else {
            z.a(viewGroup, z);
        }
    }
}
