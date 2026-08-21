package b.h.l;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.c.f;
import b.h.h.i;
import b.h.l.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b.e.e<String, Typeface> f2475a = new b.e.e<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b.h.l.c f2476b = new b.h.l.c("fonts", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f2477c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final b.e.g<String, ArrayList<c.d<g>>> f2478d = new b.e.g<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator<byte[]> f2479e = new d();

    static class a implements Callable<g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f2480b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.h.l.a f2481c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2482d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f2483e;

        a(Context context, b.h.l.a aVar, int i2, String str) {
            this.f2480b = context;
            this.f2481c = aVar;
            this.f2482d = i2;
            this.f2483e = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public g call() {
            g gVarA = b.a(this.f2480b, this.f2481c, this.f2482d);
            Typeface typeface = gVarA.f2494a;
            if (typeface != null) {
                b.f2475a.put(this.f2483e, typeface);
            }
            return gVarA;
        }
    }

    /* JADX INFO: renamed from: b.h.l.b$b, reason: collision with other inner class name */
    static class C0100b implements c.d<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f.a f2484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Handler f2485b;

        C0100b(f.a aVar, Handler handler) {
            this.f2484a = aVar;
            this.f2485b = handler;
        }

        @Override // b.h.l.c.d
        public void a(g gVar) {
            int i2;
            f.a aVar;
            if (gVar == null) {
                aVar = this.f2484a;
                i2 = 1;
            } else {
                i2 = gVar.f2495b;
                if (i2 == 0) {
                    this.f2484a.callbackSuccessAsync(gVar.f2494a, this.f2485b);
                    return;
                }
                aVar = this.f2484a;
            }
            aVar.callbackFailAsync(i2, this.f2485b);
        }
    }

    static class c implements c.d<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2486a;

        c(String str) {
            this.f2486a = str;
        }

        @Override // b.h.l.c.d
        public void a(g gVar) {
            synchronized (b.f2477c) {
                ArrayList<c.d<g>> arrayList = b.f2478d.get(this.f2486a);
                if (arrayList == null) {
                    return;
                }
                b.f2478d.remove(this.f2486a);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    arrayList.get(i2).a(gVar);
                }
            }
        }
    }

    static class d implements Comparator<byte[]> {
        d() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            if (bArr.length == bArr2.length) {
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    if (bArr[i2] != bArr2[i2]) {
                        length = bArr[i2];
                        length2 = bArr2[i2];
                    }
                }
                return 0;
            }
            length = bArr.length;
            length2 = bArr2.length;
            return length - length2;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2487a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final f[] f2488b;

        public e(int i2, f[] fVarArr) {
            this.f2487a = i2;
            this.f2488b = fVarArr;
        }

        public f[] a() {
            return this.f2488b;
        }

        public int b() {
            return this.f2487a;
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f2489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2490b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2491c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2492d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f2493e;

        public f(Uri uri, int i2, int i3, boolean z, int i4) {
            b.h.n.g.a(uri);
            this.f2489a = uri;
            this.f2490b = i2;
            this.f2491c = i3;
            this.f2492d = z;
            this.f2493e = i4;
        }

        public int a() {
            return this.f2493e;
        }

        public int b() {
            return this.f2490b;
        }

        public Uri c() {
            return this.f2489a;
        }

        public int d() {
            return this.f2491c;
        }

        public boolean e() {
            return this.f2492d;
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f2494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2495b;

        g(Typeface typeface, int i2) {
            this.f2494a = typeface;
            this.f2495b = i2;
        }
    }

    public static ProviderInfo a(PackageManager packageManager, b.h.l.a aVar, Resources resources) throws PackageManager.NameNotFoundException {
        String strD = aVar.d();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strD, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + strD);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(aVar.e())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + strD + ", but package was not " + aVar.e());
        }
        List<byte[]> listA = a(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listA, f2479e);
        List<List<byte[]>> listA2 = a(aVar, resources);
        for (int i2 = 0; i2 < listA2.size(); i2++) {
            ArrayList arrayList = new ArrayList(listA2.get(i2));
            Collections.sort(arrayList, f2479e);
            if (a(listA, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    public static Typeface a(Context context, b.h.l.a aVar, f.a aVar2, Handler handler, boolean z, int i2, int i3) {
        String str = aVar.c() + "-" + i3;
        Typeface typeface = f2475a.get(str);
        if (typeface != null) {
            if (aVar2 != null) {
                aVar2.onFontRetrieved(typeface);
            }
            return typeface;
        }
        if (z && i2 == -1) {
            g gVarA = a(context, aVar, i3);
            if (aVar2 != null) {
                int i4 = gVarA.f2495b;
                if (i4 == 0) {
                    aVar2.callbackSuccessAsync(gVarA.f2494a, handler);
                } else {
                    aVar2.callbackFailAsync(i4, handler);
                }
            }
            return gVarA.f2494a;
        }
        a aVar3 = new a(context, aVar, i3, str);
        if (z) {
            try {
                return ((g) f2476b.a(aVar3, i2)).f2494a;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        C0100b c0100b = aVar2 == null ? null : new C0100b(aVar2, handler);
        synchronized (f2477c) {
            if (f2478d.containsKey(str)) {
                if (c0100b != null) {
                    f2478d.get(str).add(c0100b);
                }
                return null;
            }
            if (c0100b != null) {
                ArrayList<c.d<g>> arrayList = new ArrayList<>();
                arrayList.add(c0100b);
                f2478d.put(str, arrayList);
            }
            f2476b.a(aVar3, new c(str));
            return null;
        }
    }

    public static e a(Context context, CancellationSignal cancellationSignal, b.h.l.a aVar) throws PackageManager.NameNotFoundException {
        ProviderInfo providerInfoA = a(context.getPackageManager(), aVar, context.getResources());
        return providerInfoA == null ? new e(1, null) : new e(0, a(context, aVar, providerInfoA.authority, cancellationSignal));
    }

    static g a(Context context, b.h.l.a aVar, int i2) {
        try {
            e eVarA = a(context, (CancellationSignal) null, aVar);
            if (eVarA.b() != 0) {
                return new g(null, eVarA.b() == 1 ? -2 : -3);
            }
            Typeface typefaceA = b.h.h.c.a(context, null, eVarA.a(), i2);
            return new g(typefaceA, typefaceA != null ? 0 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new g(null, -1);
        }
    }

    private static List<List<byte[]>> a(b.h.l.a aVar, Resources resources) {
        return aVar.a() != null ? aVar.a() : androidx.core.content.c.c.a(resources, aVar.b());
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static Map<Uri, ByteBuffer> a(Context context, f[] fVarArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (f fVar : fVarArr) {
            if (fVar.a() == 0) {
                Uri uriC = fVar.c();
                if (!map.containsKey(uriC)) {
                    map.put(uriC, i.a(context, cancellationSignal, uriC));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static b.h.l.b.f[] a(android.content.Context r19, b.h.l.a r20, java.lang.String r21, android.os.CancellationSignal r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.h.l.b.a(android.content.Context, b.h.l.a, java.lang.String, android.os.CancellationSignal):b.h.l.b$f[]");
    }
}
