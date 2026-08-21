package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class a extends androidx.core.content.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f821c;

    /* JADX INFO: renamed from: androidx.core.app.a$a, reason: collision with other inner class name */
    static class RunnableC0016a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Activity f823c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f824d;

        RunnableC0016a(String[] strArr, Activity activity, int i2) {
            this.f822b = strArr;
            this.f823c = activity;
            this.f824d = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f822b.length];
            PackageManager packageManager = this.f823c.getPackageManager();
            String packageName = this.f823c.getPackageName();
            int length = this.f822b.length;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = packageManager.checkPermission(this.f822b[i2], packageName);
            }
            ((b) this.f823c).onRequestPermissionsResult(this.f824d, this.f822b, iArr);
        }
    }

    public interface b {
        void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr);
    }

    public interface c {
        boolean a(Activity activity, int i2, int i3, Intent intent);

        boolean a(Activity activity, String[] strArr, int i2);
    }

    public interface d {
        void f(int i2);
    }

    public static c a() {
        return f821c;
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void a(Activity activity, Intent intent, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i2, bundle);
        } else {
            activity.startActivityForResult(intent, i2);
        }
    }

    public static void a(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, String[] strArr, int i2) {
        c cVar = f821c;
        if (cVar == null || !cVar.a(activity, strArr, i2)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof d) {
                    ((d) activity).f(i2);
                }
                activity.requestPermissions(strArr, i2);
            } else if (activity instanceof b) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0016a(strArr, activity, i2));
            }
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }
}
