package androidx.core.app;

import a.a.a.a.a;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f870d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static d f873g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NotificationManager f875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f869c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Set<String> f871e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f872f = new Object();

    private static class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f876a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f877b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f878c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f879d = false;

        a(String str, int i2, String str2) {
            this.f876a = str;
            this.f877b = i2;
            this.f878c = str2;
        }

        @Override // androidx.core.app.k.e
        public void a(a.a.a.a.a aVar) {
            if (this.f879d) {
                aVar.a(this.f876a);
            } else {
                aVar.a(this.f876a, this.f877b, this.f878c);
            }
        }

        public String toString() {
            return "CancelTask[packageName:" + this.f876a + ", id:" + this.f877b + ", tag:" + this.f878c + ", all:" + this.f879d + "]";
        }
    }

    private static class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f882c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f883d;

        b(String str, int i2, String str2, Notification notification) {
            this.f880a = str;
            this.f881b = i2;
            this.f882c = str2;
            this.f883d = notification;
        }

        @Override // androidx.core.app.k.e
        public void a(a.a.a.a.a aVar) {
            aVar.a(this.f880a, this.f881b, this.f882c, this.f883d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f880a + ", id:" + this.f881b + ", tag:" + this.f882c + "]";
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f885b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f884a = componentName;
            this.f885b = iBinder;
        }
    }

    private static class d implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f886b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Handler f888d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Map<ComponentName, a> f889e = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Set<String> f890f = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HandlerThread f887c = new HandlerThread("NotificationManagerCompat");

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ComponentName f891a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            a.a.a.a.a f893c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f892b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ArrayDeque<e> f894d = new ArrayDeque<>();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f895e = 0;

            a(ComponentName componentName) {
                this.f891a = componentName;
            }
        }

        d(Context context) {
            this.f886b = context;
            this.f887c.start();
            this.f888d = new Handler(this.f887c.getLooper(), this);
        }

        private void a() {
            Set<String> setB = k.b(this.f886b);
            if (setB.equals(this.f890f)) {
                return;
            }
            this.f890f = setB;
            List<ResolveInfo> listQueryIntentServices = this.f886b.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setB.contains(resolveInfo.serviceInfo.packageName)) {
                    ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f889e.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f889e.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.f889e.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.f889e.get(componentName);
            if (aVar != null) {
                c(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f889e.get(componentName);
            if (aVar != null) {
                aVar.f893c = a.AbstractBinderC0000a.a(iBinder);
                aVar.f895e = 0;
                c(aVar);
            }
        }

        private boolean a(a aVar) {
            if (aVar.f892b) {
                return true;
            }
            aVar.f892b = this.f886b.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f891a), this, 33);
            if (aVar.f892b) {
                aVar.f895e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f891a);
                this.f886b.unbindService(this);
            }
            return aVar.f892b;
        }

        private void b(ComponentName componentName) {
            a aVar = this.f889e.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(a aVar) {
            if (aVar.f892b) {
                this.f886b.unbindService(this);
                aVar.f892b = false;
            }
            aVar.f893c = null;
        }

        private void b(e eVar) {
            a();
            for (a aVar : this.f889e.values()) {
                aVar.f894d.add(eVar);
                c(aVar);
            }
        }

        private void c(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f891a + ", " + aVar.f894d.size() + " queued tasks");
            }
            if (aVar.f894d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.f893c == null) {
                d(aVar);
                return;
            }
            while (true) {
                e eVarPeek = aVar.f894d.peek();
                if (eVarPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + eVarPeek);
                    }
                    eVarPeek.a(aVar.f893c);
                    aVar.f894d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + aVar.f891a);
                    }
                } catch (RemoteException e2) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f891a, e2);
                }
            }
            if (aVar.f894d.isEmpty()) {
                return;
            }
            d(aVar);
        }

        private void d(a aVar) {
            if (this.f888d.hasMessages(3, aVar.f891a)) {
                return;
            }
            aVar.f895e++;
            int i2 = aVar.f895e;
            if (i2 <= 6) {
                int i3 = (1 << (i2 - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i3 + " ms");
                }
                this.f888d.sendMessageDelayed(this.f888d.obtainMessage(3, aVar.f891a), i3);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + aVar.f894d.size() + " tasks to " + aVar.f891a + " after " + aVar.f895e + " retries");
            aVar.f894d.clear();
        }

        public void a(e eVar) {
            this.f888d.obtainMessage(0, eVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                b((e) message.obj);
                return true;
            }
            if (i2 == 1) {
                c cVar = (c) message.obj;
                a(cVar.f884a, cVar.f885b);
                return true;
            }
            if (i2 == 2) {
                b((ComponentName) message.obj);
                return true;
            }
            if (i2 != 3) {
                return false;
            }
            a((ComponentName) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f888d.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f888d.obtainMessage(2, componentName).sendToTarget();
        }
    }

    private interface e {
        void a(a.a.a.a.a aVar);
    }

    private k(Context context) {
        this.f874a = context;
        this.f875b = (NotificationManager) this.f874a.getSystemService("notification");
    }

    public static k a(Context context) {
        return new k(context);
    }

    private void a(e eVar) {
        synchronized (f872f) {
            if (f873g == null) {
                f873g = new d(this.f874a.getApplicationContext());
            }
            f873g.a(eVar);
        }
    }

    private static boolean a(Notification notification) {
        Bundle bundleA = h.a(notification);
        return bundleA != null && bundleA.getBoolean("android.support.useSideChannel");
    }

    public static Set<String> b(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f869c) {
            if (string != null) {
                if (!string.equals(f870d)) {
                    String[] strArrSplit = string.split(":", -1);
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    f871e = hashSet;
                    f870d = string;
                }
                set = f871e;
            } else {
                set = f871e;
            }
        }
        return set;
    }

    public void a(int i2) {
        a((String) null, i2);
    }

    public void a(int i2, Notification notification) {
        a(null, i2, notification);
    }

    public void a(String str, int i2) {
        this.f875b.cancel(str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a(new a(this.f874a.getPackageName(), i2, str));
        }
    }

    public void a(String str, int i2, Notification notification) {
        if (!a(notification)) {
            this.f875b.notify(str, i2, notification);
        } else {
            a(new b(this.f874a.getPackageName(), i2, str, notification));
            this.f875b.cancel(str, i2);
        }
    }
}
