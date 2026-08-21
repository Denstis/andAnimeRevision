package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Iterable<Intent> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<Intent> f896b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f897c;

    public interface a {
        Intent o();
    }

    private n(Context context) {
        this.f897c = context;
    }

    public static n a(Context context) {
        return new n(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n a(Activity activity) {
        Intent intentO = activity instanceof a ? ((a) activity).o() : null;
        if (intentO == null) {
            intentO = f.a(activity);
        }
        if (intentO != null) {
            ComponentName component = intentO.getComponent();
            if (component == null) {
                component = intentO.resolveActivity(this.f897c.getPackageManager());
            }
            a(component);
            a(intentO);
        }
        return this;
    }

    public n a(ComponentName componentName) {
        int size = this.f896b.size();
        try {
            Context context = this.f897c;
            while (true) {
                Intent intentA = f.a(context, componentName);
                if (intentA == null) {
                    return this;
                }
                this.f896b.add(size, intentA);
                context = this.f897c;
                componentName = intentA.getComponent();
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e2);
        }
    }

    public n a(Intent intent) {
        this.f896b.add(intent);
        return this;
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (this.f896b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.f896b;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.content.a.a(this.f897c, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        this.f897c.startActivity(intent);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f896b.iterator();
    }
}
