package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzal implements zza {
    private final Map<String, zzao> zzbx;
    private long zzby;
    private final File zzbz;
    private final int zzca;

    public zzal(File file) {
        this(file, 5242880);
    }

    public zzal(File file, int i2) {
        this.zzbx = new LinkedHashMap(16, 0.75f, true);
        this.zzby = 0L;
        this.zzbz = file;
        this.zzca = i2;
    }

    private final synchronized void remove(String str) {
        boolean zDelete = zze(str).delete();
        removeEntry(str);
        if (!zDelete) {
            zzag.d("Could not delete cache entry for key=%s, filename=%s", str, zzd(str));
        }
    }

    private final void removeEntry(String str) {
        zzao zzaoVarRemove = this.zzbx.remove(str);
        if (zzaoVarRemove != null) {
            this.zzby -= zzaoVarRemove.zzcd;
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int i2 = inputStream.read();
        if (i2 != -1) {
            return i2;
        }
        throw new EOFException();
    }

    private static InputStream zza(File file) {
        return new FileInputStream(file);
    }

    static String zza(zzan zzanVar) {
        return new String(zza(zzanVar, zzc(zzanVar)), C.UTF8_NAME);
    }

    static void zza(OutputStream outputStream, int i2) {
        outputStream.write(i2 & 255);
        outputStream.write((i2 >> 8) & 255);
        outputStream.write((i2 >> 16) & 255);
        outputStream.write(i2 >>> 24);
    }

    static void zza(OutputStream outputStream, long j2) {
        outputStream.write((byte) j2);
        outputStream.write((byte) (j2 >>> 8));
        outputStream.write((byte) (j2 >>> 16));
        outputStream.write((byte) (j2 >>> 24));
        outputStream.write((byte) (j2 >>> 32));
        outputStream.write((byte) (j2 >>> 40));
        outputStream.write((byte) (j2 >>> 48));
        outputStream.write((byte) (j2 >>> 56));
    }

    static void zza(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        zza(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private final void zza(String str, zzao zzaoVar) {
        if (this.zzbx.containsKey(str)) {
            this.zzby += zzaoVar.zzcd - this.zzbx.get(str).zzcd;
        } else {
            this.zzby += zzaoVar.zzcd;
        }
        this.zzbx.put(str, zzaoVar);
    }

    private static byte[] zza(zzan zzanVar, long j2) throws IOException {
        long jZzn = zzanVar.zzn();
        if (j2 >= 0 && j2 <= jZzn) {
            int i2 = (int) j2;
            if (i2 == j2) {
                byte[] bArr = new byte[i2];
                new DataInputStream(zzanVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j2);
        sb.append(", maxLength=");
        sb.append(jZzn);
        throw new IOException(sb.toString());
    }

    static int zzb(InputStream inputStream) {
        return (zza(inputStream) << 24) | zza(inputStream) | 0 | (zza(inputStream) << 8) | (zza(inputStream) << 16);
    }

    static List<zzk> zzb(zzan zzanVar) throws IOException {
        int iZzb = zzb((InputStream) zzanVar);
        if (iZzb < 0) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("readHeaderList size=");
            sb.append(iZzb);
            throw new IOException(sb.toString());
        }
        List<zzk> listEmptyList = iZzb == 0 ? Collections.emptyList() : new ArrayList<>();
        for (int i2 = 0; i2 < iZzb; i2++) {
            listEmptyList.add(new zzk(zza(zzanVar).intern(), zza(zzanVar).intern()));
        }
        return listEmptyList;
    }

    static long zzc(InputStream inputStream) {
        return (((long) zza(inputStream)) & 255) | 0 | ((((long) zza(inputStream)) & 255) << 8) | ((((long) zza(inputStream)) & 255) << 16) | ((((long) zza(inputStream)) & 255) << 24) | ((((long) zza(inputStream)) & 255) << 32) | ((((long) zza(inputStream)) & 255) << 40) | ((((long) zza(inputStream)) & 255) << 48) | ((255 & ((long) zza(inputStream))) << 56);
    }

    private static String zzd(String str) {
        int length = str.length() / 2;
        String strValueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String strValueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private final File zze(String str) {
        return new File(this.zzbz, zzd(str));
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final synchronized void initialize() {
        long length;
        zzan zzanVar;
        if (!this.zzbz.exists()) {
            if (!this.zzbz.mkdirs()) {
                zzag.e("Unable to create cache dir %s", this.zzbz.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = this.zzbz.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                length = file.length();
                zzanVar = new zzan(new BufferedInputStream(zza(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                zzao zzaoVarZzc = zzao.zzc(zzanVar);
                zzaoVarZzc.zzcd = length;
                zza(zzaoVarZzc.zzce, zzaoVarZzc);
                zzanVar.close();
            } catch (Throwable th) {
                zzanVar.close();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final synchronized zzd zza(String str) {
        zzao zzaoVar = this.zzbx.get(str);
        if (zzaoVar == null) {
            return null;
        }
        File fileZze = zze(str);
        try {
            zzan zzanVar = new zzan(new BufferedInputStream(zza(fileZze)), fileZze.length());
            try {
                zzao zzaoVarZzc = zzao.zzc(zzanVar);
                if (!TextUtils.equals(str, zzaoVarZzc.zzce)) {
                    zzag.d("%s: key=%s, found=%s", fileZze.getAbsolutePath(), str, zzaoVarZzc.zzce);
                    removeEntry(str);
                    return null;
                }
                byte[] bArrZza = zza(zzanVar, zzanVar.zzn());
                zzd zzdVar = new zzd();
                zzdVar.data = bArrZza;
                zzdVar.zzg = zzaoVar.zzg;
                zzdVar.zzh = zzaoVar.zzh;
                zzdVar.zzi = zzaoVar.zzi;
                zzdVar.zzj = zzaoVar.zzj;
                zzdVar.zzk = zzaoVar.zzk;
                List<zzk> list = zzaoVar.zzm;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzk zzkVar : list) {
                    treeMap.put(zzkVar.getName(), zzkVar.getValue());
                }
                zzdVar.zzl = treeMap;
                zzdVar.zzm = Collections.unmodifiableList(zzaoVar.zzm);
                return zzdVar;
            } finally {
                zzanVar.close();
            }
        } catch (IOException e2) {
            zzag.d("%s: %s", fileZze.getAbsolutePath(), e2.toString());
            remove(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zza
    public final synchronized void zza(String str, zzd zzdVar) {
        long j2;
        if (this.zzby + ((long) zzdVar.data.length) <= this.zzca || zzdVar.data.length <= this.zzca * 0.9f) {
            File fileZze = zze(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileZze));
                zzao zzaoVar = new zzao(str, zzdVar);
                if (!zzaoVar.zza(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    zzag.d("Failed to write header for %s", fileZze.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(zzdVar.data);
                bufferedOutputStream.close();
                zzaoVar.zzcd = fileZze.length();
                zza(str, zzaoVar);
                if (this.zzby >= this.zzca) {
                    if (zzag.DEBUG) {
                        zzag.v("Pruning old cache entries.", new Object[0]);
                    }
                    long j3 = this.zzby;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Iterator<Map.Entry<String, zzao>> it = this.zzbx.entrySet().iterator();
                    int i2 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            j2 = j3;
                            break;
                        }
                        zzao value = it.next().getValue();
                        if (zze(value.zzce).delete()) {
                            j2 = j3;
                            this.zzby -= value.zzcd;
                        } else {
                            j2 = j3;
                            zzag.d("Could not delete cache entry for key=%s, filename=%s", value.zzce, zzd(value.zzce));
                        }
                        it.remove();
                        i2++;
                        if (this.zzby < this.zzca * 0.9f) {
                            break;
                        } else {
                            j3 = j2;
                        }
                    }
                    if (zzag.DEBUG) {
                        zzag.v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzby - j2), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                    }
                }
            } catch (IOException unused) {
                if (fileZze.delete()) {
                    return;
                }
                zzag.d("Could not clean up file %s", fileZze.getAbsolutePath());
            }
        }
    }
}
