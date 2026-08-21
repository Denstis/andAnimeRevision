package b.o;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class b implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f2845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f2846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f2847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RandomAccessFile f2848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FileChannel f2849f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final FileLock f2850g;

    class a implements FileFilter {
        a(b bVar) {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* JADX INFO: renamed from: b.o.b$b, reason: collision with other inner class name */
    private static class C0121b extends File {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f2851b;

        public C0121b(File file, String str) {
            super(file, str);
            this.f2851b = -1L;
        }
    }

    b(File file, File file2) {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f2845b = file;
        this.f2847d = file2;
        this.f2846c = b(file);
        File file3 = new File(file2, "MultiDex.lock");
        this.f2848e = new RandomAccessFile(file3, "rw");
        try {
            this.f2849f = this.f2848e.getChannel();
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f2850g = this.f2849f.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e2) {
                e = e2;
                a(this.f2849f);
                throw e;
            } catch (Error e3) {
                e = e3;
                a(this.f2849f);
                throw e;
            } catch (RuntimeException e4) {
                e = e4;
                a(this.f2849f);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e5) {
            a(this.f2848e);
            throw e5;
        }
    }

    private static long a(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static SharedPreferences a(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private List<C0121b> a(Context context, String str) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f2845b.getName() + ".classes";
        SharedPreferences sharedPreferencesA = a(context);
        int i2 = sharedPreferencesA.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i2 + (-1));
        int i3 = 2;
        while (i3 <= i2) {
            C0121b c0121b = new C0121b(this.f2847d, str2 + i3 + ".zip");
            if (!c0121b.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + c0121b.getPath() + "'");
            }
            c0121b.f2851b = b(c0121b);
            long j2 = sharedPreferencesA.getLong(str + "dex.crc." + i3, -1L);
            long j3 = sharedPreferencesA.getLong(str + "dex.time." + i3, -1L);
            long jLastModified = c0121b.lastModified();
            if (j3 == jLastModified) {
                String str3 = str2;
                SharedPreferences sharedPreferences = sharedPreferencesA;
                if (j2 == c0121b.f2851b) {
                    arrayList.add(c0121b);
                    i3++;
                    sharedPreferencesA = sharedPreferences;
                    str2 = str3;
                }
            }
            throw new IOException("Invalid extracted dex: " + c0121b + " (key \"" + str + "\"), expected modification time: " + j3 + ", modification time: " + jLastModified + ", expected crc: " + j2 + ", file crc: " + c0121b.f2851b);
        }
        return arrayList;
    }

    private static void a(Context context, String str, long j2, long j3, List<C0121b> list) {
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putLong(str + "timestamp", j2);
        editorEdit.putLong(str + "crc", j3);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i2 = 2;
        for (C0121b c0121b : list) {
            editorEdit.putLong(str + "dex.crc." + i2, c0121b.f2851b);
            editorEdit.putLong(str + "dex.time." + i2, c0121b.lastModified());
            i2++;
        }
        editorEdit.commit();
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("MultiDex", "Failed to close resource", e2);
        }
    }

    private static void a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + fileCreateTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    } else {
                        zipOutputStream.write(bArr, 0, i2);
                    }
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            a(inputStream);
            fileCreateTempFile.delete();
        }
    }

    private static boolean a(Context context, File file, long j2, String str) {
        SharedPreferences sharedPreferencesA = a(context);
        if (sharedPreferencesA.getLong(str + "timestamp", -1L) == a(file)) {
            if (sharedPreferencesA.getLong(str + "crc", -1L) == j2) {
                return false;
            }
        }
        return true;
    }

    private static long b(File file) throws IOException {
        long jA = c.a(file);
        return jA == -1 ? jA - 1 : jA;
    }

    private void j() {
        File[] fileArrListFiles = this.f2847d.listFiles(new a(this));
        if (fileArrListFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f2847d.getPath() + ").");
            return;
        }
        for (File file : fileArrListFiles) {
            Log.i("MultiDex", "Trying to delete old file " + file.getPath() + " of size " + file.length());
            if (file.delete()) {
                Log.i("MultiDex", "Deleted old file " + file.getPath());
            } else {
                Log.w("MultiDex", "Failed to delete old file " + file.getPath());
            }
        }
    }

    private List<C0121b> k() {
        boolean z;
        String str = this.f2845b.getName() + ".classes";
        j();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f2845b);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i2 = 2;
            while (entry != null) {
                C0121b c0121b = new C0121b(this.f2847d, str + i2 + ".zip");
                arrayList.add(c0121b);
                Log.i("MultiDex", "Extraction is needed for file " + c0121b);
                int i3 = 0;
                boolean z2 = false;
                while (i3 < 3 && !z2) {
                    int i4 = i3 + 1;
                    a(zipFile, entry, c0121b, str);
                    try {
                        c0121b.f2851b = b(c0121b);
                        z = true;
                    } catch (IOException e2) {
                        Log.w("MultiDex", "Failed to read crc from " + c0121b.getAbsolutePath(), e2);
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(c0121b.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(c0121b.length());
                    sb.append(" - crc: ");
                    sb.append(c0121b.f2851b);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        c0121b.delete();
                        if (c0121b.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + c0121b.getPath() + "'");
                        }
                    }
                    z2 = z;
                    i3 = i4;
                }
                if (!z2) {
                    throw new IOException("Could not create zip file " + c0121b.getAbsolutePath() + " for secondary dex (" + i2 + ")");
                }
                i2++;
                entry = zipFile.getEntry("classes" + i2 + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException e3) {
                Log.w("MultiDex", "Failed to close resource", e3);
            }
            return arrayList;
        } finally {
        }
    }

    List<? extends File> a(Context context, String str, boolean z) throws IOException {
        List<C0121b> listK;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f2845b.getPath() + ", " + z + ", " + str + ")");
        if (!this.f2850g.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z && !a(context, this.f2845b, this.f2846c, str)) {
            try {
                listK = a(context, str);
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e2);
                listK = k();
                a(context, str, a(this.f2845b), this.f2846c, listK);
            }
            Log.i("MultiDex", "load found " + listK.size() + " secondary dex files");
            return listK;
        }
        Log.i("MultiDex", z ? "Forced extraction must be performed." : "Detected that extraction must be performed.");
        listK = k();
        a(context, str, a(this.f2845b), this.f2846c, listK);
        Log.i("MultiDex", "load found " + listK.size() + " secondary dex files");
        return listK;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2850g.release();
        this.f2849f.close();
        this.f2848e.close();
    }
}
