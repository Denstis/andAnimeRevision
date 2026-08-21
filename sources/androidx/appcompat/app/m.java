package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static m f200d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocationManager f202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f203c = new a();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f206c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f207d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f208e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f209f;

        a() {
        }
    }

    m(Context context, LocationManager locationManager) {
        this.f201a = context;
        this.f202b = locationManager;
    }

    private Location a(String str) {
        try {
            if (this.f202b.isProviderEnabled(str)) {
                return this.f202b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e2) {
            Log.d("TwilightManager", "Failed to get last known location", e2);
            return null;
        }
    }

    static m a(Context context) {
        if (f200d == null) {
            Context applicationContext = context.getApplicationContext();
            f200d = new m(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
        }
        return f200d;
    }

    private void a(Location location) {
        long j2;
        a aVar = this.f203c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        l lVarA = l.a();
        lVarA.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = lVarA.f197a;
        lVarA.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = lVarA.f199c == 1;
        long j4 = lVarA.f198b;
        long j5 = lVarA.f197a;
        boolean z2 = z;
        lVarA.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = lVarA.f198b;
        if (j4 == -1 || j5 == -1) {
            j2 = 43200000 + jCurrentTimeMillis;
        } else {
            j2 = (jCurrentTimeMillis > j5 ? 0 + j6 : jCurrentTimeMillis > j4 ? 0 + j5 : 0 + j4) + DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
        }
        aVar.f204a = z2;
        aVar.f205b = j3;
        aVar.f206c = j4;
        aVar.f207d = j5;
        aVar.f208e = j6;
        aVar.f209f = j2;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationA = androidx.core.content.b.a(this.f201a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        Location locationA2 = androidx.core.content.b.a(this.f201a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? a("gps") : null;
        return (locationA2 == null || locationA == null) ? locationA2 != null ? locationA2 : locationA : locationA2.getTime() > locationA.getTime() ? locationA2 : locationA;
    }

    private boolean c() {
        return this.f203c.f209f > System.currentTimeMillis();
    }

    boolean a() {
        a aVar = this.f203c;
        if (c()) {
            return aVar.f204a;
        }
        Location locationB = b();
        if (locationB != null) {
            a(locationB);
            return aVar.f204a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i2 = Calendar.getInstance().get(11);
        return i2 < 6 || i2 >= 22;
    }
}
