package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.h;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f866a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f868c;

    public static Bundle a(Notification.Builder builder, h.a aVar) {
        builder.addAction(aVar.e(), aVar.i(), aVar.a());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f()));
        }
        if (aVar.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        return bundle;
    }

    public static Bundle a(Notification notification) {
        String str;
        String str2;
        synchronized (f866a) {
            if (f868c) {
                return null;
            }
            try {
                if (f867b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f868c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f867b = declaredField;
                }
                Bundle bundle = (Bundle) f867b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f867b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                e = e2;
                str = "NotificationCompat";
                str2 = "Unable to access notification extras";
                Log.e(str, str2, e);
                f868c = true;
                return null;
            } catch (NoSuchFieldException e3) {
                e = e3;
                str = "NotificationCompat";
                str2 = "Unable to access notification extras";
                Log.e(str, str2, e);
                f868c = true;
                return null;
            }
        }
    }

    static Bundle a(h.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", aVar.e());
        bundle.putCharSequence("title", aVar.i());
        bundle.putParcelable("actionIntent", aVar.a());
        Bundle bundle2 = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", a(aVar.f()));
        bundle.putBoolean("showsUserInterface", aVar.h());
        bundle.putInt("semanticAction", aVar.g());
        return bundle;
    }

    private static Bundle a(l lVar) {
        new Bundle();
        lVar.a();
        throw null;
    }

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    private static Bundle[] a(l[] lVarArr) {
        if (lVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[lVarArr.length];
        if (lVarArr.length <= 0) {
            return bundleArr;
        }
        a(lVarArr[0]);
        throw null;
    }
}
