package animebestapp.com.utils;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f2139a = new j();

    private j() {
    }

    public final void a(b.k.a.e eVar) {
        g.p.b.f.b(eVar, "activity");
        Object systemService = eVar.getSystemService("input_method");
        if (systemService == null) {
            throw new g.j("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        View currentFocus = eVar.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(eVar);
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }
}
