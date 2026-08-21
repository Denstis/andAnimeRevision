package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.h;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadNotificationUtil {
    private static final int NULL_STRING_ID = 0;

    private DownloadNotificationUtil() {
    }

    public static Notification buildDownloadCompletedNotification(Context context, int i2, String str, PendingIntent pendingIntent, String str2) {
        return newNotificationBuilder(context, i2, str, pendingIntent, str2, R.string.exo_download_completed).a();
    }

    public static Notification buildDownloadFailedNotification(Context context, int i2, String str, PendingIntent pendingIntent, String str2) {
        return newNotificationBuilder(context, i2, str, pendingIntent, str2, R.string.exo_download_failed).a();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.app.Notification buildProgressNotification(android.content.Context r17, int r18, java.lang.String r19, android.app.PendingIntent r20, java.lang.String r21, com.google.android.exoplayer2.offline.DownloadManager.TaskState[] r22) {
        /*
            r0 = r22
            int r1 = r0.length
            r2 = 1
            r3 = 0
            r4 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 1
            r10 = 0
        Ld:
            if (r4 >= r1) goto L3e
            r11 = r0[r4]
            int r12 = r11.state
            if (r12 == r2) goto L19
            r13 = 2
            if (r12 == r13) goto L19
            goto L3b
        L19:
            com.google.android.exoplayer2.offline.DownloadAction r12 = r11.action
            boolean r12 = r12.isRemoveAction
            if (r12 == 0) goto L21
            r6 = 1
            goto L3b
        L21:
            float r5 = r11.downloadPercentage
            r12 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r12 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r12 == 0) goto L2b
            float r7 = r7 + r5
            r9 = 0
        L2b:
            long r11 = r11.downloadedBytes
            r13 = 0
            int r5 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r5 <= 0) goto L35
            r5 = 1
            goto L36
        L35:
            r5 = 0
        L36:
            r5 = r5 | r10
            int r8 = r8 + 1
            r10 = r5
            r5 = 1
        L3b:
            int r4 = r4 + 1
            goto Ld
        L3e:
            if (r5 == 0) goto L45
            int r0 = com.google.android.exoplayer2.ui.R.string.exo_download_downloading
        L42:
            r16 = r0
            goto L4c
        L45:
            if (r6 == 0) goto L4a
            int r0 = com.google.android.exoplayer2.ui.R.string.exo_download_removing
            goto L42
        L4a:
            r16 = 0
        L4c:
            r11 = r17
            r12 = r18
            r13 = r19
            r14 = r20
            r15 = r21
            androidx.core.app.h$d r0 = newNotificationBuilder(r11, r12, r13, r14, r15, r16)
            if (r5 == 0) goto L66
            float r1 = (float) r8
            float r7 = r7 / r1
            int r1 = (int) r7
            if (r9 == 0) goto L64
            if (r10 == 0) goto L64
            goto L67
        L64:
            r4 = 0
            goto L68
        L66:
            r1 = 0
        L67:
            r4 = 1
        L68:
            r5 = 100
            r0.a(r5, r1, r4)
            r0.d(r2)
            r0.e(r3)
            android.app.Notification r0 = r0.a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DownloadNotificationUtil.buildProgressNotification(android.content.Context, int, java.lang.String, android.app.PendingIntent, java.lang.String, com.google.android.exoplayer2.offline.DownloadManager$TaskState[]):android.app.Notification");
    }

    private static h.d newNotificationBuilder(Context context, int i2, String str, PendingIntent pendingIntent, String str2, int i3) {
        h.d dVar = new h.d(context, str);
        dVar.f(i2);
        if (i3 != 0) {
            dVar.b(context.getResources().getString(i3));
        }
        if (pendingIntent != null) {
            dVar.a(pendingIntent);
        }
        if (str2 != null) {
            h.c cVar = new h.c();
            cVar.a(str2);
            dVar.a(cVar);
        }
        return dVar;
    }
}
