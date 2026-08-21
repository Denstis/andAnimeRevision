package com.bumptech.glide.load.n.b0;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f3498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3499d;

    public static final class a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        static final int f3500i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Context f3501a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ActivityManager f3502b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c f3503c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f3505e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f3504d = 2.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f3506f = 0.4f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f3507g = 0.33f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f3508h = 4194304;

        static {
            f3500i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f3505e = f3500i;
            this.f3501a = context;
            this.f3502b = (ActivityManager) context.getSystemService("activity");
            this.f3503c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !i.a(this.f3502b)) {
                return;
            }
            this.f3505e = 0.0f;
        }

        public i a() {
            return new i(this);
        }
    }

    private static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DisplayMetrics f3509a;

        b(DisplayMetrics displayMetrics) {
            this.f3509a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.n.b0.i.c
        public int a() {
            return this.f3509a.heightPixels;
        }

        @Override // com.bumptech.glide.load.n.b0.i.c
        public int b() {
            return this.f3509a.widthPixels;
        }
    }

    interface c {
        int a();

        int b();
    }

    i(a aVar) {
        this.f3498c = aVar.f3501a;
        this.f3499d = a(aVar.f3502b) ? aVar.f3508h / 2 : aVar.f3508h;
        int iA = a(aVar.f3502b, aVar.f3506f, aVar.f3507g);
        float fB = aVar.f3503c.b() * aVar.f3503c.a() * 4;
        int iRound = Math.round(aVar.f3505e * fB);
        int iRound2 = Math.round(fB * aVar.f3504d);
        int i2 = iA - this.f3499d;
        int i3 = iRound2 + iRound;
        if (i3 <= i2) {
            this.f3497b = iRound2;
            this.f3496a = iRound;
        } else {
            float f2 = i2;
            float f3 = aVar.f3505e;
            float f4 = aVar.f3504d;
            float f5 = f2 / (f3 + f4);
            this.f3497b = Math.round(f4 * f5);
            this.f3496a = Math.round(f5 * aVar.f3505e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(a(this.f3497b));
            sb.append(", pool size: ");
            sb.append(a(this.f3496a));
            sb.append(", byte array size: ");
            sb.append(a(this.f3499d));
            sb.append(", memory class limited? ");
            sb.append(i3 > iA);
            sb.append(", max size: ");
            sb.append(a(iA));
            sb.append(", memoryClass: ");
            sb.append(aVar.f3502b.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(a(aVar.f3502b));
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    private static int a(ActivityManager activityManager, float f2, float f3) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (a(activityManager)) {
            f2 = f3;
        }
        return Math.round(memoryClass * f2);
    }

    private String a(int i2) {
        return Formatter.formatFileSize(this.f3498c, i2);
    }

    @TargetApi(19)
    static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    public int a() {
        return this.f3499d;
    }

    public int b() {
        return this.f3496a;
    }

    public int c() {
        return this.f3497b;
    }
}
