package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class h {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l[] f831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final l[] f832c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f833d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f834e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f835f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f836g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f837h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public PendingIntent f838i;

        public a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i2, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
        }

        a(int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, l[] lVarArr, l[] lVarArr2, boolean z, int i3, boolean z2) {
            this.f834e = true;
            this.f836g = i2;
            this.f837h = d.e(charSequence);
            this.f838i = pendingIntent;
            this.f830a = bundle == null ? new Bundle() : bundle;
            this.f831b = lVarArr;
            this.f832c = lVarArr2;
            this.f833d = z;
            this.f835f = i3;
            this.f834e = z2;
        }

        public PendingIntent a() {
            return this.f838i;
        }

        public boolean b() {
            return this.f833d;
        }

        public l[] c() {
            return this.f832c;
        }

        public Bundle d() {
            return this.f830a;
        }

        public int e() {
            return this.f836g;
        }

        public l[] f() {
            return this.f831b;
        }

        public int g() {
            return this.f835f;
        }

        public boolean h() {
            return this.f834e;
        }

        public CharSequence i() {
            return this.f837h;
        }
    }

    public static class b extends e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bitmap f839e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Bitmap f840f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f841g;

        public b a(Bitmap bitmap) {
            this.f840f = bitmap;
            this.f841g = true;
            return this;
        }

        @Override // androidx.core.app.h.e
        public void a(g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPictureStyleBigPicture = new Notification.BigPictureStyle(gVar.a()).setBigContentTitle(this.f855b).bigPicture(this.f839e);
                if (this.f841g) {
                    bigPictureStyleBigPicture.bigLargeIcon(this.f840f);
                }
                if (this.f857d) {
                    bigPictureStyleBigPicture.setSummaryText(this.f856c);
                }
            }
        }

        public b b(Bitmap bitmap) {
            this.f839e = bitmap;
            return this;
        }
    }

    public static class c extends e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f842e;

        public c a(CharSequence charSequence) {
            this.f842e = d.e(charSequence);
            return this;
        }

        @Override // androidx.core.app.h.e
        public void a(g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(gVar.a()).setBigContentTitle(this.f855b).bigText(this.f842e);
                if (this.f857d) {
                    bigTextStyleBigText.setSummaryText(this.f856c);
                }
            }
        }
    }

    public static class d {
        String A;
        Bundle B;
        int C;
        int D;
        Notification E;
        RemoteViews F;
        RemoteViews G;
        RemoteViews H;
        String I;
        int J;
        String K;
        long L;
        int M;
        Notification N;

        @Deprecated
        public ArrayList<String> O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<a> f844b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ArrayList<a> f845c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        CharSequence f846d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        CharSequence f847e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        PendingIntent f848f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        PendingIntent f849g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        RemoteViews f850h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Bitmap f851i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        CharSequence f852j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f853k;
        int l;
        boolean m;
        boolean n;
        e o;
        CharSequence p;
        CharSequence[] q;
        int r;
        int s;
        boolean t;
        String u;
        boolean v;
        String w;
        boolean x;
        boolean y;
        boolean z;

        @Deprecated
        public d(Context context) {
            this(context, null);
        }

        public d(Context context, String str) {
            this.f844b = new ArrayList<>();
            this.f845c = new ArrayList<>();
            this.m = true;
            this.x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.M = 0;
            this.N = new Notification();
            this.f843a = context;
            this.I = str;
            this.N.when = System.currentTimeMillis();
            this.N.audioStreamType = -1;
            this.l = 0;
            this.O = new ArrayList<>();
        }

        private void a(int i2, boolean z) {
            Notification notification;
            int i3;
            if (z) {
                notification = this.N;
                i3 = i2 | notification.flags;
            } else {
                notification = this.N;
                i3 = (i2 ^ (-1)) & notification.flags;
            }
            notification.flags = i3;
        }

        private Bitmap b(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f843a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(b.h.b.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(b.h.b.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d2 = dimensionPixelSize;
            double dMax = Math.max(1, bitmap.getWidth());
            Double.isNaN(d2);
            Double.isNaN(dMax);
            double d3 = d2 / dMax;
            double d4 = dimensionPixelSize2;
            double dMax2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d4);
            Double.isNaN(dMax2);
            double dMin = Math.min(d3, d4 / dMax2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int iCeil = (int) Math.ceil(width * dMin);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, iCeil, (int) Math.ceil(height * dMin), true);
        }

        protected static CharSequence e(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        public Notification a() {
            return new i(this).b();
        }

        public d a(int i2) {
            this.J = i2;
            return this;
        }

        public d a(int i2, int i3, int i4) {
            Notification notification = this.N;
            notification.ledARGB = i2;
            notification.ledOnMS = i3;
            notification.ledOffMS = i4;
            int i5 = (notification.ledOnMS == 0 || notification.ledOffMS == 0) ? 0 : 1;
            Notification notification2 = this.N;
            notification2.flags = i5 | (notification2.flags & (-2));
            return this;
        }

        public d a(int i2, int i3, boolean z) {
            this.r = i2;
            this.s = i3;
            this.t = z;
            return this;
        }

        public d a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f844b.add(new a(i2, charSequence, pendingIntent));
            return this;
        }

        public d a(long j2) {
            this.N.when = j2;
            return this;
        }

        public d a(PendingIntent pendingIntent) {
            this.f848f = pendingIntent;
            return this;
        }

        public d a(Bitmap bitmap) {
            this.f851i = b(bitmap);
            return this;
        }

        public d a(Uri uri) {
            Notification notification = this.N;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public d a(a aVar) {
            this.f844b.add(aVar);
            return this;
        }

        public d a(e eVar) {
            if (this.o != eVar) {
                this.o = eVar;
                e eVar2 = this.o;
                if (eVar2 != null) {
                    eVar2.a(this);
                }
            }
            return this;
        }

        public d a(CharSequence charSequence) {
            this.f847e = e(charSequence);
            return this;
        }

        public d a(String str) {
            this.I = str;
            return this;
        }

        public d a(boolean z) {
            a(16, z);
            return this;
        }

        public d a(long[] jArr) {
            this.N.vibrate = jArr;
            return this;
        }

        public int b() {
            return this.C;
        }

        public d b(int i2) {
            this.C = i2;
            return this;
        }

        public d b(PendingIntent pendingIntent) {
            this.N.deleteIntent = pendingIntent;
            return this;
        }

        public d b(CharSequence charSequence) {
            this.f846d = e(charSequence);
            return this;
        }

        public d b(boolean z) {
            this.y = z;
            this.z = true;
            return this;
        }

        public Bundle c() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        public d c(int i2) {
            Notification notification = this.N;
            notification.defaults = i2;
            if ((i2 & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public d c(CharSequence charSequence) {
            this.p = e(charSequence);
            return this;
        }

        public d c(boolean z) {
            this.x = z;
            return this;
        }

        public int d() {
            return this.l;
        }

        public d d(int i2) {
            this.f853k = i2;
            return this;
        }

        public d d(CharSequence charSequence) {
            this.N.tickerText = e(charSequence);
            return this;
        }

        public d d(boolean z) {
            a(2, z);
            return this;
        }

        public long e() {
            if (this.m) {
                return this.N.when;
            }
            return 0L;
        }

        public d e(int i2) {
            this.l = i2;
            return this;
        }

        public d e(boolean z) {
            this.m = z;
            return this;
        }

        public d f(int i2) {
            this.N.icon = i2;
            return this;
        }

        public d f(boolean z) {
            this.n = z;
            return this;
        }

        public d g(int i2) {
            this.D = i2;
            return this;
        }
    }

    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected d f854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f855b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f856c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f857d = false;

        private Bitmap a(int i2, int i3, int i4) {
            Drawable drawable = this.f854a.f843a.getResources().getDrawable(i2);
            int intrinsicWidth = i4 == 0 ? drawable.getIntrinsicWidth() : i4;
            if (i4 == 0) {
                i4 = drawable.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i4, Bitmap.Config.ARGB_8888);
            drawable.setBounds(0, 0, intrinsicWidth, i4);
            if (i3 != 0) {
                drawable.mutate().setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
            }
            drawable.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        private Bitmap a(int i2, int i3, int i4, int i5) {
            int i6 = b.h.c.notification_icon_background;
            if (i5 == 0) {
                i5 = 0;
            }
            Bitmap bitmapA = a(i6, i5, i3);
            Canvas canvas = new Canvas(bitmapA);
            Drawable drawableMutate = this.f854a.f843a.getResources().getDrawable(i2).mutate();
            drawableMutate.setFilterBitmap(true);
            int i7 = (i3 - i4) / 2;
            int i8 = i4 + i7;
            drawableMutate.setBounds(i7, i7, i8, i8);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapA;
        }

        public Bitmap a(int i2, int i3) {
            return a(i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x018c  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0195  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01b7  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01fc  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01fe  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0208  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public android.widget.RemoteViews a(boolean r13, int r14, boolean r15) {
            /*
                Method dump skipped, instruction units count: 526
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.h.e.a(boolean, int, boolean):android.widget.RemoteViews");
        }

        public void a(Bundle bundle) {
        }

        public abstract void a(g gVar);

        public void a(d dVar) {
            if (this.f854a != dVar) {
                this.f854a = dVar;
                d dVar2 = this.f854a;
                if (dVar2 != null) {
                    dVar2.a(this);
                }
            }
        }

        public RemoteViews b(g gVar) {
            return null;
        }

        public RemoteViews c(g gVar) {
            return null;
        }

        public RemoteViews d(g gVar) {
            return null;
        }
    }

    public static Bundle a(Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            return notification.extras;
        }
        if (i2 >= 16) {
            return j.a(notification);
        }
        return null;
    }
}
