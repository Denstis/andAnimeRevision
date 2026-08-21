package b.o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<File> f2838a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f2839b = a(System.getProperty("java.vm.version"));

    /* JADX INFO: renamed from: b.o.a$a, reason: collision with other inner class name */
    private static final class C0119a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f2840b = 4;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InterfaceC0120a f2841a;

        /* JADX INFO: renamed from: b.o.a$a$a, reason: collision with other inner class name */
        private interface InterfaceC0120a {
            Object a(File file, DexFile dexFile);
        }

        /* JADX INFO: renamed from: b.o.a$a$b */
        private static class b implements InterfaceC0120a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2842a;

            b(Class<?> cls) {
                this.f2842a = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f2842a.setAccessible(true);
            }

            @Override // b.o.a.C0119a.InterfaceC0120a
            public Object a(File file, DexFile dexFile) {
                return this.f2842a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* JADX INFO: renamed from: b.o.a$a$c */
        private static class c implements InterfaceC0120a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2843a;

            c(Class<?> cls) {
                this.f2843a = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f2843a.setAccessible(true);
            }

            @Override // b.o.a.C0119a.InterfaceC0120a
            public Object a(File file, DexFile dexFile) {
                return this.f2843a.newInstance(file, file, dexFile);
            }
        }

        /* JADX INFO: renamed from: b.o.a$a$d */
        private static class d implements InterfaceC0120a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Constructor<?> f2844a;

            d(Class<?> cls) {
                this.f2844a = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f2844a.setAccessible(true);
            }

            @Override // b.o.a.C0119a.InterfaceC0120a
            public Object a(File file, DexFile dexFile) {
                return this.f2844a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private C0119a() throws ClassNotFoundException {
            InterfaceC0120a dVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    dVar = new b(cls);
                } catch (NoSuchMethodException unused) {
                    dVar = new c(cls);
                }
            } catch (NoSuchMethodException unused2) {
                dVar = new d(cls);
            }
            this.f2841a = dVar;
        }

        private static String a(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f2840b) + ".dex").getPath();
        }

        static void a(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            Object[] objArrA = new C0119a().a(list);
            try {
                a.b(obj, "dexElements", objArrA);
            } catch (NoSuchFieldException e2) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e2);
                a.b(obj, "pathElements", objArrA);
            }
        }

        private Object[] a(List<? extends File> list) {
            Object[] objArr = new Object[list.size()];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                File file = list.get(i2);
                objArr[i2] = this.f2841a.a(file, DexFile.loadDex(file.getPath(), a(file), 0));
            }
            return objArr;
        }
    }

    private static final class b {
        static void a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalAccessException, NoSuchFieldException, IOException {
            IOException[] iOExceptionArr;
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            a.b(obj, "dexElements", a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field fieldB = a.b(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) fieldB.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                fieldB.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        private static Object[] a(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) a.b(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, arrayList, file, arrayList2);
        }
    }

    private static final class c {
        static void a(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            int size = list.size();
            Field fieldB = a.b(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) fieldB.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int iPreviousIndex = listIterator.previousIndex();
                strArr[iPreviousIndex] = absolutePath;
                fileArr[iPreviousIndex] = next;
                zipFileArr[iPreviousIndex] = new ZipFile(next);
                dexFileArr[iPreviousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            fieldB.set(classLoader, sb.toString());
            a.b(classLoader, "mPaths", strArr);
            a.b(classLoader, "mFiles", fileArr);
            a.b(classLoader, "mZips", zipFileArr);
            a.b(classLoader, "mDexs", dexFileArr);
        }
    }

    private static File a(Context context, File file, String str) throws IOException {
        File file2 = new File(file, "code_cache");
        try {
            a(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            a(file2);
        }
        File file3 = new File(file2, str);
        a(file3);
        return file3;
    }

    private static void a(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File file2 : fileArrListFiles) {
                Log.i("MultiDex", "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
                if (file2.delete()) {
                    Log.i("MultiDex", "Deleted old file " + file2.getPath());
                } else {
                    Log.w("MultiDex", "Failed to delete old file " + file2.getPath());
                }
            }
            if (file.delete()) {
                Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
                return;
            }
            Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
        }
    }

    private static void a(Context context, File file, File file2, String str, String str2, boolean z) {
        synchronized (f2838a) {
            if (f2838a.contains(file)) {
                return;
            }
            f2838a.add(file);
            if (Build.VERSION.SDK_INT > 20) {
                Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
            }
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (classLoader == null) {
                    Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                    return;
                }
                try {
                    a(context);
                } catch (Throwable th) {
                    Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", th);
                }
                File fileA = a(context, file2, str);
                b.o.b bVar = new b.o.b(file, fileA);
                IOException e2 = null;
                try {
                    try {
                        a(classLoader, fileA, bVar.a(context, str2, false));
                    } catch (IOException e3) {
                        if (!z) {
                            throw e3;
                        }
                        Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e3);
                        a(classLoader, fileA, bVar.a(context, str2, true));
                    }
                    try {
                    } catch (IOException e4) {
                        e2 = e4;
                    }
                    if (e2 != null) {
                        throw e2;
                    }
                } finally {
                    try {
                        bVar.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (RuntimeException e5) {
                Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e5);
            }
        }
    }

    private static void a(File file) throws IOException {
        String str;
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            str = "Failed to create dir " + file.getPath() + ". Parent file is null.";
        } else {
            str = "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite();
        }
        Log.e("MultiDex", str);
        throw new IOException("Failed to create directory " + file.getPath());
    }

    private static void a(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException, IOException {
        if (list.isEmpty()) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            b.a(classLoader, list, file);
        } else if (i2 >= 14) {
            C0119a.a(classLoader, list);
        } else {
            c.a(classLoader, list);
        }
    }

    static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int i2 = Integer.parseInt(matcher.group(1));
                    int i3 = Integer.parseInt(matcher.group(2));
                    if (i2 > 2 || (i2 == 2 && i3 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        sb.append(z ? " has multidex support" : " does not have multidex support");
        Log.i("MultiDex", sb.toString());
        return z;
    }

    private static ApplicationInfo b(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e2) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field b(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method b(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException {
        Field fieldB = b(obj, str);
        Object[] objArr2 = (Object[]) fieldB.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldB.set(obj, objArr3);
    }

    public static void c(Context context) {
        String str;
        Log.i("MultiDex", "Installing application");
        if (f2839b) {
            str = "VM has multidex support, MultiDex support library is disabled.";
        } else {
            if (Build.VERSION.SDK_INT < 4) {
                throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
            }
            try {
                ApplicationInfo applicationInfoB = b(context);
                if (applicationInfoB == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                } else {
                    a(context, new File(applicationInfoB.sourceDir), new File(applicationInfoB.dataDir), "secondary-dexes", "", true);
                    str = "install done";
                }
            } catch (Exception e2) {
                Log.e("MultiDex", "MultiDex installation failure", e2);
                throw new RuntimeException("MultiDex installation failed (" + e2.getMessage() + ").");
            }
        }
        Log.i("MultiDex", str);
    }
}
