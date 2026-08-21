package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class ProcessUtils {
    private static String zzhf;
    private static int zzhg;

    private ProcessUtils() {
    }

    @KeepForSdk
    public static String getMyProcessName() {
        if (zzhf == null) {
            if (zzhg == 0) {
                zzhg = Process.myPid();
            }
            zzhf = zzd(zzhg);
        }
        return zzhf;
    }

    private static String zzd(int i2) throws Throwable {
        BufferedReader bufferedReaderZzk;
        BufferedReader bufferedReader = null;
        strTrim = null;
        String strTrim = null;
        if (i2 <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i2);
            sb.append("/cmdline");
            bufferedReaderZzk = zzk(sb.toString());
        } catch (IOException unused) {
            bufferedReaderZzk = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            strTrim = bufferedReaderZzk.readLine().trim();
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            bufferedReader = bufferedReaderZzk;
            th = th2;
            IOUtils.closeQuietly(bufferedReader);
            throw th;
        }
        IOUtils.closeQuietly(bufferedReaderZzk);
        return strTrim;
    }

    private static BufferedReader zzk(String str) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }
}
