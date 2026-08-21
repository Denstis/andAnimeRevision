package c.b.a.c.f;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import c.b.a.c.c;
import c.b.a.c.e;

/* JADX INFO: loaded from: classes.dex */
public interface c<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> {
    void a();

    void a(Activity activity);

    void a(Bundle bundle);

    void a(View view, Bundle bundle);

    void onCreate(Bundle bundle);

    void onDestroy();

    void onDestroyView();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
