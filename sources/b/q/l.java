package b.q;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f2946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f2947b;

    static l a(View view) {
        return (l) view.getTag(j.transition_current_scene);
    }

    static void a(View view, l lVar) {
        view.setTag(j.transition_current_scene, lVar);
    }

    public void a() {
        Runnable runnable;
        if (a(this.f2946a) != this || (runnable = this.f2947b) == null) {
            return;
        }
        runnable.run();
    }
}
