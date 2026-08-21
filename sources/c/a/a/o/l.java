package c.a.a.o;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class l implements Handler.Callback {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final b f3219j = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile c.a.a.k f3220b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f3223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f3224f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Map<FragmentManager, k> f3221c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<b.k.a.i, o> f3222d = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b.e.a<View, b.k.a.d> f3225g = new b.e.a<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b.e.a<View, Fragment> f3226h = new b.e.a<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Bundle f3227i = new Bundle();

    class a implements b {
        a() {
        }

        @Override // c.a.a.o.l.b
        public c.a.a.k a(c.a.a.c cVar, h hVar, m mVar, Context context) {
            return new c.a.a.k(cVar, hVar, mVar, context);
        }
    }

    public interface b {
        c.a.a.k a(c.a.a.c cVar, h hVar, m mVar, Context context);
    }

    public l(b bVar) {
        this.f3224f = bVar == null ? f3219j : bVar;
        this.f3223e = new Handler(Looper.getMainLooper(), this);
    }

    @Deprecated
    private Fragment a(View view, Activity activity) {
        this.f3226h.clear();
        a(activity.getFragmentManager(), this.f3226h);
        View viewFindViewById = activity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = this.f3226h.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f3226h.clear();
        return fragment;
    }

    private b.k.a.d a(View view, b.k.a.e eVar) {
        this.f3225g.clear();
        a(eVar.p().c(), this.f3225g);
        View viewFindViewById = eVar.findViewById(R.id.content);
        b.k.a.d dVar = null;
        while (!view.equals(viewFindViewById) && (dVar = this.f3225g.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f3225g.clear();
        return dVar;
    }

    @Deprecated
    private c.a.a.k a(Context context, FragmentManager fragmentManager, Fragment fragment, boolean z) {
        k kVarA = a(fragmentManager, fragment, z);
        c.a.a.k kVarB = kVarA.b();
        if (kVarB != null) {
            return kVarB;
        }
        c.a.a.k kVarA2 = this.f3224f.a(c.a.a.c.b(context), kVarA.a(), kVarA.c(), context);
        kVarA.a(kVarA2);
        return kVarA2;
    }

    private c.a.a.k a(Context context, b.k.a.i iVar, b.k.a.d dVar, boolean z) {
        o oVarA = a(iVar, dVar, z);
        c.a.a.k kVarP = oVarA.p();
        if (kVarP != null) {
            return kVarP;
        }
        c.a.a.k kVarA = this.f3224f.a(c.a.a.c.b(context), oVarA.o(), oVarA.q(), context);
        oVarA.a(kVarA);
        return kVarA;
    }

    private k a(FragmentManager fragmentManager, Fragment fragment, boolean z) {
        k kVar = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kVar == null && (kVar = this.f3221c.get(fragmentManager)) == null) {
            kVar = new k();
            kVar.a(fragment);
            if (z) {
                kVar.a().b();
            }
            this.f3221c.put(fragmentManager, kVar);
            fragmentManager.beginTransaction().add(kVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f3223e.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar;
    }

    private o a(b.k.a.i iVar, b.k.a.d dVar, boolean z) {
        o oVar = (o) iVar.a("com.bumptech.glide.manager");
        if (oVar == null && (oVar = this.f3222d.get(iVar)) == null) {
            oVar = new o();
            oVar.a(dVar);
            if (z) {
                oVar.o().b();
            }
            this.f3222d.put(iVar, oVar);
            b.k.a.o oVarA = iVar.a();
            oVarA.a(oVar, "com.bumptech.glide.manager");
            oVarA.b();
            this.f3223e.obtainMessage(2, iVar).sendToTarget();
        }
        return oVar;
    }

    @TargetApi(26)
    @Deprecated
    private void a(FragmentManager fragmentManager, b.e.a<View, Fragment> aVar) {
        if (Build.VERSION.SDK_INT < 26) {
            b(fragmentManager, aVar);
            return;
        }
        for (Fragment fragment : fragmentManager.getFragments()) {
            if (fragment.getView() != null) {
                aVar.put(fragment.getView(), fragment);
                a(fragment.getChildFragmentManager(), aVar);
            }
        }
    }

    private static void a(Collection<b.k.a.d> collection, Map<View, b.k.a.d> map) {
        if (collection == null) {
            return;
        }
        for (b.k.a.d dVar : collection) {
            if (dVar != null && dVar.getView() != null) {
                map.put(dVar.getView(), dVar);
                a(dVar.getChildFragmentManager().c(), map);
            }
        }
    }

    private Activity b(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @Deprecated
    private void b(FragmentManager fragmentManager, b.e.a<View, Fragment> aVar) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            this.f3227i.putInt("key", i2);
            Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f3227i, "key");
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                aVar.put(fragment.getView(), fragment);
                if (Build.VERSION.SDK_INT >= 17) {
                    a(fragment.getChildFragmentManager(), aVar);
                }
            }
            i2 = i3;
        }
    }

    private c.a.a.k c(Context context) {
        if (this.f3220b == null) {
            synchronized (this) {
                if (this.f3220b == null) {
                    this.f3220b = this.f3224f.a(c.a.a.c.b(context.getApplicationContext()), new c.a.a.o.b(), new g(), context.getApplicationContext());
                }
            }
        }
        return this.f3220b;
    }

    @TargetApi(17)
    private static void c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    private static boolean d(Activity activity) {
        return !activity.isFinishing();
    }

    public c.a.a.k a(Activity activity) {
        if (c.a.a.t.k.b()) {
            return a(activity.getApplicationContext());
        }
        c(activity);
        return a(activity, activity.getFragmentManager(), (Fragment) null, d(activity));
    }

    @TargetApi(17)
    @Deprecated
    public c.a.a.k a(Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        }
        if (c.a.a.t.k.b() || Build.VERSION.SDK_INT < 17) {
            return a(fragment.getActivity().getApplicationContext());
        }
        return a(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    public c.a.a.k a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (c.a.a.t.k.c() && !(context instanceof Application)) {
            if (context instanceof b.k.a.e) {
                return a((b.k.a.e) context);
            }
            if (context instanceof Activity) {
                return a((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return a(((ContextWrapper) context).getBaseContext());
            }
        }
        return c(context);
    }

    public c.a.a.k a(View view) {
        if (!c.a.a.t.k.b()) {
            c.a.a.t.j.a(view);
            c.a.a.t.j.a(view.getContext(), "Unable to obtain a request manager for a view without a Context");
            Activity activityB = b(view.getContext());
            if (activityB != null) {
                if (activityB instanceof b.k.a.e) {
                    b.k.a.d dVarA = a(view, (b.k.a.e) activityB);
                    return dVarA != null ? a(dVarA) : a(activityB);
                }
                Fragment fragmentA = a(view, activityB);
                return fragmentA == null ? a(activityB) : a(fragmentA);
            }
        }
        return a(view.getContext().getApplicationContext());
    }

    public c.a.a.k a(b.k.a.d dVar) {
        c.a.a.t.j.a(dVar.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (c.a.a.t.k.b()) {
            return a(dVar.getActivity().getApplicationContext());
        }
        return a(dVar.getActivity(), dVar.getChildFragmentManager(), dVar, dVar.isVisible());
    }

    public c.a.a.k a(b.k.a.e eVar) {
        if (c.a.a.t.k.b()) {
            return a(eVar.getApplicationContext());
        }
        c((Activity) eVar);
        return a(eVar, eVar.p(), (b.k.a.d) null, d(eVar));
    }

    @Deprecated
    k b(Activity activity) {
        return a(activity.getFragmentManager(), (Fragment) null, d(activity));
    }

    o b(b.k.a.e eVar) {
        return a(eVar.p(), (b.k.a.d) null, d(eVar));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Map map;
        Object objRemove;
        int i2 = message.what;
        Object obj = null;
        boolean z = true;
        if (i2 == 1) {
            obj = (FragmentManager) message.obj;
            map = this.f3221c;
        } else {
            if (i2 != 2) {
                z = false;
                objRemove = null;
                if (z && objRemove == null && Log.isLoggable("RMRetriever", 5)) {
                    Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
                }
                return z;
            }
            obj = (b.k.a.i) message.obj;
            map = this.f3222d;
        }
        objRemove = map.remove(obj);
        if (z) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
