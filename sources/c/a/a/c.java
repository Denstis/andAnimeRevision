package c.a.a;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.m.e;
import com.bumptech.glide.load.m.k;
import com.bumptech.glide.load.o.a;
import com.bumptech.glide.load.o.b;
import com.bumptech.glide.load.o.d;
import com.bumptech.glide.load.o.e;
import com.bumptech.glide.load.o.f;
import com.bumptech.glide.load.o.k;
import com.bumptech.glide.load.o.s;
import com.bumptech.glide.load.o.t;
import com.bumptech.glide.load.o.u;
import com.bumptech.glide.load.o.v;
import com.bumptech.glide.load.o.w;
import com.bumptech.glide.load.o.x;
import com.bumptech.glide.load.o.y.a;
import com.bumptech.glide.load.o.y.b;
import com.bumptech.glide.load.o.y.c;
import com.bumptech.glide.load.o.y.d;
import com.bumptech.glide.load.o.y.e;
import com.bumptech.glide.load.p.c.o;
import com.bumptech.glide.load.p.c.v;
import com.bumptech.glide.load.p.c.x;
import com.bumptech.glide.load.p.c.y;
import com.bumptech.glide.load.p.d.a;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile c f3069j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile boolean f3070k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.n.b0.h f3072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f3073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f3074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c.a.a.o.l f3076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c.a.a.o.d f3077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<k> f3078i = new ArrayList();

    c(Context context, com.bumptech.glide.load.n.k kVar, com.bumptech.glide.load.n.b0.h hVar, com.bumptech.glide.load.n.a0.e eVar, com.bumptech.glide.load.n.a0.b bVar, c.a.a.o.l lVar, c.a.a.o.d dVar, int i2, c.a.a.r.f fVar, Map<Class<?>, l<?, ?>> map, List<c.a.a.r.e<Object>> list, boolean z) {
        f fVar2 = f.NORMAL;
        this.f3071b = eVar;
        this.f3075f = bVar;
        this.f3072c = hVar;
        this.f3076g = lVar;
        this.f3077h = dVar;
        new com.bumptech.glide.load.n.d0.a(hVar, eVar, (com.bumptech.glide.load.b) fVar.l().a(com.bumptech.glide.load.p.c.l.f3819f));
        Resources resources = context.getResources();
        this.f3074e = new i();
        this.f3074e.a((ImageHeaderParser) new com.bumptech.glide.load.p.c.j());
        if (Build.VERSION.SDK_INT >= 27) {
            this.f3074e.a((ImageHeaderParser) new o());
        }
        List<ImageHeaderParser> listA = this.f3074e.a();
        com.bumptech.glide.load.p.c.l lVar2 = new com.bumptech.glide.load.p.c.l(listA, resources.getDisplayMetrics(), eVar, bVar);
        com.bumptech.glide.load.p.g.a aVar = new com.bumptech.glide.load.p.g.a(context, listA, eVar, bVar);
        com.bumptech.glide.load.j<ParcelFileDescriptor, Bitmap> jVarB = y.b(eVar);
        com.bumptech.glide.load.p.c.f fVar3 = new com.bumptech.glide.load.p.c.f(lVar2);
        v vVar = new v(lVar2, bVar);
        com.bumptech.glide.load.p.e.d dVar2 = new com.bumptech.glide.load.p.e.d(context);
        s.c cVar = new s.c(resources);
        s.d dVar3 = new s.d(resources);
        s.b bVar2 = new s.b(resources);
        s.a aVar2 = new s.a(resources);
        com.bumptech.glide.load.p.c.c cVar2 = new com.bumptech.glide.load.p.c.c(bVar);
        com.bumptech.glide.load.p.h.a aVar3 = new com.bumptech.glide.load.p.h.a();
        com.bumptech.glide.load.p.h.d dVar4 = new com.bumptech.glide.load.p.h.d();
        ContentResolver contentResolver = context.getContentResolver();
        i iVar = this.f3074e;
        iVar.a(ByteBuffer.class, new com.bumptech.glide.load.o.c());
        iVar.a(InputStream.class, new t(bVar));
        iVar.a("Bitmap", ByteBuffer.class, Bitmap.class, fVar3);
        iVar.a("Bitmap", InputStream.class, Bitmap.class, vVar);
        iVar.a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, jVarB);
        iVar.a("Bitmap", AssetFileDescriptor.class, Bitmap.class, y.a(eVar));
        iVar.a(Bitmap.class, Bitmap.class, v.a.a());
        iVar.a("Bitmap", Bitmap.class, Bitmap.class, new x());
        iVar.a(Bitmap.class, (com.bumptech.glide.load.k) cVar2);
        iVar.a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.p.c.a(resources, fVar3));
        iVar.a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.p.c.a(resources, vVar));
        iVar.a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.p.c.a(resources, jVarB));
        iVar.a(BitmapDrawable.class, (com.bumptech.glide.load.k) new com.bumptech.glide.load.p.c.b(eVar, cVar2));
        iVar.a("Gif", InputStream.class, com.bumptech.glide.load.p.g.c.class, new com.bumptech.glide.load.p.g.j(listA, aVar, bVar));
        iVar.a("Gif", ByteBuffer.class, com.bumptech.glide.load.p.g.c.class, aVar);
        iVar.a(com.bumptech.glide.load.p.g.c.class, (com.bumptech.glide.load.k) new com.bumptech.glide.load.p.g.d());
        iVar.a(c.a.a.n.a.class, c.a.a.n.a.class, v.a.a());
        iVar.a("Bitmap", c.a.a.n.a.class, Bitmap.class, new com.bumptech.glide.load.p.g.h(eVar));
        iVar.a(Uri.class, Drawable.class, dVar2);
        iVar.a(Uri.class, Bitmap.class, new com.bumptech.glide.load.p.c.t(dVar2, eVar));
        iVar.a((e.a<?>) new a.C0149a());
        iVar.a(File.class, ByteBuffer.class, new d.b());
        iVar.a(File.class, InputStream.class, new f.e());
        iVar.a(File.class, File.class, new com.bumptech.glide.load.p.f.a());
        iVar.a(File.class, ParcelFileDescriptor.class, new f.b());
        iVar.a(File.class, File.class, v.a.a());
        iVar.a((e.a<?>) new k.a(bVar));
        iVar.a(Integer.TYPE, InputStream.class, cVar);
        iVar.a(Integer.TYPE, ParcelFileDescriptor.class, bVar2);
        iVar.a(Integer.class, InputStream.class, cVar);
        iVar.a(Integer.class, ParcelFileDescriptor.class, bVar2);
        iVar.a(Integer.class, Uri.class, dVar3);
        iVar.a(Integer.TYPE, AssetFileDescriptor.class, aVar2);
        iVar.a(Integer.class, AssetFileDescriptor.class, aVar2);
        iVar.a(Integer.TYPE, Uri.class, dVar3);
        iVar.a(String.class, InputStream.class, new e.c());
        iVar.a(Uri.class, InputStream.class, new e.c());
        iVar.a(String.class, InputStream.class, new u.c());
        iVar.a(String.class, ParcelFileDescriptor.class, new u.b());
        iVar.a(String.class, AssetFileDescriptor.class, new u.a());
        iVar.a(Uri.class, InputStream.class, new b.a());
        iVar.a(Uri.class, InputStream.class, new a.c(context.getAssets()));
        iVar.a(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets()));
        iVar.a(Uri.class, InputStream.class, new c.a(context));
        iVar.a(Uri.class, InputStream.class, new d.a(context));
        iVar.a(Uri.class, InputStream.class, new w.d(contentResolver));
        iVar.a(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver));
        iVar.a(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver));
        iVar.a(Uri.class, InputStream.class, new x.a());
        iVar.a(URL.class, InputStream.class, new e.a());
        iVar.a(Uri.class, File.class, new k.a(context));
        iVar.a(com.bumptech.glide.load.o.g.class, InputStream.class, new a.C0148a());
        iVar.a(byte[].class, ByteBuffer.class, new b.a());
        iVar.a(byte[].class, InputStream.class, new b.d());
        iVar.a(Uri.class, Uri.class, v.a.a());
        iVar.a(Drawable.class, Drawable.class, v.a.a());
        iVar.a(Drawable.class, Drawable.class, new com.bumptech.glide.load.p.e.e());
        iVar.a(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.p.h.b(resources));
        iVar.a(Bitmap.class, byte[].class, aVar3);
        iVar.a(Drawable.class, byte[].class, new com.bumptech.glide.load.p.h.c(eVar, aVar3, dVar4));
        iVar.a(com.bumptech.glide.load.p.g.c.class, byte[].class, dVar4);
        this.f3073d = new e(context, bVar, this.f3074e, new c.a.a.r.j.e(), fVar, map, list, kVar, z, i2);
    }

    public static k a(View view) {
        return c(view.getContext()).a(view);
    }

    private static void a(Context context) {
        if (f3070k) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f3070k = true;
        d(context);
        f3070k = false;
    }

    private static void a(Context context, d dVar) {
        Context applicationContext = context.getApplicationContext();
        a aVarI = i();
        List<c.a.a.p.c> listEmptyList = Collections.emptyList();
        if (aVarI == null || aVarI.a()) {
            listEmptyList = new c.a.a.p.e(applicationContext).a();
        }
        if (aVarI != null && !aVarI.b().isEmpty()) {
            Set<Class<?>> setB = aVarI.b();
            Iterator<c.a.a.p.c> it = listEmptyList.iterator();
            while (it.hasNext()) {
                c.a.a.p.c next = it.next();
                if (setB.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<c.a.a.p.c> it2 = listEmptyList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        dVar.a(aVarI != null ? aVarI.c() : null);
        Iterator<c.a.a.p.c> it3 = listEmptyList.iterator();
        while (it3.hasNext()) {
            it3.next().a(applicationContext, dVar);
        }
        if (aVarI != null) {
            aVarI.a(applicationContext, dVar);
        }
        c cVarA = dVar.a(applicationContext);
        Iterator<c.a.a.p.c> it4 = listEmptyList.iterator();
        while (it4.hasNext()) {
            it4.next().a(applicationContext, cVarA, cVarA.f3074e);
        }
        if (aVarI != null) {
            aVarI.a(applicationContext, cVarA, cVarA.f3074e);
        }
        applicationContext.registerComponentCallbacks(cVarA);
        f3069j = cVarA;
    }

    private static void a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public static c b(Context context) {
        if (f3069j == null) {
            synchronized (c.class) {
                if (f3069j == null) {
                    a(context);
                }
            }
        }
        return f3069j;
    }

    private static c.a.a.o.l c(Context context) {
        c.a.a.t.j.a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return b(context).h();
    }

    private static void d(Context context) {
        a(context, new d());
    }

    public static k e(Context context) {
        return c(context).a(context);
    }

    private static a i() {
        try {
            return (a) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e2) {
            a(e2);
            throw null;
        } catch (InstantiationException e3) {
            a(e3);
            throw null;
        } catch (NoSuchMethodException e4) {
            a(e4);
            throw null;
        } catch (InvocationTargetException e5) {
            a(e5);
            throw null;
        }
    }

    public void a() {
        c.a.a.t.k.a();
        this.f3072c.a();
        this.f3071b.a();
        this.f3075f.a();
    }

    public void a(int i2) {
        c.a.a.t.k.a();
        this.f3072c.a(i2);
        this.f3071b.a(i2);
        this.f3075f.a(i2);
    }

    void a(k kVar) {
        synchronized (this.f3078i) {
            if (this.f3078i.contains(kVar)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f3078i.add(kVar);
        }
    }

    boolean a(c.a.a.r.j.h<?> hVar) {
        synchronized (this.f3078i) {
            Iterator<k> it = this.f3078i.iterator();
            while (it.hasNext()) {
                if (it.next().b(hVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    public com.bumptech.glide.load.n.a0.b b() {
        return this.f3075f;
    }

    void b(k kVar) {
        synchronized (this.f3078i) {
            if (!this.f3078i.contains(kVar)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f3078i.remove(kVar);
        }
    }

    public com.bumptech.glide.load.n.a0.e c() {
        return this.f3071b;
    }

    c.a.a.o.d d() {
        return this.f3077h;
    }

    public Context e() {
        return this.f3073d.getBaseContext();
    }

    e f() {
        return this.f3073d;
    }

    public i g() {
        return this.f3074e;
    }

    public c.a.a.o.l h() {
        return this.f3076g;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        a();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        a(i2);
    }
}
