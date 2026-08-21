package c.a.a.o;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import c.a.a.o.c;

/* JADX INFO: loaded from: classes.dex */
final class e implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final c.a f3207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f3208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BroadcastReceiver f3210f = new a();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            e eVar = e.this;
            boolean z = eVar.f3208d;
            eVar.f3208d = eVar.a(context);
            if (z != e.this.f3208d) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + e.this.f3208d);
                }
                e eVar2 = e.this;
                eVar2.f3207c.a(eVar2.f3208d);
            }
        }
    }

    e(Context context, c.a aVar) {
        this.f3206b = context.getApplicationContext();
        this.f3207c = aVar;
    }

    private void a() {
        if (this.f3209e) {
            return;
        }
        this.f3208d = a(this.f3206b);
        try {
            this.f3206b.registerReceiver(this.f3210f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3209e = true;
        } catch (SecurityException e2) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register", e2);
            }
        }
    }

    private void b() {
        if (this.f3209e) {
            this.f3206b.unregisterReceiver(this.f3210f);
            this.f3209e = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        c.a.a.t.j.a(connectivityManager);
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e2) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e2);
            }
            return true;
        }
    }

    @Override // c.a.a.o.i
    public void onDestroy() {
    }

    @Override // c.a.a.o.i
    public void onStart() {
        a();
    }

    @Override // c.a.a.o.i
    public void onStop() {
        b();
    }
}
