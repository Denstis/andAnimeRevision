package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.h;
import androidx.core.content.a;
import com.google.android.exoplayer2.C;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzb {
    private static final AtomicInteger zza = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private static int zza(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && zza(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && zza(resources, identifier2)) {
                return identifier2;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 61);
            sb.append("Icon resource ");
            sb.append(str2);
            sb.append(" not found. Notification will use default icon.");
            Log.w("FirebaseMessaging", sb.toString());
        }
        int i2 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i2 == 0 || !zza(resources, i2)) {
            try {
                i2 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e2) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 35);
                sb2.append("Couldn't get own application info: ");
                sb2.append(strValueOf);
                Log.w("FirebaseMessaging", sb2.toString());
            }
        }
        return (i2 == 0 || !zza(resources, i2)) ? android.R.drawable.sym_def_app_icon : i2;
    }

    private static PendingIntent zza(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, zza.incrementAndGet(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), 1073741824);
    }

    private static Bundle zza(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(strValueOf);
            Log.w("FirebaseMessaging", sb.toString());
        }
        return Bundle.EMPTY;
    }

    static zza zza(Context context, zzk zzkVar) {
        Uri defaultUri;
        Intent intent;
        PendingIntent activity;
        Bundle bundleZza = zza(context.getPackageManager(), context.getPackageName());
        String packageName = context.getPackageName();
        String strZzb = zzb(context, zzkVar.zza("gcm.n.android_channel_id"), bundleZza);
        Resources resources = context.getResources();
        PackageManager packageManager = context.getPackageManager();
        h.d dVar = new h.d(context, strZzb);
        dVar.b(zza(packageName, zzkVar, packageManager, resources));
        String strZza = zzkVar.zza(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(strZza)) {
            dVar.a((CharSequence) strZza);
            h.c cVar = new h.c();
            cVar.a(strZza);
            dVar.a(cVar);
        }
        dVar.f(zza(packageManager, resources, packageName, zzkVar.zza("gcm.n.icon"), bundleZza));
        String strZzb2 = zzkVar.zzb();
        Integer num = null;
        if (TextUtils.isEmpty(strZzb2)) {
            defaultUri = null;
        } else if ("default".equals(strZzb2) || resources.getIdentifier(strZzb2, "raw", packageName) == 0) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        } else {
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 24 + String.valueOf(strZzb2).length());
            sb.append("android.resource://");
            sb.append(packageName);
            sb.append("/raw/");
            sb.append(strZzb2);
            defaultUri = Uri.parse(sb.toString());
        }
        if (defaultUri != null) {
            dVar.a(defaultUri);
        }
        String strZza2 = zzkVar.zza("gcm.n.click_action");
        if (TextUtils.isEmpty(strZza2)) {
            Uri uriZza = zzkVar.zza();
            if (uriZza != null) {
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(packageName);
                intent.setData(uriZza);
            } else {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage == null) {
                    Log.w("FirebaseMessaging", "No activity found to launch app");
                }
                intent = launchIntentForPackage;
            }
        } else {
            intent = new Intent(strZza2);
            intent.setPackage(packageName);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (intent == null) {
            activity = null;
        } else {
            intent.addFlags(67108864);
            intent.putExtras(zzkVar.zze());
            activity = PendingIntent.getActivity(context, zza.incrementAndGet(), intent, 1073741824);
            if (zzkVar.zzb("google.c.a.e")) {
                activity = zza(context, new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN").putExtras(zzkVar.zzf()).putExtra("pending_intent", activity));
            }
        }
        dVar.a(activity);
        PendingIntent pendingIntentZza = !zzkVar.zzb("google.c.a.e") ? null : zza(context, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(zzkVar.zzf()));
        if (pendingIntentZza != null) {
            dVar.b(pendingIntentZza);
        }
        Integer numZza = zza(context, zzkVar.zza("gcm.n.color"), bundleZza);
        if (numZza != null) {
            dVar.b(numZza.intValue());
        }
        dVar.a(!zzkVar.zzb("gcm.n.sticky"));
        dVar.c(zzkVar.zzb("gcm.n.local_only"));
        String strZza3 = zzkVar.zza("gcm.n.ticker");
        if (strZza3 != null) {
            dVar.d(strZza3);
        }
        Integer numZzc = zzkVar.zzc("gcm.n.notification_priority");
        if (numZzc == null) {
            numZzc = null;
        } else if (numZzc.intValue() < -2 || numZzc.intValue() > 2) {
            String strValueOf = String.valueOf(numZzc);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 72);
            sb2.append("notificationPriority is invalid ");
            sb2.append(strValueOf);
            sb2.append(". Skipping setting notificationPriority.");
            Log.w("FirebaseMessaging", sb2.toString());
            numZzc = null;
        }
        if (numZzc != null) {
            dVar.e(numZzc.intValue());
        }
        Integer numZzc2 = zzkVar.zzc("gcm.n.visibility");
        if (numZzc2 == null) {
            numZzc2 = null;
        } else if (numZzc2.intValue() < -1 || numZzc2.intValue() > 1) {
            String strValueOf2 = String.valueOf(numZzc2);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf2).length() + 53);
            sb3.append("visibility is invalid: ");
            sb3.append(strValueOf2);
            sb3.append(". Skipping setting visibility.");
            Log.w("NotificationParams", sb3.toString());
            numZzc2 = null;
        }
        if (numZzc2 != null) {
            dVar.g(numZzc2.intValue());
        }
        Integer numZzc3 = zzkVar.zzc("gcm.n.notification_count");
        if (numZzc3 != null) {
            if (numZzc3.intValue() < 0) {
                String strValueOf3 = String.valueOf(numZzc3);
                StringBuilder sb4 = new StringBuilder(String.valueOf(strValueOf3).length() + 67);
                sb4.append("notificationCount is invalid: ");
                sb4.append(strValueOf3);
                sb4.append(". Skipping setting notificationCount.");
                Log.w("FirebaseMessaging", sb4.toString());
            } else {
                num = numZzc3;
            }
        }
        if (num != null) {
            dVar.d(num.intValue());
        }
        Long lZzd = zzkVar.zzd("gcm.n.event_time");
        if (lZzd != null) {
            dVar.a(lZzd.longValue());
        }
        long[] jArrZzc = zzkVar.zzc();
        if (jArrZzc != null) {
            dVar.a(jArrZzc);
        }
        int[] iArrZzd = zzkVar.zzd();
        if (iArrZzd != null) {
            dVar.a(iArrZzd[0], iArrZzd[1], iArrZzd[2]);
        }
        int i2 = zzkVar.zzb("gcm.n.default_sound") ? 1 : 0;
        if (zzkVar.zzb("gcm.n.default_vibrate_timings")) {
            i2 |= 2;
        }
        if (zzkVar.zzb("gcm.n.default_light_settings")) {
            i2 |= 4;
        }
        dVar.c(i2);
        String strZza4 = zzkVar.zza("gcm.n.tag");
        if (TextUtils.isEmpty(strZza4)) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            StringBuilder sb5 = new StringBuilder(37);
            sb5.append("FCM-Notification:");
            sb5.append(jUptimeMillis);
            strZza4 = sb5.toString();
        }
        return new zza(dVar, strZza4, 0);
    }

    private static CharSequence zza(String str, zzk zzkVar, PackageManager packageManager, Resources resources) {
        String strZza = zzkVar.zza(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(strZza)) {
            return strZza;
        }
        try {
            return packageManager.getApplicationInfo(str, 0).loadLabel(packageManager);
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(strValueOf);
            Log.e("FirebaseMessaging", sb.toString());
            return "";
        }
    }

    private static Integer zza(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 56);
                sb.append("Color is invalid: ");
                sb.append(str);
                sb.append(". Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i2 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i2 != 0) {
            try {
                return Integer.valueOf(a.a(context, i2));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    @TargetApi(26)
    private static boolean zza(Resources resources, int i2) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i2, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i2);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i2);
            sb2.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        }
    }

    @TargetApi(26)
    private static String zzb(Context context, String str, Bundle bundle) {
        String str2;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                sb.append("Notification Channel requested (");
                sb.append(str);
                sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                Log.w("FirebaseMessaging", sb.toString());
            }
            String string = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string)) {
                str2 = "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.";
            } else {
                if (notificationManager.getNotificationChannel(string) != null) {
                    return string;
                }
                str2 = "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.";
            }
            Log.w("FirebaseMessaging", str2);
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", context.getString(context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName())), 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
