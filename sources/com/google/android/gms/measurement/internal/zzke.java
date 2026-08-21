package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import b.e.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzle;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class zzke implements zzgt {
    private static volatile zzke zza;
    private zzfu zzb;
    private zzfa zzc;
    private zzac zzd;
    private zzfd zze;
    private zzka zzf;
    private zzn zzg;
    private final zzki zzh;
    private zzid zzi;
    private final zzga zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    @VisibleForTesting
    private long zzn;
    private List<Runnable> zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private FileLock zzu;
    private FileChannel zzv;
    private List<Long> zzw;
    private List<Long> zzx;
    private long zzy;

    class zza implements zzae {
        zzbr.zzg zza;
        List<Long> zzb;
        List<zzbr.zzc> zzc;
        private long zzd;

        private zza() {
        }

        /* synthetic */ zza(zzke zzkeVar, zzkd zzkdVar) {
            this();
        }

        private static long zza(zzbr.zzc zzcVar) {
            return ((zzcVar.zze() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        public final void zza(zzbr.zzg zzgVar) {
            Preconditions.checkNotNull(zzgVar);
            this.zza = zzgVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzae
        public final boolean zza(long j2, zzbr.zzc zzcVar) {
            Preconditions.checkNotNull(zzcVar);
            if (this.zzc == null) {
                this.zzc = new ArrayList();
            }
            if (this.zzb == null) {
                this.zzb = new ArrayList();
            }
            if (this.zzc.size() > 0 && zza(this.zzc.get(0)) != zza(zzcVar)) {
                return false;
            }
            long jZzbn = this.zzd + ((long) zzcVar.zzbn());
            if (jZzbn >= Math.max(0, zzap.zzi.zza(null).intValue())) {
                return false;
            }
            this.zzd = jZzbn;
            this.zzc.add(zzcVar);
            this.zzb.add(Long.valueOf(j2));
            return this.zzc.size() < Math.max(1, zzap.zzj.zza(null).intValue());
        }
    }

    private zzke(zzkj zzkjVar) {
        this(zzkjVar, null);
    }

    private zzke(zzkj zzkjVar, zzga zzgaVar) {
        this.zzk = false;
        Preconditions.checkNotNull(zzkjVar);
        this.zzj = zzga.zza(zzkjVar.zza, (com.google.android.gms.internal.measurement.zzv) null);
        this.zzy = -1L;
        zzki zzkiVar = new zzki(this);
        zzkiVar.zzal();
        this.zzh = zzkiVar;
        zzfa zzfaVar = new zzfa(this);
        zzfaVar.zzal();
        this.zzc = zzfaVar;
        zzfu zzfuVar = new zzfu(this);
        zzfuVar.zzal();
        this.zzb = zzfuVar;
        this.zzj.zzq().zza(new zzkd(this, zzkjVar));
    }

    @VisibleForTesting
    private final int zza(FileChannel fileChannel) {
        zzw();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i2 = fileChannel.read(byteBufferAllocate);
            if (i2 == 4) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.getInt();
            }
            if (i2 != -1) {
                this.zzj.zzr().zzi().zza("Unexpected data length. Bytes read", Integer.valueOf(i2));
            }
            return 0;
        } catch (IOException e2) {
            this.zzj.zzr().zzf().zza("Failed to read from channel", e2);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x018e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.measurement.internal.zzg zza(com.google.android.gms.measurement.internal.zzm r9, com.google.android.gms.measurement.internal.zzg r10, java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(com.google.android.gms.measurement.internal.zzm, com.google.android.gms.measurement.internal.zzg, java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    public static zzke zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zza == null) {
            synchronized (zzke.class) {
                if (zza == null) {
                    zza = new zzke(new zzkj(context));
                }
            }
        }
        return zza;
    }

    private final zzm zza(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j2, String str3, String str4) {
        String installerPackageName;
        String str5;
        int i2;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.zzj.zzr().zzf().zza("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
            this.zzj.zzr().zzf().zza("Error retrieving installer package name. appId", zzew.zza(str));
            installerPackageName = "Unknown";
        }
        if (installerPackageName == null) {
            installerPackageName = "manual_install";
        } else if ("com.android.vending".equals(installerPackageName)) {
            installerPackageName = "";
        }
        String str6 = installerPackageName;
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                if (!TextUtils.isEmpty(applicationLabel)) {
                    applicationLabel.toString();
                }
                str5 = packageInfo.versionName;
                i2 = packageInfo.versionCode;
            } else {
                str5 = "Unknown";
                i2 = Integer.MIN_VALUE;
            }
            return new zzm(str, str2, str5, i2, str6, this.zzj.zzb().zze(), this.zzj.zzi().zza(context, str), (String) null, z, false, "", 0L, j2, 0, z2, z3, false, str3, (Boolean) null, 0L, (List<String>) null, (zzle.zzb() && this.zzj.zzb().zze(str, zzap.zzcc)) ? str4 : null);
        } catch (PackageManager.NameNotFoundException unused2) {
            this.zzj.zzr().zzf().zza("Error retrieving newly installed package info. appId, appName", zzew.zza(str), "Unknown");
            return null;
        }
    }

    private final zzm zza(String str) {
        zzg zzgVarZzb = zze().zzb(str);
        if (zzgVarZzb == null || TextUtils.isEmpty(zzgVarZzb.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzb = zzb(zzgVarZzb);
        if (boolZzb == null || boolZzb.booleanValue()) {
            return new zzm(str, zzgVarZzb.zze(), zzgVarZzb.zzl(), zzgVarZzb.zzm(), zzgVarZzb.zzn(), zzgVarZzb.zzo(), zzgVarZzb.zzp(), (String) null, zzgVarZzb.zzr(), false, zzgVarZzb.zzi(), zzgVarZzb.zzae(), 0L, 0, zzgVarZzb.zzaf(), zzgVarZzb.zzag(), false, zzgVarZzb.zzf(), zzgVarZzb.zzah(), zzgVarZzb.zzq(), zzgVarZzb.zzai(), (zzle.zzb() && this.zzj.zzb().zze(str, zzap.zzcc)) ? zzgVarZzb.zzg() : null);
        }
        this.zzj.zzr().zzf().zza("App version does not match; dropping. appId", zzew.zza(str));
        return null;
    }

    @VisibleForTesting
    private static void zza(zzbr.zzc.zza zzaVar, int i2, String str) {
        List<zzbr.zze> listZza = zzaVar.zza();
        for (int i3 = 0; i3 < listZza.size(); i3++) {
            if ("_err".equals(listZza.get(i3).zza())) {
                return;
            }
        }
        zzaVar.zza((zzbr.zze) zzbr.zze.zzh().zza("_err").zza(Long.valueOf(i2).longValue()).zzu()).zza((zzbr.zze) zzbr.zze.zzh().zza("_ev").zzb(str).zzu());
    }

    @VisibleForTesting
    private static void zza(zzbr.zzc.zza zzaVar, String str) {
        List<zzbr.zze> listZza = zzaVar.zza();
        for (int i2 = 0; i2 < listZza.size(); i2++) {
            if (str.equals(listZza.get(i2).zza())) {
                zzaVar.zzb(i2);
                return;
            }
        }
    }

    private static void zza(zzbr.zzg.zza zzaVar) {
        zzaVar.zzb(Long.MAX_VALUE).zzc(Long.MIN_VALUE);
        for (int i2 = 0; i2 < zzaVar.zzb(); i2++) {
            zzbr.zzc zzcVarZzb = zzaVar.zzb(i2);
            if (zzcVarZzb.zze() < zzaVar.zzf()) {
                zzaVar.zzb(zzcVarZzb.zze());
            }
            if (zzcVarZzb.zze() > zzaVar.zzg()) {
                zzaVar.zzc(zzcVarZzb.zze());
            }
        }
    }

    @VisibleForTesting
    private final void zza(zzbr.zzg.zza zzaVar, long j2, boolean z) {
        String str = z ? "_se" : "_lte";
        zzkn zzknVarZzc = zze().zzc(zzaVar.zzj(), str);
        zzkn zzknVar = (zzknVarZzc == null || zzknVarZzc.zze == null) ? new zzkn(zzaVar.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(j2)) : new zzkn(zzaVar.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(((Long) zzknVarZzc.zze).longValue() + j2));
        zzbr.zzk zzkVar = (zzbr.zzk) zzbr.zzk.zzj().zza(str).zza(this.zzj.zzm().currentTimeMillis()).zzb(((Long) zzknVar.zze).longValue()).zzu();
        boolean z2 = false;
        int iZza = zzki.zza(zzaVar, str);
        if (iZza >= 0) {
            zzaVar.zza(iZza, zzkVar);
            z2 = true;
        }
        if (!z2) {
            zzaVar.zza(zzkVar);
        }
        if (j2 > 0) {
            zze().zza(zzknVar);
            this.zzj.zzr().zzw().zza("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", zzknVar.zze);
        }
    }

    private final void zza(zzg zzgVar) {
        a aVar;
        zzw();
        if (zzle.zzb() && this.zzj.zzb().zze(zzgVar.zzc(), zzap.zzcc)) {
            if (TextUtils.isEmpty(zzgVar.zze()) && TextUtils.isEmpty(zzgVar.zzg()) && TextUtils.isEmpty(zzgVar.zzf())) {
                zza(zzgVar.zzc(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzgVar.zze()) && TextUtils.isEmpty(zzgVar.zzf())) {
            zza(zzgVar.zzc(), 204, null, null, null);
            return;
        }
        String strZza = this.zzj.zzb().zza(zzgVar);
        try {
            URL url = new URL(strZza);
            this.zzj.zzr().zzx().zza("Fetching remote configuration", zzgVar.zzc());
            zzbo.zzb zzbVarZza = zzc().zza(zzgVar.zzc());
            String strZzb = zzc().zzb(zzgVar.zzc());
            if (zzbVarZza == null || TextUtils.isEmpty(strZzb)) {
                aVar = null;
            } else {
                a aVar2 = new a();
                aVar2.put("If-Modified-Since", strZzb);
                aVar = aVar2;
            }
            this.zzr = true;
            zzfa zzfaVarZzd = zzd();
            String strZzc = zzgVar.zzc();
            zzkf zzkfVar = new zzkf(this);
            zzfaVarZzd.zzd();
            zzfaVarZzd.zzak();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkfVar);
            zzfaVarZzd.zzq().zzb(new zzfe(zzfaVarZzd, strZzc, url, null, aVar, zzkfVar));
        } catch (MalformedURLException unused) {
            this.zzj.zzr().zzf().zza("Failed to parse config URL. Not fetching. appId", zzew.zza(zzgVar.zzc()), strZza);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzkj zzkjVar) {
        this.zzj.zzq().zzd();
        zzac zzacVar = new zzac(this);
        zzacVar.zzal();
        this.zzd = zzacVar;
        this.zzj.zzb().zza(this.zzb);
        zzn zznVar = new zzn(this);
        zznVar.zzal();
        this.zzg = zznVar;
        zzid zzidVar = new zzid(this);
        zzidVar.zzal();
        this.zzi = zzidVar;
        zzka zzkaVar = new zzka(this);
        zzkaVar.zzal();
        this.zzf = zzkaVar;
        this.zze = new zzfd(this);
        if (this.zzp != this.zzq) {
            this.zzj.zzr().zzf().zza("Not all upload components initialized", Integer.valueOf(this.zzp), Integer.valueOf(this.zzq));
        }
        this.zzk = true;
    }

    @VisibleForTesting
    private final boolean zza(int i2, FileChannel fileChannel) {
        zzw();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            if (this.zzj.zzb().zza(zzap.zzcp) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0L);
            }
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.zzj.zzr().zzf().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e2) {
            this.zzj.zzr().zzf().zza("Failed to write to channel", e2);
            return false;
        }
    }

    private final boolean zza(zzbr.zzc.zza zzaVar, zzbr.zzc.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zzd()));
        zzh();
        zzbr.zze zzeVarZza = zzki.zza((zzbr.zzc) zzaVar.zzu(), "_sc");
        String strZzc = zzeVarZza == null ? null : zzeVarZza.zzc();
        zzh();
        zzbr.zze zzeVarZza2 = zzki.zza((zzbr.zzc) zzaVar2.zzu(), "_pc");
        String strZzc2 = zzeVarZza2 != null ? zzeVarZza2.zzc() : null;
        if (strZzc2 == null || !strZzc2.equals(strZzc)) {
            return false;
        }
        zzb(zzaVar, zzaVar2);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0271 A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x027f A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x05a8 A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0683 A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x078a A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x083e A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x08fd A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0b45 A[Catch: all -> 0x0f30, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0b5b A[Catch: all -> 0x0f30, TRY_LEAVE, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0b7f A[Catch: all -> 0x0d6c, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0d6c, blocks: (B:370:0x0a11, B:371:0x0a26, B:373:0x0a2c, B:471:0x0d2d, B:391:0x0ab7, B:421:0x0b7f, B:431:0x0c1b, B:435:0x0c33, B:448:0x0c65, B:470:0x0d29, B:456:0x0cab, B:463:0x0ccd, B:465:0x0cf9, B:466:0x0d07, B:467:0x0d17, B:469:0x0d1d, B:460:0x0cb8, B:472:0x0d37, B:474:0x0d43, B:475:0x0d4a, B:476:0x0d52, B:478:0x0d58), top: B:559:0x0a11 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117 A[Catch: SQLiteException -> 0x023a, all -> 0x0f28, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x023a, blocks: (B:49:0x0111, B:51:0x0117, B:55:0x012f, B:56:0x0133, B:57:0x0145, B:59:0x014b, B:60:0x015c, B:62:0x0168, B:64:0x0188, B:63:0x017c, B:89:0x0225), top: B:553:0x0111 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012a A[Catch: all -> 0x0f30, PHI: r8
      0x012a: PHI (r8v5 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v33 android.database.Cursor), (r8v33 android.database.Cursor) binds: [B:105:0x0269, B:90:0x0236, B:52:0x0128] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0f18 A[Catch: all -> 0x0f30, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0f30, blocks: (B:3:0x0009, B:26:0x0084, B:107:0x026d, B:109:0x0271, B:115:0x027f, B:116:0x02a7, B:119:0x02b5, B:122:0x02db, B:124:0x0314, B:130:0x032a, B:132:0x0334, B:295:0x0801, B:134:0x035c, B:137:0x0374, B:166:0x03d5, B:169:0x03df, B:171:0x03ed, B:175:0x0438, B:172:0x040c, B:174:0x041c, B:179:0x0445, B:181:0x0475, B:182:0x04a3, B:184:0x04d7, B:186:0x04dd, B:189:0x04e9, B:191:0x051e, B:192:0x053b, B:194:0x0541, B:196:0x054f, B:200:0x0562, B:197:0x0557, B:203:0x0569, B:205:0x056f, B:206:0x058d, B:208:0x05a8, B:209:0x05b4, B:211:0x05ba, B:217:0x05e1, B:214:0x05ce, B:220:0x05e7, B:222:0x05f3, B:224:0x05ff, B:240:0x0650, B:243:0x066f, B:245:0x0683, B:247:0x068d, B:250:0x06a2, B:252:0x06b5, B:254:0x06c3, B:283:0x078a, B:285:0x0794, B:287:0x079a, B:288:0x07b0, B:289:0x07b4, B:291:0x07c7, B:292:0x07de, B:294:0x07e7, B:259:0x06d8, B:261:0x06e4, B:264:0x06f9, B:266:0x070c, B:268:0x071a, B:271:0x072a, B:273:0x0742, B:275:0x074e, B:278:0x0761, B:280:0x0774, B:228:0x0622, B:232:0x0636, B:234:0x063c, B:237:0x0647, B:144:0x0396, B:147:0x03a0, B:150:0x03aa, B:300:0x081d, B:302:0x082b, B:304:0x0836, B:315:0x0868, B:305:0x083e, B:307:0x0847, B:309:0x084d, B:312:0x0859, B:314:0x0863, B:317:0x086d, B:320:0x0885, B:321:0x088d, B:323:0x0893, B:328:0x08aa, B:329:0x08b5, B:331:0x08bb, B:333:0x08cd, B:338:0x08da, B:340:0x08e0, B:345:0x091f, B:347:0x0931, B:349:0x0950, B:351:0x095e, B:353:0x0964, B:355:0x096e, B:356:0x09a0, B:358:0x09a6, B:360:0x09b6, B:364:0x09c1, B:361:0x09bb, B:365:0x09c4, B:367:0x09d6, B:368:0x09d9, B:375:0x0a42, B:377:0x0a5d, B:378:0x0a6e, B:380:0x0a72, B:382:0x0a7e, B:383:0x0a88, B:385:0x0a8c, B:387:0x0a94, B:388:0x0aa2, B:389:0x0aad, B:395:0x0aeb, B:396:0x0af3, B:398:0x0af9, B:400:0x0b0b, B:402:0x0b0f, B:416:0x0b45, B:419:0x0b5b, B:423:0x0b8b, B:425:0x0ba1, B:427:0x0bce, B:428:0x0bf4, B:438:0x0c3a, B:440:0x0c4b, B:442:0x0c4f, B:444:0x0c53, B:446:0x0c57, B:450:0x0c6b, B:452:0x0c8c, B:453:0x0c95, B:458:0x0caf, B:404:0x0b1d, B:406:0x0b21, B:408:0x0b2b, B:410:0x0b2f, B:484:0x0d75, B:486:0x0d87, B:487:0x0d8a, B:489:0x0d9c, B:509:0x0e11, B:511:0x0e17, B:513:0x0e2c, B:516:0x0e33, B:521:0x0e66, B:517:0x0e3b, B:519:0x0e47, B:520:0x0e4d, B:522:0x0e77, B:523:0x0e8e, B:526:0x0e96, B:527:0x0e9b, B:528:0x0eab, B:530:0x0ec5, B:531:0x0ede, B:532:0x0ee6, B:537:0x0f08, B:536:0x0ef7, B:490:0x0db6, B:492:0x0dbc, B:494:0x0dc6, B:496:0x0dcd, B:502:0x0ddd, B:504:0x0de4, B:506:0x0e03, B:508:0x0e0a, B:507:0x0e07, B:503:0x0de1, B:495:0x0dca, B:341:0x08fd, B:342:0x0902, B:344:0x0914, B:540:0x0f18, B:53:0x012a, B:69:0x01c5, B:546:0x0f2c, B:547:0x0f2f), top: B:561:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012f A[Catch: SQLiteException -> 0x023a, all -> 0x0f28, TRY_ENTER, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x023a, blocks: (B:49:0x0111, B:51:0x0117, B:55:0x012f, B:56:0x0133, B:57:0x0145, B:59:0x014b, B:60:0x015c, B:62:0x0168, B:64:0x0188, B:63:0x017c, B:89:0x0225), top: B:553:0x0111 }] */
    /* JADX WARN: Type inference failed for: r3v180 */
    /* JADX WARN: Type inference failed for: r3v181 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zza(java.lang.String r60, long r61) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3900
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(java.lang.String, long):boolean");
    }

    private final void zzaa() {
        zzw();
        if (this.zzr || this.zzs || this.zzt) {
            this.zzj.zzr().zzx().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzr), Boolean.valueOf(this.zzs), Boolean.valueOf(this.zzt));
            return;
        }
        this.zzj.zzr().zzx().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzo;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.zzo.clear();
    }

    @VisibleForTesting
    private final boolean zzab() {
        zzey zzeyVarZzi;
        String str;
        FileLock fileLock;
        zzw();
        if (this.zzj.zzb().zza(zzap.zzca) && (fileLock = this.zzu) != null && fileLock.isValid()) {
            this.zzj.zzr().zzx().zza("Storage concurrent access okay");
            return true;
        }
        try {
            this.zzv = new RandomAccessFile(new File(this.zzj.zzn().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzu = this.zzv.tryLock();
            if (this.zzu != null) {
                this.zzj.zzr().zzx().zza("Storage concurrent access okay");
                return true;
            }
            this.zzj.zzr().zzf().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            e = e2;
            zzeyVarZzi = this.zzj.zzr().zzf();
            str = "Failed to acquire storage lock";
            zzeyVarZzi.zza(str, e);
            return false;
        } catch (IOException e3) {
            e = e3;
            zzeyVarZzi = this.zzj.zzr().zzf();
            str = "Failed to access storage lock file";
            zzeyVarZzi.zza(str, e);
            return false;
        } catch (OverlappingFileLockException e4) {
            e = e4;
            zzeyVarZzi = this.zzj.zzr().zzi();
            str = "Storage lock already acquired";
            zzeyVarZzi.zza(str, e);
            return false;
        }
    }

    private final boolean zzac() {
        zzw();
        zzk();
        return this.zzl;
    }

    private final Boolean zzb(zzg zzgVar) {
        try {
            if (zzgVar.zzm() != -2147483648L) {
                if (zzgVar.zzm() == Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzgVar.zzc(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzgVar.zzc(), 0).versionName;
                if (zzgVar.zzl() != null && zzgVar.zzl().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void zzb(zzbr.zzc.zza zzaVar, zzbr.zzc.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zzd()));
        zzh();
        zzbr.zze zzeVarZza = zzki.zza((zzbr.zzc) zzaVar.zzu(), "_et");
        if (!zzeVarZza.zzd() || zzeVarZza.zze() <= 0) {
            return;
        }
        long jZze = zzeVarZza.zze();
        zzh();
        zzbr.zze zzeVarZza2 = zzki.zza((zzbr.zzc) zzaVar2.zzu(), "_et");
        if (zzeVarZza2 != null && zzeVarZza2.zze() > 0) {
            jZze += zzeVarZza2.zze();
        }
        zzh();
        zzki.zza(zzaVar2, "_et", Long.valueOf(jZze));
        zzh();
        zzki.zza(zzaVar, "_fr", (Object) 1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:255:0x08a9 A[Catch: all -> 0x091e, TryCatch #1 {all -> 0x091e, blocks: (B:33:0x0108, B:36:0x0117, B:84:0x02b8, B:86:0x02f7, B:88:0x02fc, B:89:0x0315, B:93:0x0326, B:95:0x033b, B:97:0x0342, B:98:0x035b, B:102:0x037e, B:106:0x03a6, B:107:0x03bf, B:111:0x03cf, B:114:0x03f2, B:115:0x0410, B:118:0x041a, B:120:0x042a, B:122:0x0436, B:124:0x043c, B:125:0x0447, B:127:0x044f, B:129:0x045f, B:131:0x046f, B:133:0x047a, B:135:0x0486, B:136:0x049d, B:138:0x04ca, B:141:0x04da, B:144:0x0516, B:146:0x053e, B:148:0x0578, B:149:0x057d, B:151:0x0585, B:152:0x058a, B:154:0x0592, B:155:0x0597, B:157:0x05a0, B:158:0x05a6, B:160:0x05b3, B:161:0x05b8, B:163:0x05be, B:165:0x05ce, B:167:0x05d8, B:169:0x05e0, B:170:0x05e5, B:172:0x05ef, B:174:0x05f9, B:176:0x0601, B:177:0x0603, B:188:0x0635, B:190:0x063d, B:191:0x0642, B:193:0x0657, B:195:0x0661, B:196:0x0664, B:198:0x0672, B:200:0x067c, B:202:0x0680, B:204:0x068b, B:216:0x06f9, B:218:0x0741, B:220:0x074f, B:222:0x0758, B:223:0x075d, B:225:0x0769, B:226:0x07d0, B:228:0x07da, B:229:0x07e1, B:231:0x07eb, B:232:0x07f2, B:233:0x07fd, B:235:0x0803, B:237:0x0834, B:238:0x0844, B:240:0x084c, B:241:0x0852, B:243:0x0858, B:253:0x08a3, B:255:0x08a9, B:258:0x08c5, B:260:0x08d9, B:247:0x086a, B:249:0x088e, B:257:0x08ad, B:205:0x0697, B:207:0x06a9, B:209:0x06ad, B:211:0x06bf, B:215:0x06f6, B:212:0x06d9, B:214:0x06df, B:178:0x0607, B:180:0x0615, B:182:0x061f, B:184:0x0627, B:185:0x062a, B:187:0x0632, B:145:0x0530, B:40:0x0125, B:43:0x0137, B:45:0x014e, B:51:0x016a, B:54:0x0196, B:56:0x019c, B:58:0x01aa, B:60:0x01b6, B:62:0x01c0, B:64:0x01cb, B:67:0x01d2, B:75:0x0268, B:77:0x0272, B:81:0x02a9, B:68:0x0201, B:69:0x021f, B:74:0x024d, B:73:0x023c, B:61:0x01bb, B:52:0x016f, B:53:0x018c), top: B:269:0x0108, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02a9 A[Catch: all -> 0x091e, TRY_LEAVE, TryCatch #1 {all -> 0x091e, blocks: (B:33:0x0108, B:36:0x0117, B:84:0x02b8, B:86:0x02f7, B:88:0x02fc, B:89:0x0315, B:93:0x0326, B:95:0x033b, B:97:0x0342, B:98:0x035b, B:102:0x037e, B:106:0x03a6, B:107:0x03bf, B:111:0x03cf, B:114:0x03f2, B:115:0x0410, B:118:0x041a, B:120:0x042a, B:122:0x0436, B:124:0x043c, B:125:0x0447, B:127:0x044f, B:129:0x045f, B:131:0x046f, B:133:0x047a, B:135:0x0486, B:136:0x049d, B:138:0x04ca, B:141:0x04da, B:144:0x0516, B:146:0x053e, B:148:0x0578, B:149:0x057d, B:151:0x0585, B:152:0x058a, B:154:0x0592, B:155:0x0597, B:157:0x05a0, B:158:0x05a6, B:160:0x05b3, B:161:0x05b8, B:163:0x05be, B:165:0x05ce, B:167:0x05d8, B:169:0x05e0, B:170:0x05e5, B:172:0x05ef, B:174:0x05f9, B:176:0x0601, B:177:0x0603, B:188:0x0635, B:190:0x063d, B:191:0x0642, B:193:0x0657, B:195:0x0661, B:196:0x0664, B:198:0x0672, B:200:0x067c, B:202:0x0680, B:204:0x068b, B:216:0x06f9, B:218:0x0741, B:220:0x074f, B:222:0x0758, B:223:0x075d, B:225:0x0769, B:226:0x07d0, B:228:0x07da, B:229:0x07e1, B:231:0x07eb, B:232:0x07f2, B:233:0x07fd, B:235:0x0803, B:237:0x0834, B:238:0x0844, B:240:0x084c, B:241:0x0852, B:243:0x0858, B:253:0x08a3, B:255:0x08a9, B:258:0x08c5, B:260:0x08d9, B:247:0x086a, B:249:0x088e, B:257:0x08ad, B:205:0x0697, B:207:0x06a9, B:209:0x06ad, B:211:0x06bf, B:215:0x06f6, B:212:0x06d9, B:214:0x06df, B:178:0x0607, B:180:0x0615, B:182:0x061f, B:184:0x0627, B:185:0x062a, B:187:0x0632, B:145:0x0530, B:40:0x0125, B:43:0x0137, B:45:0x014e, B:51:0x016a, B:54:0x0196, B:56:0x019c, B:58:0x01aa, B:60:0x01b6, B:62:0x01c0, B:64:0x01cb, B:67:0x01d2, B:75:0x0268, B:77:0x0272, B:81:0x02a9, B:68:0x0201, B:69:0x021f, B:74:0x024d, B:73:0x023c, B:61:0x01bb, B:52:0x016f, B:53:0x018c), top: B:269:0x0108, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzb(com.google.android.gms.measurement.internal.zzan r28, com.google.android.gms.measurement.internal.zzm r29) {
        /*
            Method dump skipped, instruction units count: 2346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zzb(com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzm):void");
    }

    private static void zzb(zzkb zzkbVar) {
        if (zzkbVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzkbVar.zzaj()) {
            return;
        }
        String strValueOf = String.valueOf(zzkbVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    private final boolean zze(zzm zzmVar) {
        return (zzle.zzb() && this.zzj.zzb().zze(zzmVar.zza, zzap.zzcc)) ? (TextUtils.isEmpty(zzmVar.zzb) && TextUtils.isEmpty(zzmVar.zzv) && TextUtils.isEmpty(zzmVar.zzr)) ? false : true : (TextUtils.isEmpty(zzmVar.zzb) && TextUtils.isEmpty(zzmVar.zzr)) ? false : true;
    }

    private final zzfd zzt() {
        zzfd zzfdVar = this.zze;
        if (zzfdVar != null) {
            return zzfdVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzka zzv() {
        zzb(this.zzf);
        return this.zzf;
    }

    private final void zzw() {
        this.zzj.zzq().zzd();
    }

    private final long zzx() {
        long jCurrentTimeMillis = this.zzj.zzm().currentTimeMillis();
        zzff zzffVarZzc = this.zzj.zzc();
        zzffVarZzc.zzaa();
        zzffVarZzc.zzd();
        long jZza = zzffVarZzc.zzg.zza();
        if (jZza == 0) {
            jZza = 1 + ((long) zzffVarZzc.zzp().zzh().nextInt(86400000));
            zzffVarZzc.zzg.zza(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    private final boolean zzy() {
        zzw();
        zzk();
        return zze().zzy() || !TextUtils.isEmpty(zze().d_());
    }

    private final void zzz() {
        zzel<Long> zzelVar;
        long jMax;
        zzw();
        zzk();
        if (zzac() || this.zzj.zzb().zza(zzap.zzbc)) {
            if (this.zzn > 0) {
                long jAbs = 3600000 - Math.abs(this.zzj.zzm().elapsedRealtime() - this.zzn);
                if (jAbs > 0) {
                    this.zzj.zzr().zzx().zza("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                    zzt().zzb();
                    zzv().zzf();
                    return;
                }
                this.zzn = 0L;
            }
            if (!this.zzj.zzag() || !zzy()) {
                this.zzj.zzr().zzx().zza("Nothing to upload or uploading impossible");
                zzt().zzb();
                zzv().zzf();
                return;
            }
            long jCurrentTimeMillis = this.zzj.zzm().currentTimeMillis();
            long jMax2 = Math.max(0L, zzap.zzaa.zza(null).longValue());
            boolean z = zze().zzz() || zze().zzk();
            if (z) {
                String strZzv = this.zzj.zzb().zzv();
                zzelVar = (TextUtils.isEmpty(strZzv) || ".none.".equals(strZzv)) ? zzap.zzu : zzap.zzv;
            } else {
                zzelVar = zzap.zzt;
            }
            long jMax3 = Math.max(0L, zzelVar.zza(null).longValue());
            long jZza = this.zzj.zzc().zzc.zza();
            long jZza2 = this.zzj.zzc().zzd.zza();
            long jMax4 = Math.max(zze().zzw(), zze().zzx());
            if (jMax4 == 0) {
                jMax = 0;
            } else {
                long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
                long jAbs3 = jCurrentTimeMillis - Math.abs(jZza - jCurrentTimeMillis);
                long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
                long jMax5 = Math.max(jAbs3, jAbs4);
                long jMin = jAbs2 + jMax2;
                if (z && jMax5 > 0) {
                    jMin = Math.min(jAbs2, jMax5) + jMax3;
                }
                jMax = !zzh().zza(jMax5, jMax3) ? jMax5 + jMax3 : jMin;
                if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                    for (int i2 = 0; i2 < Math.min(20, Math.max(0, zzap.zzac.zza(null).intValue())); i2++) {
                        jMax += Math.max(0L, zzap.zzab.zza(null).longValue()) * (1 << i2);
                        if (jMax > jAbs4) {
                            break;
                        }
                    }
                    jMax = 0;
                }
            }
            if (jMax == 0) {
                this.zzj.zzr().zzx().zza("Next upload time is 0");
                zzt().zzb();
                zzv().zzf();
                return;
            }
            if (!zzd().zzf()) {
                this.zzj.zzr().zzx().zza("No network");
                zzt().zza();
                zzv().zzf();
                return;
            }
            long jZza3 = this.zzj.zzc().zze.zza();
            long jMax6 = Math.max(0L, zzap.zzr.zza(null).longValue());
            if (!zzh().zza(jZza3, jMax6)) {
                jMax = Math.max(jMax, jZza3 + jMax6);
            }
            zzt().zzb();
            long jCurrentTimeMillis2 = jMax - this.zzj.zzm().currentTimeMillis();
            if (jCurrentTimeMillis2 <= 0) {
                jCurrentTimeMillis2 = Math.max(0L, zzap.zzw.zza(null).longValue());
                this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
            }
            this.zzj.zzr().zzx().zza("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
            zzv().zza(jCurrentTimeMillis2);
        }
    }

    protected final void zza() {
        this.zzj.zzq().zzd();
        zze().zzv();
        if (this.zzj.zzc().zzc.zza() == 0) {
            this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
        }
        zzz();
    }

    @VisibleForTesting
    final void zza(int i2, Throwable th, byte[] bArr, String str) {
        zzw();
        zzk();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzs = false;
                zzaa();
            }
        }
        List<Long> list = this.zzw;
        this.zzw = null;
        boolean z = true;
        if ((i2 == 200 || i2 == 204) && th == null) {
            try {
                this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
                this.zzj.zzc().zzd.zza(0L);
                zzz();
                this.zzj.zzr().zzx().zza("Successful upload. Got network response. code, size", Integer.valueOf(i2), Integer.valueOf(bArr.length));
                zze().zzf();
                try {
                    for (Long l : list) {
                        try {
                            zzac zzacVarZze = zze();
                            long jLongValue = l.longValue();
                            zzacVarZze.zzd();
                            zzacVarZze.zzak();
                            try {
                                if (zzacVarZze.c_().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e2) {
                                zzacVarZze.zzr().zzf().zza("Failed to delete a bundle in a queue table", e2);
                                throw e2;
                            }
                        } catch (SQLiteException e3) {
                            if (this.zzx == null || !this.zzx.contains(l)) {
                                throw e3;
                            }
                        }
                    }
                    zze().b_();
                    zze().zzh();
                    this.zzx = null;
                    if (zzd().zzf() && zzy()) {
                        zzl();
                    } else {
                        this.zzy = -1L;
                        zzz();
                    }
                    this.zzn = 0L;
                } catch (Throwable th2) {
                    zze().zzh();
                    throw th2;
                }
            } catch (SQLiteException e4) {
                this.zzj.zzr().zzf().zza("Database error while trying to delete uploaded bundles", e4);
                this.zzn = this.zzj.zzm().elapsedRealtime();
                this.zzj.zzr().zzx().zza("Disable upload, time", Long.valueOf(this.zzn));
            }
        } else {
            this.zzj.zzr().zzx().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
            this.zzj.zzc().zzd.zza(this.zzj.zzm().currentTimeMillis());
            if (i2 != 503 && i2 != 429) {
                z = false;
            }
            if (z) {
                this.zzj.zzc().zze.zza(this.zzj.zzm().currentTimeMillis());
            }
            zze().zza(list);
            zzz();
        }
    }

    final void zza(zzan zzanVar, zzm zzmVar) {
        List<zzv> listZza;
        List<zzv> listZza2;
        List<zzv> listZza3;
        zzey zzeyVarZzf;
        String str;
        Object objZza;
        String strZzc;
        Object obj;
        List<String> list;
        zzan zzanVar2 = zzanVar;
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzw();
        zzk();
        String str2 = zzmVar.zza;
        long j2 = zzanVar2.zzd;
        if (zzh().zza(zzanVar2, zzmVar)) {
            if (!zzmVar.zzh) {
                zzc(zzmVar);
                return;
            }
            if (this.zzj.zzb().zze(str2, zzap.zzbk) && (list = zzmVar.zzu) != null) {
                if (!list.contains(zzanVar2.zza)) {
                    this.zzj.zzr().zzw().zza("Dropping non-safelisted event. appId, event name, origin", str2, zzanVar2.zza, zzanVar2.zzc);
                    return;
                } else {
                    Bundle bundleZzb = zzanVar2.zzb.zzb();
                    bundleZzb.putLong("ga_safelisted", 1L);
                    zzanVar2 = new zzan(zzanVar2.zza, new zzam(bundleZzb), zzanVar2.zzc, zzanVar2.zzd);
                }
            }
            zze().zzf();
            try {
                zzac zzacVarZze = zze();
                Preconditions.checkNotEmpty(str2);
                zzacVarZze.zzd();
                zzacVarZze.zzak();
                if (j2 < 0) {
                    zzacVarZze.zzr().zzi().zza("Invalid time querying timed out conditional properties", zzew.zza(str2), Long.valueOf(j2));
                    listZza = Collections.emptyList();
                } else {
                    listZza = zzacVarZze.zza("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j2)});
                }
                for (zzv zzvVar : listZza) {
                    if (zzvVar != null) {
                        this.zzj.zzr().zzw().zza("User property timed out", zzvVar.zza, this.zzj.zzj().zzc(zzvVar.zzc.zza), zzvVar.zzc.zza());
                        if (zzvVar.zzg != null) {
                            zzb(new zzan(zzvVar.zzg, j2), zzmVar);
                        }
                        zze().zze(str2, zzvVar.zzc.zza);
                    }
                }
                zzac zzacVarZze2 = zze();
                Preconditions.checkNotEmpty(str2);
                zzacVarZze2.zzd();
                zzacVarZze2.zzak();
                if (j2 < 0) {
                    zzacVarZze2.zzr().zzi().zza("Invalid time querying expired conditional properties", zzew.zza(str2), Long.valueOf(j2));
                    listZza2 = Collections.emptyList();
                } else {
                    listZza2 = zzacVarZze2.zza("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j2)});
                }
                ArrayList arrayList = new ArrayList(listZza2.size());
                for (zzv zzvVar2 : listZza2) {
                    if (zzvVar2 != null) {
                        this.zzj.zzr().zzw().zza("User property expired", zzvVar2.zza, this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzc.zza());
                        zze().zzb(str2, zzvVar2.zzc.zza);
                        if (zzvVar2.zzk != null) {
                            arrayList.add(zzvVar2.zzk);
                        }
                        zze().zze(str2, zzvVar2.zzc.zza);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    zzb(new zzan((zzan) obj2, j2), zzmVar);
                }
                zzac zzacVarZze3 = zze();
                String str3 = zzanVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zzacVarZze3.zzd();
                zzacVarZze3.zzak();
                if (j2 < 0) {
                    zzacVarZze3.zzr().zzi().zza("Invalid time querying triggered conditional properties", zzew.zza(str2), zzacVarZze3.zzo().zza(str3), Long.valueOf(j2));
                    listZza3 = Collections.emptyList();
                } else {
                    listZza3 = zzacVarZze3.zza("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j2)});
                }
                ArrayList arrayList2 = new ArrayList(listZza3.size());
                for (zzv zzvVar3 : listZza3) {
                    if (zzvVar3 != null) {
                        zzkl zzklVar = zzvVar3.zzc;
                        zzkn zzknVar = new zzkn(zzvVar3.zza, zzvVar3.zzb, zzklVar.zza, j2, zzklVar.zza());
                        if (zze().zza(zzknVar)) {
                            zzeyVarZzf = this.zzj.zzr().zzw();
                            str = "User property triggered";
                            objZza = zzvVar3.zza;
                            strZzc = this.zzj.zzj().zzc(zzknVar.zzc);
                            obj = zzknVar.zze;
                        } else {
                            zzeyVarZzf = this.zzj.zzr().zzf();
                            str = "Too many active user properties, ignoring";
                            objZza = zzew.zza(zzvVar3.zza);
                            strZzc = this.zzj.zzj().zzc(zzknVar.zzc);
                            obj = zzknVar.zze;
                        }
                        zzeyVarZzf.zza(str, objZza, strZzc, obj);
                        if (zzvVar3.zzi != null) {
                            arrayList2.add(zzvVar3.zzi);
                        }
                        zzvVar3.zzc = new zzkl(zzknVar);
                        zzvVar3.zze = true;
                        zze().zza(zzvVar3);
                    }
                }
                zzb(zzanVar2, zzmVar);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj3 = arrayList2.get(i3);
                    i3++;
                    zzb(new zzan((zzan) obj3, j2), zzmVar);
                }
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    final void zza(zzan zzanVar, String str) {
        zzg zzgVarZzb = zze().zzb(str);
        if (zzgVarZzb == null || TextUtils.isEmpty(zzgVarZzb.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzb = zzb(zzgVarZzb);
        if (boolZzb == null) {
            if (!"_ui".equals(zzanVar.zza)) {
                this.zzj.zzr().zzi().zza("Could not find package. appId", zzew.zza(str));
            }
        } else if (!boolZzb.booleanValue()) {
            this.zzj.zzr().zzf().zza("App version does not match; dropping event. appId", zzew.zza(str));
            return;
        }
        zza(zzanVar, new zzm(str, zzgVarZzb.zze(), zzgVarZzb.zzl(), zzgVarZzb.zzm(), zzgVarZzb.zzn(), zzgVarZzb.zzo(), zzgVarZzb.zzp(), (String) null, zzgVarZzb.zzr(), false, zzgVarZzb.zzi(), zzgVarZzb.zzae(), 0L, 0, zzgVarZzb.zzaf(), zzgVarZzb.zzag(), false, zzgVarZzb.zzf(), zzgVarZzb.zzah(), zzgVarZzb.zzq(), zzgVarZzb.zzai(), (zzle.zzb() && this.zzj.zzb().zze(zzgVarZzb.zzc(), zzap.zzcc)) ? zzgVarZzb.zzg() : null));
    }

    final void zza(zzkb zzkbVar) {
        this.zzp++;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zza(com.google.android.gms.measurement.internal.zzkl r13, com.google.android.gms.measurement.internal.zzm r14) {
        /*
            Method dump skipped, instruction units count: 468
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(com.google.android.gms.measurement.internal.zzkl, com.google.android.gms.measurement.internal.zzm):void");
    }

    @VisibleForTesting
    final void zza(zzm zzmVar) {
        if (this.zzw != null) {
            this.zzx = new ArrayList();
            this.zzx.addAll(this.zzw);
        }
        zzac zzacVarZze = zze();
        String str = zzmVar.zza;
        Preconditions.checkNotEmpty(str);
        zzacVarZze.zzd();
        zzacVarZze.zzak();
        try {
            SQLiteDatabase sQLiteDatabaseC_ = zzacVarZze.c_();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseC_.delete("apps", "app_id=?", strArr) + 0 + sQLiteDatabaseC_.delete("events", "app_id=?", strArr) + sQLiteDatabaseC_.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseC_.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseC_.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseC_.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseC_.delete("queue", "app_id=?", strArr) + sQLiteDatabaseC_.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseC_.delete("main_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzacVarZze.zzr().zzx().zza("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e2) {
            zzacVarZze.zzr().zzf().zza("Error resetting analytics data. appId, error", zzew.zza(str), e2);
        }
        if (com.google.android.gms.internal.measurement.zzkm.zzb() && this.zzj.zzb().zza(zzap.zzch)) {
            if (zzmVar.zzh) {
                zzb(zzmVar);
            }
        } else {
            zzm zzmVarZza = zza(this.zzj.zzn(), zzmVar.zza, zzmVar.zzb, zzmVar.zzh, zzmVar.zzo, zzmVar.zzp, zzmVar.zzm, zzmVar.zzr, zzmVar.zzv);
            if (zzmVar.zzh) {
                zzb(zzmVarZza);
            }
        }
    }

    final void zza(zzv zzvVar) {
        zzm zzmVarZza = zza(zzvVar.zza);
        if (zzmVarZza != null) {
            zza(zzvVar, zzmVarZza);
        }
    }

    final void zza(zzv zzvVar, zzm zzmVar) {
        zzey zzeyVarZzf;
        String str;
        Object objZza;
        String strZzc;
        Object objZza2;
        zzey zzeyVarZzf2;
        String str2;
        Object objZza3;
        String strZzc2;
        Object obj;
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzb);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        zzw();
        zzk();
        if (zze(zzmVar)) {
            if (!zzmVar.zzh) {
                zzc(zzmVar);
                return;
            }
            zzv zzvVar2 = new zzv(zzvVar);
            boolean z = false;
            zzvVar2.zze = false;
            zze().zzf();
            try {
                zzv zzvVarZzd = zze().zzd(zzvVar2.zza, zzvVar2.zzc.zza);
                if (zzvVarZzd != null && !zzvVarZzd.zzb.equals(zzvVar2.zzb)) {
                    this.zzj.zzr().zzi().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzj.zzj().zzc(zzvVar2.zzc.zza), zzvVar2.zzb, zzvVarZzd.zzb);
                }
                if (zzvVarZzd != null && zzvVarZzd.zze) {
                    zzvVar2.zzb = zzvVarZzd.zzb;
                    zzvVar2.zzd = zzvVarZzd.zzd;
                    zzvVar2.zzh = zzvVarZzd.zzh;
                    zzvVar2.zzf = zzvVarZzd.zzf;
                    zzvVar2.zzi = zzvVarZzd.zzi;
                    zzvVar2.zze = zzvVarZzd.zze;
                    zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, zzvVarZzd.zzc.zzb, zzvVar2.zzc.zza(), zzvVarZzd.zzc.zze);
                } else if (TextUtils.isEmpty(zzvVar2.zzf)) {
                    zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, zzvVar2.zzd, zzvVar2.zzc.zza(), zzvVar2.zzc.zze);
                    zzvVar2.zze = true;
                    z = true;
                }
                if (zzvVar2.zze) {
                    zzkl zzklVar = zzvVar2.zzc;
                    zzkn zzknVar = new zzkn(zzvVar2.zza, zzvVar2.zzb, zzklVar.zza, zzklVar.zzb, zzklVar.zza());
                    if (zze().zza(zzknVar)) {
                        zzeyVarZzf2 = this.zzj.zzr().zzw();
                        str2 = "User property updated immediately";
                        objZza3 = zzvVar2.zza;
                        strZzc2 = this.zzj.zzj().zzc(zzknVar.zzc);
                        obj = zzknVar.zze;
                    } else {
                        zzeyVarZzf2 = this.zzj.zzr().zzf();
                        str2 = "(2)Too many active user properties, ignoring";
                        objZza3 = zzew.zza(zzvVar2.zza);
                        strZzc2 = this.zzj.zzj().zzc(zzknVar.zzc);
                        obj = zzknVar.zze;
                    }
                    zzeyVarZzf2.zza(str2, objZza3, strZzc2, obj);
                    if (z && zzvVar2.zzi != null) {
                        zzb(new zzan(zzvVar2.zzi, zzvVar2.zzd), zzmVar);
                    }
                }
                if (zze().zza(zzvVar2)) {
                    zzeyVarZzf = this.zzj.zzr().zzw();
                    str = "Conditional property added";
                    objZza = zzvVar2.zza;
                    strZzc = this.zzj.zzj().zzc(zzvVar2.zzc.zza);
                    objZza2 = zzvVar2.zzc.zza();
                } else {
                    zzeyVarZzf = this.zzj.zzr().zzf();
                    str = "Too many conditional properties, ignoring";
                    objZza = zzew.zza(zzvVar2.zza);
                    strZzc = this.zzj.zzj().zzc(zzvVar2.zzc.zza);
                    objZza2 = zzvVar2.zzc.zza();
                }
                zzeyVarZzf.zza(str, objZza, strZzc, objZza2);
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    final void zza(Runnable runnable) {
        zzw();
        if (this.zzo == null) {
            this.zzo = new ArrayList();
        }
        this.zzo.add(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0132 A[Catch: all -> 0x0179, TryCatch #1 {all -> 0x0179, blocks: (B:6:0x0029, B:15:0x0045, B:62:0x016d, B:20:0x0061, B:27:0x00b0, B:28:0x00c5, B:31:0x00cd, B:34:0x00d9, B:36:0x00df, B:41:0x00ec, B:53:0x011c, B:55:0x0132, B:57:0x015a, B:59:0x0164, B:61:0x016a, B:56:0x0142, B:47:0x0103, B:49:0x010d), top: B:72:0x0029, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0142 A[Catch: all -> 0x0179, TryCatch #1 {all -> 0x0179, blocks: (B:6:0x0029, B:15:0x0045, B:62:0x016d, B:20:0x0061, B:27:0x00b0, B:28:0x00c5, B:31:0x00cd, B:34:0x00d9, B:36:0x00df, B:41:0x00ec, B:53:0x011c, B:55:0x0132, B:57:0x015a, B:59:0x0164, B:61:0x016a, B:56:0x0142, B:47:0x0103, B:49:0x010d), top: B:72:0x0029, outer: #0 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zza(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zza(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final void zza(boolean z) {
        zzz();
    }

    public final zzx zzb() {
        return this.zzj.zzb();
    }

    final void zzb(zzkl zzklVar, zzm zzmVar) {
        zzw();
        zzk();
        if (zze(zzmVar)) {
            if (!zzmVar.zzh) {
                zzc(zzmVar);
                return;
            }
            if (!this.zzj.zzb().zze(zzmVar.zza, zzap.zzba)) {
                this.zzj.zzr().zzw().zza("Removing user property", this.zzj.zzj().zzc(zzklVar.zza));
                zze().zzf();
                try {
                    zzc(zzmVar);
                    zze().zzb(zzmVar.zza, zzklVar.zza);
                    zze().b_();
                    this.zzj.zzr().zzw().zza("User property removed", this.zzj.zzj().zzc(zzklVar.zza));
                    return;
                } finally {
                }
            }
            if ("_npa".equals(zzklVar.zza) && zzmVar.zzs != null) {
                this.zzj.zzr().zzw().zza("Falling back to manifest metadata value for ad personalization");
                zza(new zzkl("_npa", this.zzj.zzm().currentTimeMillis(), Long.valueOf(zzmVar.zzs.booleanValue() ? 1L : 0L), "auto"), zzmVar);
                return;
            }
            this.zzj.zzr().zzw().zza("Removing user property", this.zzj.zzj().zzc(zzklVar.zza));
            zze().zzf();
            try {
                zzc(zzmVar);
                zze().zzb(zzmVar.zza, zzklVar.zza);
                zze().b_();
                this.zzj.zzr().zzw().zza("User property removed", this.zzj.zzj().zzc(zzklVar.zza));
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x0475 A[Catch: all -> 0x04d3, TryCatch #0 {all -> 0x04d3, blocks: (B:27:0x00ae, B:29:0x00be, B:31:0x00cc, B:33:0x00d6, B:35:0x00da, B:39:0x00eb, B:41:0x0103, B:48:0x012a, B:50:0x0136, B:52:0x014d, B:53:0x0175, B:55:0x017c, B:57:0x01bf, B:67:0x01eb, B:69:0x01f6, B:74:0x0205, B:76:0x020d, B:78:0x0213, B:82:0x0222, B:84:0x0225, B:87:0x024a, B:89:0x024f, B:90:0x0257, B:96:0x026b, B:99:0x027f, B:101:0x02a6, B:102:0x02b4, B:104:0x02eb, B:105:0x02ee, B:107:0x02f2, B:108:0x02f5, B:110:0x0316, B:151:0x03f6, B:152:0x03fb, B:153:0x040b, B:163:0x0465, B:165:0x0475, B:167:0x048f, B:168:0x0496, B:169:0x04a6, B:173:0x04c4, B:113:0x0332, B:118:0x035d, B:120:0x0365, B:122:0x036f, B:127:0x0385, B:131:0x038f, B:135:0x039a, B:138:0x03ad, B:143:0x03d8, B:145:0x03de, B:146:0x03e3, B:148:0x03e9, B:141:0x03c0, B:116:0x0345, B:156:0x0413, B:158:0x044a, B:159:0x044d, B:161:0x0451, B:162:0x0454, B:170:0x04aa, B:172:0x04ae, B:93:0x025f, B:63:0x01d5, B:43:0x010d, B:46:0x0117), top: B:180:0x00ae, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04aa A[Catch: all -> 0x04d3, TryCatch #0 {all -> 0x04d3, blocks: (B:27:0x00ae, B:29:0x00be, B:31:0x00cc, B:33:0x00d6, B:35:0x00da, B:39:0x00eb, B:41:0x0103, B:48:0x012a, B:50:0x0136, B:52:0x014d, B:53:0x0175, B:55:0x017c, B:57:0x01bf, B:67:0x01eb, B:69:0x01f6, B:74:0x0205, B:76:0x020d, B:78:0x0213, B:82:0x0222, B:84:0x0225, B:87:0x024a, B:89:0x024f, B:90:0x0257, B:96:0x026b, B:99:0x027f, B:101:0x02a6, B:102:0x02b4, B:104:0x02eb, B:105:0x02ee, B:107:0x02f2, B:108:0x02f5, B:110:0x0316, B:151:0x03f6, B:152:0x03fb, B:153:0x040b, B:163:0x0465, B:165:0x0475, B:167:0x048f, B:168:0x0496, B:169:0x04a6, B:173:0x04c4, B:113:0x0332, B:118:0x035d, B:120:0x0365, B:122:0x036f, B:127:0x0385, B:131:0x038f, B:135:0x039a, B:138:0x03ad, B:143:0x03d8, B:145:0x03de, B:146:0x03e3, B:148:0x03e9, B:141:0x03c0, B:116:0x0345, B:156:0x0413, B:158:0x044a, B:159:0x044d, B:161:0x0451, B:162:0x0454, B:170:0x04aa, B:172:0x04ae, B:93:0x025f, B:63:0x01d5, B:43:0x010d, B:46:0x0117), top: B:180:0x00ae, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0225 A[Catch: all -> 0x04d3, TryCatch #0 {all -> 0x04d3, blocks: (B:27:0x00ae, B:29:0x00be, B:31:0x00cc, B:33:0x00d6, B:35:0x00da, B:39:0x00eb, B:41:0x0103, B:48:0x012a, B:50:0x0136, B:52:0x014d, B:53:0x0175, B:55:0x017c, B:57:0x01bf, B:67:0x01eb, B:69:0x01f6, B:74:0x0205, B:76:0x020d, B:78:0x0213, B:82:0x0222, B:84:0x0225, B:87:0x024a, B:89:0x024f, B:90:0x0257, B:96:0x026b, B:99:0x027f, B:101:0x02a6, B:102:0x02b4, B:104:0x02eb, B:105:0x02ee, B:107:0x02f2, B:108:0x02f5, B:110:0x0316, B:151:0x03f6, B:152:0x03fb, B:153:0x040b, B:163:0x0465, B:165:0x0475, B:167:0x048f, B:168:0x0496, B:169:0x04a6, B:173:0x04c4, B:113:0x0332, B:118:0x035d, B:120:0x0365, B:122:0x036f, B:127:0x0385, B:131:0x038f, B:135:0x039a, B:138:0x03ad, B:143:0x03d8, B:145:0x03de, B:146:0x03e3, B:148:0x03e9, B:141:0x03c0, B:116:0x0345, B:156:0x0413, B:158:0x044a, B:159:0x044d, B:161:0x0451, B:162:0x0454, B:170:0x04aa, B:172:0x04ae, B:93:0x025f, B:63:0x01d5, B:43:0x010d, B:46:0x0117), top: B:180:0x00ae, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x024f A[Catch: all -> 0x04d3, TryCatch #0 {all -> 0x04d3, blocks: (B:27:0x00ae, B:29:0x00be, B:31:0x00cc, B:33:0x00d6, B:35:0x00da, B:39:0x00eb, B:41:0x0103, B:48:0x012a, B:50:0x0136, B:52:0x014d, B:53:0x0175, B:55:0x017c, B:57:0x01bf, B:67:0x01eb, B:69:0x01f6, B:74:0x0205, B:76:0x020d, B:78:0x0213, B:82:0x0222, B:84:0x0225, B:87:0x024a, B:89:0x024f, B:90:0x0257, B:96:0x026b, B:99:0x027f, B:101:0x02a6, B:102:0x02b4, B:104:0x02eb, B:105:0x02ee, B:107:0x02f2, B:108:0x02f5, B:110:0x0316, B:151:0x03f6, B:152:0x03fb, B:153:0x040b, B:163:0x0465, B:165:0x0475, B:167:0x048f, B:168:0x0496, B:169:0x04a6, B:173:0x04c4, B:113:0x0332, B:118:0x035d, B:120:0x0365, B:122:0x036f, B:127:0x0385, B:131:0x038f, B:135:0x039a, B:138:0x03ad, B:143:0x03d8, B:145:0x03de, B:146:0x03e3, B:148:0x03e9, B:141:0x03c0, B:116:0x0345, B:156:0x0413, B:158:0x044a, B:159:0x044d, B:161:0x0451, B:162:0x0454, B:170:0x04aa, B:172:0x04ae, B:93:0x025f, B:63:0x01d5, B:43:0x010d, B:46:0x0117), top: B:180:0x00ae, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x026b A[Catch: all -> 0x04d3, TRY_LEAVE, TryCatch #0 {all -> 0x04d3, blocks: (B:27:0x00ae, B:29:0x00be, B:31:0x00cc, B:33:0x00d6, B:35:0x00da, B:39:0x00eb, B:41:0x0103, B:48:0x012a, B:50:0x0136, B:52:0x014d, B:53:0x0175, B:55:0x017c, B:57:0x01bf, B:67:0x01eb, B:69:0x01f6, B:74:0x0205, B:76:0x020d, B:78:0x0213, B:82:0x0222, B:84:0x0225, B:87:0x024a, B:89:0x024f, B:90:0x0257, B:96:0x026b, B:99:0x027f, B:101:0x02a6, B:102:0x02b4, B:104:0x02eb, B:105:0x02ee, B:107:0x02f2, B:108:0x02f5, B:110:0x0316, B:151:0x03f6, B:152:0x03fb, B:153:0x040b, B:163:0x0465, B:165:0x0475, B:167:0x048f, B:168:0x0496, B:169:0x04a6, B:173:0x04c4, B:113:0x0332, B:118:0x035d, B:120:0x0365, B:122:0x036f, B:127:0x0385, B:131:0x038f, B:135:0x039a, B:138:0x03ad, B:143:0x03d8, B:145:0x03de, B:146:0x03e3, B:148:0x03e9, B:141:0x03c0, B:116:0x0345, B:156:0x0413, B:158:0x044a, B:159:0x044d, B:161:0x0451, B:162:0x0454, B:170:0x04aa, B:172:0x04ae, B:93:0x025f, B:63:0x01d5, B:43:0x010d, B:46:0x0117), top: B:180:0x00ae, inners: #2, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzb(com.google.android.gms.measurement.internal.zzm r22) {
        /*
            Method dump skipped, instruction units count: 1246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.zzb(com.google.android.gms.measurement.internal.zzm):void");
    }

    final void zzb(zzv zzvVar) {
        zzm zzmVarZza = zza(zzvVar.zza);
        if (zzmVarZza != null) {
            zzb(zzvVar, zzmVarZza);
        }
    }

    final void zzb(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        zzw();
        zzk();
        if (zze(zzmVar)) {
            if (!zzmVar.zzh) {
                zzc(zzmVar);
                return;
            }
            zze().zzf();
            try {
                zzc(zzmVar);
                zzv zzvVarZzd = zze().zzd(zzvVar.zza, zzvVar.zzc.zza);
                if (zzvVarZzd != null) {
                    this.zzj.zzr().zzw().zza("Removing conditional user property", zzvVar.zza, this.zzj.zzj().zzc(zzvVar.zzc.zza));
                    zze().zze(zzvVar.zza, zzvVar.zzc.zza);
                    if (zzvVarZzd.zze) {
                        zze().zzb(zzvVar.zza, zzvVar.zzc.zza);
                    }
                    if (zzvVar.zzk != null) {
                        zzb(this.zzj.zzi().zza(zzvVar.zza, zzvVar.zzk.zza, zzvVar.zzk.zzb != null ? zzvVar.zzk.zzb.zzb() : null, zzvVarZzd.zzb, zzvVar.zzk.zzd, true, false), zzmVar);
                    }
                } else {
                    this.zzj.zzr().zzi().zza("Conditional user property doesn't exist", zzew.zza(zzvVar.zza), this.zzj.zzj().zzc(zzvVar.zzc.zza));
                }
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    public final zzfu zzc() {
        zzb(this.zzb);
        return this.zzb;
    }

    final zzg zzc(zzm zzmVar) {
        zzw();
        zzk();
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzg zzgVarZzb = zze().zzb(zzmVar.zza);
        String strZzb = this.zzj.zzc().zzb(zzmVar.zza);
        if (!com.google.android.gms.internal.measurement.zzkn.zzb() || !this.zzj.zzb().zza(zzap.zzck)) {
            return zza(zzmVar, zzgVarZzb, strZzb);
        }
        if (zzgVarZzb == null) {
            zzgVarZzb = new zzg(this.zzj, zzmVar.zza);
            zzgVarZzb.zza(this.zzj.zzi().zzk());
            zzgVarZzb.zze(strZzb);
        } else if (!strZzb.equals(zzgVarZzb.zzh())) {
            zzgVarZzb.zze(strZzb);
            zzgVarZzb.zza(this.zzj.zzi().zzk());
        }
        zzgVarZzb.zzb(zzmVar.zzb);
        zzgVarZzb.zzc(zzmVar.zzr);
        if (zzle.zzb() && this.zzj.zzb().zze(zzgVarZzb.zzc(), zzap.zzcc)) {
            zzgVarZzb.zzd(zzmVar.zzv);
        }
        if (!TextUtils.isEmpty(zzmVar.zzk)) {
            zzgVarZzb.zzf(zzmVar.zzk);
        }
        long j2 = zzmVar.zze;
        if (j2 != 0) {
            zzgVarZzb.zzd(j2);
        }
        if (!TextUtils.isEmpty(zzmVar.zzc)) {
            zzgVarZzb.zzg(zzmVar.zzc);
        }
        zzgVarZzb.zzc(zzmVar.zzj);
        String str = zzmVar.zzd;
        if (str != null) {
            zzgVarZzb.zzh(str);
        }
        zzgVarZzb.zze(zzmVar.zzf);
        zzgVarZzb.zza(zzmVar.zzh);
        if (!TextUtils.isEmpty(zzmVar.zzg)) {
            zzgVarZzb.zzi(zzmVar.zzg);
        }
        zzgVarZzb.zzp(zzmVar.zzl);
        zzgVarZzb.zzb(zzmVar.zzo);
        zzgVarZzb.zzc(zzmVar.zzp);
        if (this.zzj.zzb().zze(zzmVar.zza, zzap.zzba)) {
            zzgVarZzb.zza(zzmVar.zzs);
        }
        zzgVarZzb.zzf(zzmVar.zzt);
        if (zzgVarZzb.zza()) {
            zze().zza(zzgVarZzb);
        }
        return zzgVarZzb;
    }

    public final zzfa zzd() {
        zzb(this.zzc);
        return this.zzc;
    }

    final String zzd(zzm zzmVar) {
        try {
            return (String) this.zzj.zzq().zza(new zzkh(this, zzmVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            this.zzj.zzr().zzf().zza("Failed to get app instance id. appId", zzew.zza(zzmVar.zza), e2);
            return null;
        }
    }

    public final zzac zze() {
        zzb(this.zzd);
        return this.zzd;
    }

    public final zzn zzf() {
        zzb(this.zzg);
        return this.zzg;
    }

    public final zzid zzg() {
        zzb(this.zzi);
        return this.zzi;
    }

    public final zzki zzh() {
        zzb(this.zzh);
        return this.zzh;
    }

    public final zzeu zzi() {
        return this.zzj.zzj();
    }

    public final zzkm zzj() {
        return this.zzj.zzi();
    }

    final void zzk() {
        if (!this.zzk) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    final void zzl() {
        zzg zzgVarZzb;
        String strZzad;
        zzey zzeyVarZzx;
        String str;
        zzw();
        zzk();
        this.zzt = true;
        try {
            this.zzj.zzu();
            Boolean boolZzag = this.zzj.zzw().zzag();
            if (boolZzag == null) {
                zzeyVarZzx = this.zzj.zzr().zzi();
                str = "Upload data called on the client side before use of service was decided";
            } else {
                if (!boolZzag.booleanValue()) {
                    if (this.zzn > 0) {
                        zzz();
                    } else {
                        zzw();
                        if (this.zzw != null) {
                            zzeyVarZzx = this.zzj.zzr().zzx();
                            str = "Uploading requested multiple times";
                        } else if (zzd().zzf()) {
                            long jCurrentTimeMillis = this.zzj.zzm().currentTimeMillis();
                            zza((String) null, jCurrentTimeMillis - zzx.zzk());
                            long jZza = this.zzj.zzc().zzc.zza();
                            if (jZza != 0) {
                                this.zzj.zzr().zzw().zza("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jCurrentTimeMillis - jZza)));
                            }
                            String strD_ = zze().d_();
                            if (TextUtils.isEmpty(strD_)) {
                                this.zzy = -1L;
                                String strZza = zze().zza(jCurrentTimeMillis - zzx.zzk());
                                if (!TextUtils.isEmpty(strZza) && (zzgVarZzb = zze().zzb(strZza)) != null) {
                                    zza(zzgVarZzb);
                                }
                            } else {
                                if (this.zzy == -1) {
                                    this.zzy = zze().zzaa();
                                }
                                List<Pair<zzbr.zzg, Long>> listZza = zze().zza(strD_, this.zzj.zzb().zzb(strD_, zzap.zzg), Math.max(0, this.zzj.zzb().zzb(strD_, zzap.zzh)));
                                if (!listZza.isEmpty()) {
                                    Iterator<Pair<zzbr.zzg, Long>> it = listZza.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            strZzad = null;
                                            break;
                                        }
                                        zzbr.zzg zzgVar = (zzbr.zzg) it.next().first;
                                        if (!TextUtils.isEmpty(zzgVar.zzad())) {
                                            strZzad = zzgVar.zzad();
                                            break;
                                        }
                                    }
                                    if (strZzad != null) {
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= listZza.size()) {
                                                break;
                                            }
                                            zzbr.zzg zzgVar2 = (zzbr.zzg) listZza.get(i2).first;
                                            if (!TextUtils.isEmpty(zzgVar2.zzad()) && !zzgVar2.zzad().equals(strZzad)) {
                                                listZza = listZza.subList(0, i2);
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                    zzbr.zzf.zza zzaVarZzb = zzbr.zzf.zzb();
                                    int size = listZza.size();
                                    ArrayList arrayList = new ArrayList(listZza.size());
                                    boolean z = this.zzj.zzb().zza(zzap.zza) && this.zzj.zzb().zzd(strD_);
                                    for (int i3 = 0; i3 < size; i3++) {
                                        zzbr.zzg.zza zzaVarZzbm = ((zzbr.zzg) listZza.get(i3).first).zzbm();
                                        arrayList.add((Long) listZza.get(i3).second);
                                        zzbr.zzg.zza zzaVarZza = zzaVarZzbm.zzg(this.zzj.zzb().zze()).zza(jCurrentTimeMillis);
                                        this.zzj.zzu();
                                        zzaVarZza.zzb(false);
                                        if (!z) {
                                            zzaVarZzbm.zzn();
                                        }
                                        if (this.zzj.zzb().zze(strD_, zzap.zzbf)) {
                                            zzaVarZzbm.zzl(zzh().zza(((zzbr.zzg) ((com.google.android.gms.internal.measurement.zzfd) zzaVarZzbm.zzu())).zzbi()));
                                        }
                                        zzaVarZzb.zza(zzaVarZzbm);
                                    }
                                    String strZza2 = this.zzj.zzr().zza(2) ? zzh().zza((zzbr.zzf) ((com.google.android.gms.internal.measurement.zzfd) zzaVarZzb.zzu())) : null;
                                    zzh();
                                    byte[] bArrZzbi = ((zzbr.zzf) ((com.google.android.gms.internal.measurement.zzfd) zzaVarZzb.zzu())).zzbi();
                                    String strZza3 = zzap.zzq.zza(null);
                                    try {
                                        URL url = new URL(strZza3);
                                        Preconditions.checkArgument(!arrayList.isEmpty());
                                        if (this.zzw != null) {
                                            this.zzj.zzr().zzf().zza("Set uploading progress before finishing the previous upload");
                                        } else {
                                            this.zzw = new ArrayList(arrayList);
                                        }
                                        this.zzj.zzc().zzd.zza(jCurrentTimeMillis);
                                        this.zzj.zzr().zzx().zza("Uploading data. app, uncompressed size, data", size > 0 ? zzaVarZzb.zza(0).zzx() : "?", Integer.valueOf(bArrZzbi.length), strZza2);
                                        this.zzs = true;
                                        zzfa zzfaVarZzd = zzd();
                                        zzkg zzkgVar = new zzkg(this, strD_);
                                        zzfaVarZzd.zzd();
                                        zzfaVarZzd.zzak();
                                        Preconditions.checkNotNull(url);
                                        Preconditions.checkNotNull(bArrZzbi);
                                        Preconditions.checkNotNull(zzkgVar);
                                        zzfaVarZzd.zzq().zzb(new zzfe(zzfaVarZzd, strD_, url, bArrZzbi, null, zzkgVar));
                                    } catch (MalformedURLException unused) {
                                        this.zzj.zzr().zzf().zza("Failed to parse upload URL. Not uploading. appId", zzew.zza(strD_), strZza3);
                                    }
                                }
                            }
                        } else {
                            this.zzj.zzr().zzx().zza("Network not connected, ignoring upload request");
                            zzz();
                        }
                    }
                }
                zzeyVarZzx = this.zzj.zzr().zzf();
                str = "Upload called in the client side when service should be used";
            }
            zzeyVarZzx.zza(str);
        } finally {
            this.zzt = false;
            zzaa();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Clock zzm() {
        return this.zzj.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final Context zzn() {
        return this.zzj.zzn();
    }

    final void zzo() {
        zzey zzeyVarZzf;
        Integer numValueOf;
        Integer numValueOf2;
        String str;
        zzw();
        zzk();
        if (!this.zzm) {
            this.zzm = true;
            zzw();
            zzk();
            if ((this.zzj.zzb().zza(zzap.zzbc) || zzac()) && zzab()) {
                int iZza = zza(this.zzv);
                int iZzaf = this.zzj.zzy().zzaf();
                zzw();
                if (iZza > iZzaf) {
                    zzeyVarZzf = this.zzj.zzr().zzf();
                    numValueOf = Integer.valueOf(iZza);
                    numValueOf2 = Integer.valueOf(iZzaf);
                    str = "Panic: can't downgrade version. Previous, current version";
                } else if (iZza < iZzaf) {
                    if (zza(iZzaf, this.zzv)) {
                        zzeyVarZzf = this.zzj.zzr().zzx();
                        numValueOf = Integer.valueOf(iZza);
                        numValueOf2 = Integer.valueOf(iZzaf);
                        str = "Storage version upgraded. Previous, current version";
                    } else {
                        zzeyVarZzf = this.zzj.zzr().zzf();
                        numValueOf = Integer.valueOf(iZza);
                        numValueOf2 = Integer.valueOf(iZzaf);
                        str = "Storage version upgrade failed. Previous, current version";
                    }
                }
                zzeyVarZzf.zza(str, numValueOf, numValueOf2);
            }
        }
        if (this.zzl || this.zzj.zzb().zza(zzap.zzbc)) {
            return;
        }
        this.zzj.zzr().zzv().zza("This instance being marked as an uploader");
        this.zzl = true;
        zzz();
    }

    final void zzp() {
        this.zzq++;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzft zzq() {
        return this.zzj.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzew zzr() {
        return this.zzj.zzr();
    }

    final zzga zzs() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public final zzw zzu() {
        return this.zzj.zzu();
    }
}
