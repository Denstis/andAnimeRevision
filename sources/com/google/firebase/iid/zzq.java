package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.core.content.a;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
final class zzq {
    zzq() {
    }

    private final zzs zza(Context context, String str, zzs zzsVar, boolean z) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing ID to properties file");
        }
        Properties properties = new Properties();
        properties.setProperty(TtmlNode.ATTR_ID, zzsVar.zza());
        properties.setProperty("cre", String.valueOf(zzsVar.zzb));
        File fileZze = zze(context, str);
        try {
            fileZze.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileZze, "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    channel.lock();
                    if (z && channel.size() > 0) {
                        try {
                            channel.position(0L);
                            zzs zzsVarZza = zza(channel);
                            if (channel != null) {
                                zza((Throwable) null, channel);
                            }
                            zza((Throwable) null, randomAccessFile);
                            return zzsVarZza;
                        } catch (zzt | IOException e2) {
                            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                                String strValueOf = String.valueOf(e2);
                                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 58);
                                sb.append("Tried reading ID before writing new one, but failed with: ");
                                sb.append(strValueOf);
                                Log.d("FirebaseInstanceId", sb.toString());
                            }
                        }
                    }
                    channel.truncate(0L);
                    properties.store(Channels.newOutputStream(channel), (String) null);
                    if (channel != null) {
                        zza((Throwable) null, channel);
                    }
                    zza((Throwable) null, randomAccessFile);
                    return zzsVar;
                } finally {
                }
            } finally {
            }
        } catch (IOException e3) {
            String strValueOf2 = String.valueOf(e3);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(strValueOf2);
            Log.w("FirebaseInstanceId", sb2.toString());
            return null;
        }
    }

    private static zzs zza(SharedPreferences sharedPreferences, String str) {
        long jZzb = zzb(sharedPreferences, str);
        String string = sharedPreferences.getString(zzat.zza(str, TtmlNode.ATTR_ID), null);
        if (string == null) {
            String string2 = sharedPreferences.getString(zzat.zza(str, "|P|"), null);
            if (string2 == null) {
                return null;
            }
            string = zzai.zza(zza(string2));
        }
        return new zzs(string, jZzb);
    }

    private final zzs zza(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.lock(0L, Long.MAX_VALUE, true);
                zzs zzsVarZza = zza(channel);
                if (channel != null) {
                    zza((Throwable) null, channel);
                }
                zza((Throwable) null, fileInputStream);
                return zzsVarZza;
            } finally {
            }
        } finally {
        }
    }

    private static zzs zza(FileChannel fileChannel) throws IOException, zzt {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        try {
            long j2 = Long.parseLong(properties.getProperty("cre"));
            String property = properties.getProperty(TtmlNode.ATTR_ID);
            if (property == null) {
                String property2 = properties.getProperty("pub");
                if (property2 == null) {
                    throw new zzt("Invalid properties file");
                }
                property = zzai.zza(zza(property2));
            }
            return new zzs(property, j2);
        } catch (NumberFormatException e2) {
            throw new zzt(e2);
        }
    }

    private static PublicKey zza(String str) throws zzt {
        try {
            try {
                return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new zzt(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw new zzt(e3);
        }
    }

    static void zza(Context context) {
        for (File file : zzb(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private final void zza(Context context, String str, zzs zzsVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzsVar.equals(zza(sharedPreferences, str))) {
                return;
            }
        } catch (zzt unused) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzat.zza(str, TtmlNode.ATTR_ID), zzsVar.zza());
        editorEdit.putString(zzat.zza(str, "cre"), String.valueOf(zzsVar.zzb));
        editorEdit.commit();
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzm.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, RandomAccessFile randomAccessFile) throws IOException {
        if (th == null) {
            randomAccessFile.close();
            return;
        }
        try {
            randomAccessFile.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzm.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzm.zza(th, th2);
        }
    }

    private static long zzb(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzat.zza(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private static File zzb(Context context) {
        File fileC = a.c(context);
        if (fileC != null && fileC.isDirectory()) {
            return fileC;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private final zzs zzc(Context context, String str) throws zzt {
        try {
            zzs zzsVarZzd = zzd(context, str);
            if (zzsVarZzd != null) {
                zza(context, str, zzsVarZzd);
                return zzsVarZzd;
            }
            e = null;
        } catch (zzt e2) {
            e = e2;
        }
        try {
            zzs zzsVarZza = zza(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzsVarZza != null) {
                zza(context, str, zzsVarZza, false);
                return zzsVarZza;
            }
        } catch (zzt e3) {
            e = e3;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    private final zzs zzd(Context context, String str) throws zzt {
        File fileZze = zze(context, str);
        if (!fileZze.exists()) {
            return null;
        }
        try {
            return zza(fileZze);
        } catch (zzt | IOException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 39);
                sb.append("Failed to read ID from file, retrying: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return zza(fileZze);
            } catch (IOException e3) {
                String strValueOf2 = String.valueOf(e3);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new zzt(e3);
            }
        }
    }

    private static File zze(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes(C.UTF8_NAME), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(strEncodeToString);
                sb.append(".properties");
                string = sb.toString();
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
        return new File(zzb(context), string);
    }

    final zzs zza(Context context, String str) throws zzt {
        zzs zzsVarZzc = zzc(context, str);
        return zzsVarZzc != null ? zzsVarZzc : zzb(context, str);
    }

    final zzs zzb(Context context, String str) {
        zzs zzsVar = new zzs(zzai.zza(zzb.zza().getPublic()), System.currentTimeMillis());
        zzs zzsVarZza = zza(context, str, zzsVar, true);
        if (zzsVarZza != null && !zzsVarZza.equals(zzsVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
            }
            return zzsVarZza;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Generated new key");
        }
        zza(context, str, zzsVar);
        return zzsVar;
    }
}
