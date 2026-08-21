package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzzr {
    private File file;

    @VisibleForTesting
    private String zzblz;

    @VisibleForTesting
    private String zzcub;

    @VisibleForTesting
    private BlockingQueue<zzaab> zzcue = new ArrayBlockingQueue(100);

    @VisibleForTesting
    private LinkedHashMap<String, String> zzcuf = new LinkedHashMap<>();

    @VisibleForTesting
    private Map<String, zzzv> zzcug = new HashMap();
    private final HashSet<String> zzcuh = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));
    private AtomicBoolean zzcui;

    @VisibleForTesting
    private Context zzlk;

    private final void zza(Map<String, String> map, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        Uri.Builder builderBuildUpon = Uri.parse(this.zzcub).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(builderBuildUpon.build().toString());
        if (!TextUtils.isEmpty(str)) {
            sb.append("&it=");
            sb.append(str);
        }
        String string = sb.toString();
        if (!this.zzcui.get()) {
            com.google.android.gms.ads.internal.zzq.zzkj();
            zzaul.zzb(this.zzlk, this.zzblz, string);
            return;
        }
        File file = this.file;
        if (file == null) {
            zzaxi.zzeu("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(string.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                zzaxi.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
            }
        } catch (IOException e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            zzaxi.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    zzaxi.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    zzaxi.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                }
            }
            throw th;
        }
    }

    final Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzcl(key).zzi((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final void zza(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.zzlk = context;
        this.zzblz = str;
        this.zzcub = str2;
        this.zzcui = new AtomicBoolean(false);
        this.zzcui.set(((Boolean) zzuv.zzon().zzd(zzza.zzcim)).booleanValue());
        if (this.zzcui.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.file = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzcuf.put(entry.getKey(), entry.getValue());
        }
        zzaxn.zzdwi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzzq
            private final zzzr zzcud;

            {
                this.zzcud = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.zzcud.zzpx();
            }
        });
        this.zzcug.put("action", zzzv.zzcuk);
        this.zzcug.put("ad_format", zzzv.zzcuk);
        this.zzcug.put("e", zzzv.zzcul);
    }

    public final boolean zza(zzaab zzaabVar) {
        return this.zzcue.offer(zzaabVar);
    }

    public final zzzv zzcl(String str) {
        zzzv zzzvVar = this.zzcug.get(str);
        return zzzvVar != null ? zzzvVar : zzzv.zzcuj;
    }

    public final void zzcm(String str) throws Throwable {
        if (this.zzcuh.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.zzblz);
        linkedHashMap.put("ue", str);
        zza(zza(this.zzcuf, linkedHashMap), "");
    }

    final /* synthetic */ void zzpx() throws Throwable {
        while (true) {
            try {
                zzaab zzaabVarTake = this.zzcue.take();
                String strZzqc = zzaabVarTake.zzqc();
                if (!TextUtils.isEmpty(strZzqc)) {
                    zza(zza(this.zzcuf, zzaabVarTake.zzqd()), strZzqc);
                }
            } catch (InterruptedException e2) {
                zzaxi.zzd("CsiReporter:reporter interrupted", e2);
                return;
            }
        }
    }
}
