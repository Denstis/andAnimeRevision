package c.b.a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import c.b.a.c.c;
import c.b.a.c.e;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3343a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Activity, String> f3344b = new b.e.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, c.b.a.a> f3345c = new b.e.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Application.ActivityLifecycleCallbacks f3346d = new a();

    static class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            String string;
            if (bundle == null || (string = bundle.getString("com.hannesdorfmann.mosby3.MosbyPresenterManagerActivityId")) == null) {
                return;
            }
            b.f3344b.put(activity, string);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            String str;
            if (!activity.isChangingConfigurations() && (str = (String) b.f3344b.get(activity)) != null) {
                c.b.a.a aVar = (c.b.a.a) b.f3345c.get(str);
                if (aVar != null) {
                    aVar.a();
                    b.f3345c.remove(str);
                }
                if (b.f3345c.isEmpty()) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(b.f3346d);
                    if (b.f3343a) {
                        Log.d("PresenterManager", "Unregistering ActivityLifecycleCallbacks");
                    }
                }
            }
            b.f3344b.remove(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            String str = (String) b.f3344b.get(activity);
            if (str != null) {
                bundle.putString("com.hannesdorfmann.mosby3.MosbyPresenterManagerActivityId", str);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static c.b.a.a a(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        String str = f3344b.get(activity);
        if (str == null) {
            return null;
        }
        return f3345c.get(str);
    }

    public static <P> P a(Activity activity, String str) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        if (str == null) {
            throw new NullPointerException("View id is null");
        }
        c.b.a.a aVarA = a(activity);
        if (aVarA == null) {
            return null;
        }
        return (P) aVarA.a(str);
    }

    public static void a(Activity activity, String str, c<? extends e> cVar) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        b(activity).a(str, cVar);
    }

    static c.b.a.a b(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        String string = f3344b.get(activity);
        if (string == null) {
            string = UUID.randomUUID().toString();
            f3344b.put(activity, string);
            if (f3344b.size() == 1) {
                activity.getApplication().registerActivityLifecycleCallbacks(f3346d);
                if (f3343a) {
                    Log.d("PresenterManager", "Registering ActivityLifecycleCallbacks");
                }
            }
        }
        c.b.a.a aVar = f3345c.get(string);
        if (aVar != null) {
            return aVar;
        }
        c.b.a.a aVar2 = new c.b.a.a();
        f3345c.put(string, aVar2);
        return aVar2;
    }

    public static void b(Activity activity, String str) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        c.b.a.a aVarA = a(activity);
        if (aVarA != null) {
            aVarA.b(str);
        }
    }
}
