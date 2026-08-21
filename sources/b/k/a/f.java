package b.k.a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public abstract View a(int i2);

    public d a(Context context, String str, Bundle bundle) {
        return d.instantiate(context, str, bundle);
    }

    public abstract boolean a();
}
