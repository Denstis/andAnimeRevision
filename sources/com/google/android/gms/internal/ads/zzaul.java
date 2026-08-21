package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzaul {
    public static final Handler zzdsu = new zzauf(Looper.getMainLooper());
    private String zzber;
    private AtomicReference<Pattern> zzdss = new AtomicReference<>(null);
    private AtomicReference<Pattern> zzdst = new AtomicReference<>(null);
    private boolean zzyf = true;
    private final Object zzdsv = new Object();
    private boolean zzdsw = false;
    private boolean zzdsx = false;

    private static int zza(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'A';
        if (c2 < 'A' || c2 > 'F') {
            c3 = 'a';
            if (c2 < 'a' || c2 > 'f') {
                throw new IllegalArgumentException("Invalid Hex.");
            }
        }
        return (c2 - c3) + 10;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i2, int i3, boolean z) {
        return new PopupWindow(view, i2, i3, false);
    }

    public static String zza(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int i2 = inputStreamReader.read(cArr);
            if (i2 == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, i2);
        }
    }

    private final JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zza(jSONArray, it.next());
        }
        return jSONArray;
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }
    }

    @TargetApi(18)
    public static void zza(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String string = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 26);
            sb.append("Opening ");
            sb.append(string);
            sb.append(" in a new browser.");
            zzaxi.zzdv(sb.toString());
        } catch (ActivityNotFoundException e2) {
            zzaxi.zzc("No browser is found.", e2);
        }
    }

    public static void zza(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        boolean zBooleanValue = false;
        try {
            zBooleanValue = ((Boolean) zzuv.zzon().zzd(zzza.zzcgp)).booleanValue();
        } catch (IllegalStateException unused) {
        }
        if (zBooleanValue) {
            CrashUtils.addDynamiteErrorToDropBox(context, th);
        }
    }

    private final void zza(JSONArray jSONArray, Object obj) throws JSONException {
        Object objZza;
        if (obj instanceof Bundle) {
            objZza = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            objZza = zzi((Map<String, ?>) obj);
        } else {
            if (!(obj instanceof Collection)) {
                if (!(obj instanceof Object[])) {
                    jSONArray.put(obj);
                    return;
                }
                JSONArray jSONArray2 = new JSONArray();
                for (Object obj2 : (Object[]) obj) {
                    zza(jSONArray2, obj2);
                }
                jSONArray.put(jSONArray2);
                return;
            }
            objZza = zza((Collection<?>) obj);
        }
        jSONArray.put(objZza);
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        Collection<?> collectionAsList;
        Object objZza;
        if (obj instanceof Bundle) {
            objZza = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            objZza = zzi((Map<String, ?>) obj);
        } else {
            if (obj instanceof Collection) {
                if (str == null) {
                    str = "null";
                }
                collectionAsList = (Collection) obj;
            } else {
                if (!(obj instanceof Object[])) {
                    jSONObject.put(str, obj);
                    return;
                }
                collectionAsList = Arrays.asList((Object[]) obj);
            }
            objZza = zza(collectionAsList);
        }
        jSONObject.put(str, objZza);
    }

    private static boolean zza(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    @VisibleForTesting
    protected static String zzaq(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return zzvl();
        }
    }

    public static AlertDialog.Builder zzar(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zzyl zzas(Context context) {
        return new zzyl(context);
    }

    @SuppressLint({"NewApi"})
    public static String zzat(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                return runningTaskInfo.topActivity.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean zzau(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return true;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return !(powerManager == null ? false : powerManager.isScreenOn());
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int zzav(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    private static KeyguardManager zzaw(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    @TargetApi(16)
    public static boolean zzax(Context context) {
        KeyguardManager keyguardManagerZzaw;
        return context != null && PlatformVersion.isAtLeastJellyBean() && (keyguardManagerZzaw = zzaw(context)) != null && keyguardManagerZzaw.isKeyguardLocked();
    }

    public static boolean zzay(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzaxi.zzc("Error loading class.", th);
            com.google.android.gms.ads.internal.zzq.zzkn().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzaz(Context context) {
        return !((Boolean) zzuv.zzon().zzd(zzza.zzcst)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    @TargetApi(18)
    public static void zzb(Context context, Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastJellyBeanMR2()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            new zzawl(context, str, (String) obj).zzut();
        }
    }

    public static Bundle zzba(Context context) {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcsu)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
        for (int i2 = 0; i2 < 4; i2++) {
            String str = strArr[i2];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static boolean zzbb(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static void zzc(Context context, String str, String str2) {
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
            fileOutputStreamOpenFileOutput.write(str2.getBytes(C.UTF8_NAME));
            fileOutputStreamOpenFileOutput.close();
        } catch (Exception e2) {
            zzaxi.zzc("Error writing to file in internal storage.", e2);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzaxn.zzdwi.execute(runnable);
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.zzq.zzkj().zzr(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = new zzavy(context).zzc(str2, map).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", C.UTF8_NAME, new ByteArrayInputStream(str3.getBytes(C.UTF8_NAME)));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e2) {
            zzaxi.zzd("Could not fetch MRAID JS.", e2);
            return null;
        }
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        String contentType = httpURLConnection.getContentType();
        String strTrim = "";
        String strTrim2 = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.zzq.zzkj();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] strArrSplit = contentType2.split(";");
            if (strArrSplit.length != 1) {
                int i2 = 1;
                while (true) {
                    if (i2 >= strArrSplit.length) {
                        break;
                    }
                    if (strArrSplit[i2].trim().startsWith("charset")) {
                        String[] strArrSplit2 = strArrSplit[i2].trim().split("=");
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            break;
                        }
                    }
                    i2++;
                }
            }
        }
        String str = strTrim;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap map = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                map.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return com.google.android.gms.ads.internal.zzq.zzkl().zza(strTrim2, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map, httpURLConnection.getInputStream());
    }

    public static int[] zzd(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? zzvo() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static int zzed(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(strValueOf);
            zzaxi.zzeu(sb.toString());
            return 0;
        }
    }

    public static boolean zzee(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzeh(String str) {
        if (!zzaxc.isEnabled()) {
            return false;
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqo)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzuv.zzon().zzd(zzza.zzcqq);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzuv.zzon().zzd(zzza.zzcqp);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static Map<String, String> zzi(Uri uri) {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcte)).booleanValue()) {
            if (uri == null) {
                return null;
            }
            HashMap map = new HashMap();
            com.google.android.gms.ads.internal.zzq.zzkl();
            for (String str : uri.getQueryParameterNames()) {
                map.put(str, uri.getQueryParameter(str));
            }
            return map;
        }
        if (uri == null) {
            return null;
        }
        HashMap map2 = new HashMap(20);
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return map2;
        }
        int length = encodedQuery.length();
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(length);
        StringBuilder sb3 = sb;
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = encodedQuery.charAt(i2);
            if (cCharAt == '%') {
                byte[] bArr = new byte[(length - i2) / 3];
                int i3 = 0;
                while (i2 < length - 2 && cCharAt == '%') {
                    try {
                        bArr[i3] = (byte) ((zza(encodedQuery.charAt(i2 + 1)) << 4) + zza(encodedQuery.charAt(i2 + 2)));
                        i3++;
                    } catch (IllegalArgumentException unused) {
                    }
                    i2 += 3;
                    if (i2 < length) {
                        cCharAt = encodedQuery.charAt(i2);
                    }
                }
                try {
                    sb3.append(new String(bArr, 0, i3, C.UTF8_NAME));
                } catch (UnsupportedEncodingException unused2) {
                }
                if (cCharAt != '%') {
                }
            } else if (cCharAt != '&') {
                if (cCharAt == '+') {
                    cCharAt = ' ';
                } else if (cCharAt == '=' && sb3 != sb2) {
                    sb3 = sb2;
                }
                sb3.append(cCharAt);
            } else {
                if (sb.length() > 0 && sb3 != sb) {
                    map2.put(sb.toString(), sb2.toString());
                    sb.setLength(0);
                    sb2.setLength(0);
                }
                sb3 = sb;
            }
            i2++;
        }
        if (sb.length() > 0 && sb3 != sb) {
            map2.put(sb.toString(), sb2.toString());
        }
        return map2;
    }

    public static Bitmap zzk(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return bitmapCreateBitmap;
    }

    public static Bitmap zzl(View view) {
        if (view == null) {
            return null;
        }
        Bitmap bitmapZzn = zzn(view);
        return bitmapZzn == null ? zzm(view) : bitmapZzn;
    }

    private static Bitmap zzm(View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
                return bitmapCreateBitmap;
            }
            zzaxi.zzeu("Width or height of view is zero");
            return null;
        } catch (RuntimeException e2) {
            zzaxi.zzc("Fail to capture the webview", e2);
            return null;
        }
    }

    private static Bitmap zzn(View view) {
        try {
            boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
            view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
        } catch (RuntimeException e2) {
            zzaxi.zzc("Fail to capture the web view", e2);
        }
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean zzo(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L12
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L12
            android.app.Activity r2 = (android.app.Activity) r2
            goto L13
        L12:
            r2 = r0
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaul.zzo(android.view.View):boolean");
    }

    public static int zzp(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static boolean zzq(Context context, String str) {
        Context contextZzaa = zzapv.zzaa(context);
        return Wrappers.packageManager(contextZzaa).checkPermission(str, contextZzaa.getPackageName()) == 0;
    }

    public static String zzs(Context context, String str) {
        try {
            return new String(IOUtils.readInputStreamFully(context.openFileInput(str), true), C.UTF8_NAME);
        } catch (IOException unused) {
            zzaxi.zzdv("Error reading from internal storage.");
            return "";
        }
    }

    private static String zzvl() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static String zzvm() {
        return UUID.randomUUID().toString();
    }

    public static String zzvn() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    private static int[] zzvo() {
        return new int[]{0, 0};
    }

    public static String zzvp() {
        Resources resources = com.google.android.gms.ads.internal.zzq.zzkn().getResources();
        return resources != null ? resources.getString(com.google.android.gms.ads.impl.R.string.s7) : "Test Ad";
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzd(bundle);
            } catch (JSONException e2) {
                zzaxi.zzc("Error converting Bundle to JSON", e2);
            }
        }
        return null;
    }

    public final void zza(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(zzr(context, str));
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        bundle.putString("device", zzvn());
        bundle.putString("eids", TextUtils.join(",", zzza.zzpr()));
        zzuv.zzoj();
        zzawy.zza(context, str, str2, bundle, true, new zzauq(this, context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", zzr(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzaw(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zza(android.view.View r4, android.os.PowerManager r5, android.app.KeyguardManager r6) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzaul r0 = com.google.android.gms.ads.internal.zzq.zzkj()
            boolean r0 = r0.zzyf
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L1d
            if (r6 != 0) goto Le
            r6 = 0
            goto L12
        Le:
            boolean r6 = r6.inKeyguardRestrictedInputMode()
        L12:
            if (r6 == 0) goto L1d
            boolean r6 = zzo(r4)
            if (r6 == 0) goto L1b
            goto L1d
        L1b:
            r6 = 0
            goto L1e
        L1d:
            r6 = 1
        L1e:
            int r0 = r4.getVisibility()
            if (r0 != 0) goto L63
            boolean r0 = r4.isShown()
            if (r0 == 0) goto L63
            if (r5 == 0) goto L35
            boolean r5 = r5.isScreenOn()
            if (r5 == 0) goto L33
            goto L35
        L33:
            r5 = 0
            goto L36
        L35:
            r5 = 1
        L36:
            if (r5 == 0) goto L63
            if (r6 == 0) goto L63
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r5 = com.google.android.gms.internal.ads.zzza.zzclw
            com.google.android.gms.internal.ads.zzyw r6 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r5 = r6.zzd(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L62
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r4.getLocalVisibleRect(r5)
            if (r5 != 0) goto L62
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r4 = r4.getGlobalVisibleRect(r5)
            if (r4 == 0) goto L63
        L62:
            return r1
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaul.zza(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    public final boolean zzao(Context context) {
        if (this.zzdsw) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzaus(this, null), intentFilter);
        this.zzdsw = true;
        return true;
    }

    public final boolean zzap(Context context) {
        if (this.zzdsx) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzaup(this, null), intentFilter);
        this.zzdsx = true;
        return true;
    }

    public final JSONObject zzd(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final int[] zze(Activity activity) {
        int[] iArrZzd = zzd(activity);
        return new int[]{zzuv.zzoj().zzb(activity, iArrZzd[0]), zzuv.zzoj().zzb(activity, iArrZzd[1])};
    }

    public final boolean zzef(String str) {
        return zza(str, this.zzdss, (String) zzuv.zzon().zzd(zzza.zzcjg));
    }

    public final boolean zzeg(String str) {
        return zza(str, this.zzdst, (String) zzuv.zzon().zzd(zzza.zzcjh));
    }

    public final int[] zzf(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrZzvo = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? zzvo() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{zzuv.zzoj().zzb(activity, iArrZzvo[0]), zzuv.zzoj().zzb(activity, iArrZzvo[1])};
    }

    public final JSONObject zzi(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            throw new JSONException(strValueOf.length() != 0 ? "Could not convert map to JSON: ".concat(strValueOf) : new String("Could not convert map to JSON: "));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7 A[Catch: Exception -> 0x00b6, all -> 0x00d2, TRY_LEAVE, TryCatch #3 {Exception -> 0x00b6, blocks: (B:30:0x009d, B:32:0x00a7), top: B:50:0x009d, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String zzr(android.content.Context r5, java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaul.zzr(android.content.Context, java.lang.String):java.lang.String");
    }
}
