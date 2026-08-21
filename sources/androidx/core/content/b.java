package androidx.core.content;

import android.content.Context;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static int a(Context context, String str) {
        return a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static int a(Context context, String str, int i2, int i3, String str2) {
        if (context.checkPermission(str, i2, i3) == -1) {
            return -1;
        }
        String strA = androidx.core.app.b.a(str);
        if (strA == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i3);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return androidx.core.app.b.a(context, strA, str2) != 0 ? -2 : 0;
    }
}
