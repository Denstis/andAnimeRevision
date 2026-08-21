package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class zzawy {
    private float zzdvw = -1.0f;
    public static final Handler zzzb = new zzdac(Looper.getMainLooper());
    private static final String zzdvq = AdView.class.getName();
    private static final String zzdvr = InterstitialAd.class.getName();
    private static final String zzdvs = PublisherAdView.class.getName();
    private static final String zzdvt = PublisherInterstitialAd.class.getName();
    private static final String zzdvu = SearchAdView.class.getName();
    private static final String zzdvv = AdLoader.class.getName();

    public static int zza(Context context, int i2) {
        return zza(context.getResources().getDisplayMetrics(), i2);
    }

    public static int zza(DisplayMetrics displayMetrics, int i2) {
        return (int) TypedValue.applyDimension(1, i2, displayMetrics);
    }

    public static AdSize zza(Context context, int i2, int i3, int i4) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        float f2;
        float f3;
        int iRound;
        if (context == null) {
            return AdSize.INVALID;
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        Resources resources = context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
            int i5 = configuration.orientation;
            if (i4 == 0) {
                i4 = i5;
            }
            int iMin = Math.min(90, Math.round(Math.round((i4 == i5 ? displayMetrics.heightPixels : displayMetrics.widthPixels) / displayMetrics.density) * 0.15f));
            if (i2 <= 655) {
                if (i2 > 632) {
                    iRound = 81;
                } else if (i2 > 526) {
                    f2 = i2 / 468.0f;
                    f3 = 60.0f;
                } else if (i2 > 432) {
                    iRound = 68;
                } else {
                    f2 = i2 / 320.0f;
                    f3 = 50.0f;
                }
                return new AdSize(i2, Math.max(Math.min(iRound, iMin), 50));
            }
            f2 = i2 / 728.0f;
            f3 = 90.0f;
            iRound = Math.round(f2 * f3);
            return new AdSize(i2, Math.max(Math.min(iRound, iMin), 50));
        }
        return AdSize.INVALID;
    }

    @VisibleForTesting
    public static String zza(StackTraceElement[] stackTraceElementArr, String str) {
        int i2;
        String className;
        int i3 = 0;
        while (true) {
            i2 = i3 + 1;
            if (i2 >= stackTraceElementArr.length) {
                className = null;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            String className2 = stackTraceElement.getClassName();
            if ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (zzdvq.equalsIgnoreCase(className2) || zzdvr.equalsIgnoreCase(className2) || zzdvs.equalsIgnoreCase(className2) || zzdvt.equalsIgnoreCase(className2) || zzdvu.equalsIgnoreCase(className2) || zzdvv.equalsIgnoreCase(className2))) {
                break;
            }
            i3 = i2;
        }
        className = stackTraceElementArr[i2].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            int i4 = 2;
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                while (true) {
                    int i5 = i4 - 1;
                    if (i4 <= 0 || !stringTokenizer.hasMoreElements()) {
                        break;
                    }
                    sb.append(".");
                    sb.append(stringTokenizer.nextToken());
                    i4 = i5;
                }
                str = sb.toString();
            }
            if (className != null && !className.contains(str)) {
                return className;
            }
        }
        return null;
    }

    public static void zza(Context context, String str, String str2, Bundle bundle, boolean z, zzawz zzawzVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            int apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(apkVersion);
            sb.append(".15601000");
            str = sb.toString();
        }
        bundle.putString("js", str);
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.col/pagead/gen_204").appendQueryParameter(TtmlNode.ATTR_ID, str2);
        for (String str3 : bundle.keySet()) {
            builderAppendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        zzawzVar.zzei(builderAppendQueryParameter.toString());
    }

    private final void zza(ViewGroup viewGroup, zzua zzuaVar, String str, int i2, int i3) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i2);
        textView.setBackgroundColor(i3);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i2);
        int iZza = zza(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzuaVar.widthPixels - iZza, zzuaVar.heightPixels - iZza, 17));
        viewGroup.addView(frameLayout, zzuaVar.widthPixels, zzuaVar.heightPixels);
    }

    public static void zza(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public static int zzb(DisplayMetrics displayMetrics, int i2) {
        return Math.round(i2 / displayMetrics.density);
    }

    public static String zzbi(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || zzwj()) {
            string = "emulator";
        }
        return zzen(string);
    }

    public static String zzbj(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public static boolean zzbk(Context context) {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
        return iIsGooglePlayServicesAvailable == 0 || iIsGooglePlayServicesAvailable == 2;
    }

    public static boolean zzbl(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    @TargetApi(17)
    public static boolean zzbm(Context context) {
        int iIntValue;
        int iIntValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            iIntValue = displayMetrics.heightPixels;
            iIntValue2 = displayMetrics.widthPixels;
        } else {
            try {
                iIntValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                iIntValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception unused) {
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == iIntValue && displayMetrics.widthPixels == iIntValue2;
    }

    public static int zzbn(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static Throwable zzc(Throwable th) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcgq)).booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (zzeo(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (!(!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java.")))) {
                        stackTraceElement = new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1);
                    }
                    arrayList.add(stackTraceElement);
                }
            }
            if (z) {
                th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }

    public static boolean zzc(Context context, int i2) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i2) == 0;
    }

    public static String zzen(String str) {
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    @VisibleForTesting
    public static boolean zzeo(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) zzuv.zzon().zzd(zzza.zzcgr));
    }

    public static boolean zzwj() {
        return Build.DEVICE.startsWith("generic");
    }

    public static boolean zzwk() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String zzwl() {
        UUID uuidRandomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(uuidRandomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(uuidRandomUUID.getMostSignificantBits()).toByteArray();
        String string = new BigInteger(1, byteArray).toString();
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                string = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return string;
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zza(context, str, str2, bundle, true, new zzawx(this));
    }

    public final void zza(ViewGroup viewGroup, zzua zzuaVar, String str) {
        zza(viewGroup, zzuaVar, str, -16777216, -1);
    }

    public final void zza(ViewGroup viewGroup, zzua zzuaVar, String str, String str2) {
        zzaxi.zzeu(str2);
        zza(viewGroup, zzuaVar, str, -65536, -16777216);
    }

    public final int zzb(Context context, int i2) {
        if (this.zzdvw < 0.0f) {
            synchronized (this) {
                if (this.zzdvw < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.zzdvw = displayMetrics.density;
                }
            }
        }
        return Math.round(i2 / this.zzdvw);
    }
}
