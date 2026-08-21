package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzbo;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class zzdx {
    private static final String TAG = "zzdx";
    protected Context zzlk;
    private ExecutorService zzxr;
    private DexClassLoader zzxs;
    private zzdh zzxt;
    private byte[] zzxu;
    private boolean zzxx;
    private zzda zzya;
    private Map<Pair<String, String>, zzfj> zzyd;
    private volatile AdvertisingIdClient zzxv = null;
    private volatile boolean zzwo = false;
    private Future zzxw = null;
    private volatile zzbo.zza zzxy = null;
    private Future zzxz = null;
    protected boolean zzyb = false;
    private boolean zzyc = false;
    private boolean zzye = false;
    private boolean zzyf = true;
    private boolean zzyg = false;

    final class zza extends BroadcastReceiver {
        private zza() {
        }

        /* synthetic */ zza(zzdx zzdxVar, zzea zzeaVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                zzdx.this.zzyf = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                zzdx.this.zzyf = false;
            }
        }
    }

    private zzdx(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.zzxx = applicationContext != null;
        this.zzlk = this.zzxx ? applicationContext : context;
        this.zzyd = new HashMap();
    }

    public static zzdx zza(Context context, String str, String str2, boolean z) throws Throwable {
        zzea zzeaVar;
        zzdx zzdxVar = new zzdx(context);
        try {
            zzdxVar.zzxr = Executors.newCachedThreadPool(new zzea());
            zzdxVar.zzwo = z;
            if (z) {
                zzdxVar.zzxw = zzdxVar.zzxr.submit(new zzdz(zzdxVar));
            }
            zzdxVar.zzxr.execute(new zzeb(zzdxVar));
            try {
                GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
                zzdxVar.zzyb = googleApiAvailabilityLight.getApkVersion(zzdxVar.zzlk) > 0;
                zzdxVar.zzyc = googleApiAvailabilityLight.isGooglePlayServicesAvailable(zzdxVar.zzlk) == 0;
            } catch (Throwable unused) {
            }
            zzdxVar.zza(0, true);
            if (zzee.isMainThread() && ((Boolean) zzuv.zzon().zzd(zzza.zzcnj)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzeaVar = null;
            zzdxVar.zzxt = new zzdh(null);
            try {
                zzdxVar.zzxu = zzdxVar.zzxt.zzaq(str);
            } catch (zzdk e2) {
                throw new zzdw(e2);
            }
        } catch (zzdw unused2) {
        }
        try {
            try {
                try {
                    File cacheDir = zzdxVar.zzlk.getCacheDir();
                    if (cacheDir == null && (cacheDir = zzdxVar.zzlk.getDir("dex", 0)) == null) {
                        throw new zzdw();
                    }
                    File file = new File(String.format("%s/%s.jar", cacheDir, "1561154238473"));
                    if (!file.exists()) {
                        byte[] bArrZza = zzdxVar.zzxt.zza(zzdxVar.zzxu, str2);
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(bArrZza, 0, bArrZza.length);
                        fileOutputStream.close();
                    }
                    zzdxVar.zzb(cacheDir, "1561154238473");
                    try {
                        zzdxVar.zzxs = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, zzdxVar.zzlk.getClassLoader());
                        zzb(file);
                        zzdxVar.zza(cacheDir, "1561154238473");
                        zzar(String.format("%s/%s.dex", cacheDir, "1561154238473"));
                        if (!zzdxVar.zzyg) {
                            IntentFilter intentFilter = new IntentFilter();
                            intentFilter.addAction("android.intent.action.USER_PRESENT");
                            intentFilter.addAction("android.intent.action.SCREEN_OFF");
                            zzdxVar.zzlk.registerReceiver(new zza(zzdxVar, zzeaVar), intentFilter);
                            zzdxVar.zzyg = true;
                        }
                        zzdxVar.zzya = new zzda(zzdxVar);
                        zzdxVar.zzye = true;
                        return zzdxVar;
                    } catch (Throwable th) {
                        zzb(file);
                        zzdxVar.zza(cacheDir, "1561154238473");
                        zzar(String.format("%s/%s.dex", cacheDir, "1561154238473"));
                        throw th;
                    }
                } catch (IOException e3) {
                    throw new zzdw(e3);
                }
            } catch (NullPointerException e4) {
                throw new zzdw(e4);
            }
        } catch (zzdk e5) {
            throw new zzdw(e5);
        } catch (FileNotFoundException e6) {
            throw new zzdw(e6);
        }
    }

    private final void zza(File file, String str) throws Throwable {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            long length = file3.length();
            if (length <= 0) {
                return;
            }
            byte[] bArr = new byte[(int) length];
            FileOutputStream fileOutputStream = null;
            try {
                fileInputStream = new FileInputStream(file3);
                try {
                    try {
                        if (fileInputStream.read(bArr) <= 0) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused) {
                            }
                            zzb(file3);
                            return;
                        }
                        System.out.print("test");
                        System.out.print("test");
                        System.out.print("test");
                        zzbo.zzd.zza zzaVarZzk = zzbo.zzd.zzbb().zzl(zzdpm.zzy(Build.VERSION.SDK.getBytes())).zzk(zzdpm.zzy(str.getBytes()));
                        byte[] bytes = this.zzxt.zzb(this.zzxu, bArr).getBytes();
                        zzaVarZzk.zzi(zzdpm.zzy(bytes)).zzj(zzdpm.zzy(zzci.zzb(bytes)));
                        file2.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            byte[] byteArray = ((zzbo.zzd) ((zzdqw) zzaVarZzk.zzazr())).toByteArray();
                            fileOutputStream2.write(byteArray, 0, byteArray.length);
                            fileOutputStream2.close();
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused3) {
                            }
                            zzb(file3);
                            return;
                        } catch (zzdk | IOException | NoSuchAlgorithmException unused4) {
                            fileOutputStream = fileOutputStream2;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            zzb(file3);
                            throw th;
                        }
                    } catch (zzdk | IOException | NoSuchAlgorithmException unused7) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (zzdk | IOException | NoSuchAlgorithmException unused8) {
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException unused9) {
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused10) {
                }
            }
            zzb(file3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(int i2, zzbo.zza zzaVar) {
        if (i2 < 4) {
            return zzaVar == null || !zzaVar.zzah() || zzaVar.zzad().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzaVar.zzaj() || !zzaVar.zzak().zzbd() || zzaVar.zzak().zzbe() == -2;
        }
        return false;
    }

    private static void zzar(String str) {
        zzb(new File(str));
    }

    private static void zzb(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        }
    }

    private final boolean zzb(File file, String str) throws Throwable {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                zzb(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        Log.d(TAG, "Cannot read the cache data.");
                        zzb(file2);
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        return false;
                    }
                    zzbo.zzd zzdVarZzc = zzbo.zzd.zzc(bArr, zzdqj.zzazb());
                    if (str.equals(new String(zzdVarZzc.zzaz().toByteArray())) && Arrays.equals(zzdVarZzc.zzay().toByteArray(), zzci.zzb(zzdVarZzc.zzax().toByteArray())) && Arrays.equals(zzdVarZzc.zzba().toByteArray(), Build.VERSION.SDK.getBytes())) {
                        byte[] bArrZza = this.zzxt.zza(this.zzxu, new String(zzdVarZzc.zzax().toByteArray()));
                        file3.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(bArrZza, 0, bArrZza.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused3) {
                            }
                            return true;
                        } catch (zzdk | IOException | NoSuchAlgorithmException unused4) {
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (fileOutputStream == null) {
                                throw th;
                            }
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (IOException unused8) {
                                throw th;
                            }
                        }
                    }
                    zzb(file2);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused9) {
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (zzdk | IOException | NoSuchAlgorithmException unused10) {
            }
        } catch (zzdk | IOException | NoSuchAlgorithmException unused11) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzco() {
        try {
            if (this.zzxv == null && this.zzxx) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzlk);
                advertisingIdClient.start();
                this.zzxv = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException unused) {
            this.zzxv = null;
        }
    }

    private final zzbo.zza zzcp() {
        try {
            return zzczd.zzj(this.zzlk, this.zzlk.getPackageName(), Integer.toString(this.zzlk.getPackageManager().getPackageInfo(this.zzlk.getPackageName(), 0).versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final Context getContext() {
        return this.zzlk;
    }

    public final boolean isInitialized() {
        return this.zzye;
    }

    final void zza(int i2, boolean z) {
        if (this.zzyc) {
            Future<?> futureSubmit = this.zzxr.submit(new zzec(this, i2, z));
            if (i2 == 0) {
                this.zzxz = futureSubmit;
            }
        }
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.zzyd.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzyd.put(new Pair<>(str, str2), new zzfj(this, str, str2, clsArr));
        return true;
    }

    final zzbo.zza zzb(int i2, boolean z) {
        if (i2 > 0 && z) {
            try {
                Thread.sleep(i2 * 1000);
            } catch (InterruptedException unused) {
            }
        }
        return zzcp();
    }

    public final int zzbz() {
        if (this.zzya != null) {
            return zzda.zzbz();
        }
        return Integer.MIN_VALUE;
    }

    public final Method zzc(String str, String str2) {
        zzfj zzfjVar = this.zzyd.get(new Pair(str, str2));
        if (zzfjVar == null) {
            return null;
        }
        return zzfjVar.zzcz();
    }

    public final ExecutorService zzce() {
        return this.zzxr;
    }

    public final DexClassLoader zzcf() {
        return this.zzxs;
    }

    public final zzdh zzcg() {
        return this.zzxt;
    }

    public final byte[] zzch() {
        return this.zzxu;
    }

    public final boolean zzci() {
        return this.zzyb;
    }

    public final zzda zzcj() {
        return this.zzya;
    }

    public final boolean zzck() {
        return this.zzyc;
    }

    public final boolean zzcl() {
        return this.zzyf;
    }

    public final zzbo.zza zzcm() {
        return this.zzxy;
    }

    public final Future zzcn() {
        return this.zzxz;
    }

    public final AdvertisingIdClient zzcq() {
        if (!this.zzwo) {
            return null;
        }
        if (this.zzxv != null) {
            return this.zzxv;
        }
        Future future = this.zzxw;
        if (future != null) {
            try {
                future.get(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS, TimeUnit.MILLISECONDS);
                this.zzxw = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.zzxw.cancel(true);
            }
        }
        return this.zzxv;
    }
}
