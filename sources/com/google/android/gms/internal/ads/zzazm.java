package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zzazm {
    private final zzaxl zzdio;
    private final String zzdje;
    private final zzaab zzdyc;
    private boolean zzdyg;
    private final zzzz zzeat;
    private final long[] zzeav;
    private final String[] zzeaw;
    private zzayu zzebb;
    private boolean zzebc;
    private boolean zzebd;
    private final Context zzlk;
    private final zzavu zzeau = new zzavv().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzwc();
    private boolean zzeax = false;
    private boolean zzeay = false;
    private boolean zzeaz = false;
    private boolean zzeba = false;
    private long zzebe = -1;

    public zzazm(Context context, zzaxl zzaxlVar, String str, zzaab zzaabVar, zzzz zzzzVar) {
        this.zzlk = context;
        this.zzdio = zzaxlVar;
        this.zzdje = str;
        this.zzdyc = zzaabVar;
        this.zzeat = zzzzVar;
        String str2 = (String) zzuv.zzon().zzd(zzza.zzchn);
        if (str2 == null) {
            this.zzeaw = new String[0];
            this.zzeav = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        this.zzeaw = new String[strArrSplit.length];
        this.zzeav = new long[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                this.zzeav[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException e2) {
                zzaxi.zzd("Unable to parse frame hash target time number.", e2);
                this.zzeav[i2] = -1;
            }
        }
    }

    public final void onStop() {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzchm)).booleanValue() || this.zzebc) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.zzdje);
        bundle.putString("player", this.zzebb.zzwq());
        for (zzavw zzavwVar : this.zzeau.zzwb()) {
            String strValueOf = String.valueOf(zzavwVar.name);
            bundle.putString(strValueOf.length() != 0 ? "fps_c_".concat(strValueOf) : new String("fps_c_"), Integer.toString(zzavwVar.count));
            String strValueOf2 = String.valueOf(zzavwVar.name);
            bundle.putString(strValueOf2.length() != 0 ? "fps_p_".concat(strValueOf2) : new String("fps_p_"), Double.toString(zzavwVar.zzduh));
        }
        int i2 = 0;
        while (true) {
            long[] jArr = this.zzeav;
            if (i2 >= jArr.length) {
                com.google.android.gms.ads.internal.zzq.zzkj().zza(this.zzlk, this.zzdio.zzblz, "gmob-apps", bundle, true);
                this.zzebc = true;
                return;
            }
            String str = this.zzeaw[i2];
            if (str != null) {
                String strValueOf3 = String.valueOf(Long.valueOf(jArr[i2]));
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf3).length() + 3);
                sb.append("fh_");
                sb.append(strValueOf3);
                bundle.putString(sb.toString(), str);
            }
            i2++;
        }
    }

    public final void zzb(zzayu zzayuVar) {
        zzzs.zza(this.zzdyc, this.zzeat, "vpc2");
        this.zzeax = true;
        zzaab zzaabVar = this.zzdyc;
        if (zzaabVar != null) {
            zzaabVar.zzj("vpn", zzayuVar.zzwq());
        }
        this.zzebb = zzayuVar;
    }

    public final void zzc(zzayu zzayuVar) {
        if (this.zzeaz && !this.zzeba) {
            if (zzaug.zzuu() && !this.zzeba) {
                zzaug.zzdy("VideoMetricsMixin first frame");
            }
            zzzs.zza(this.zzdyc, this.zzeat, "vff2");
            this.zzeba = true;
        }
        long jNanoTime = com.google.android.gms.ads.internal.zzq.zzkq().nanoTime();
        if (this.zzdyg && this.zzebd && this.zzebe != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L);
            double d2 = jNanoTime - this.zzebe;
            Double.isNaN(nanos);
            Double.isNaN(d2);
            this.zzeau.zza(nanos / d2);
        }
        this.zzebd = this.zzdyg;
        this.zzebe = jNanoTime;
        long jLongValue = ((Long) zzuv.zzon().zzd(zzza.zzcho)).longValue();
        long currentPosition = zzayuVar.getCurrentPosition();
        int i2 = 0;
        while (true) {
            String[] strArr = this.zzeaw;
            if (i2 >= strArr.length) {
                return;
            }
            if (strArr[i2] == null && jLongValue > Math.abs(currentPosition - this.zzeav[i2])) {
                String[] strArr2 = this.zzeaw;
                int i3 = 8;
                Bitmap bitmap = zzayuVar.getBitmap(8, 8);
                long j2 = 63;
                int i4 = 0;
                long j3 = 0;
                while (i4 < i3) {
                    long j4 = j2;
                    int i5 = 0;
                    while (i5 < i3) {
                        int pixel = bitmap.getPixel(i5, i4);
                        j3 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j4);
                        i5++;
                        j4--;
                        i3 = 8;
                    }
                    i4++;
                    j2 = j4;
                    i3 = 8;
                }
                strArr2[i2] = String.format("%016X", Long.valueOf(j3));
                return;
            }
            i2++;
        }
    }

    public final void zzel() {
        if (!this.zzeax || this.zzeay) {
            return;
        }
        zzzs.zza(this.zzdyc, this.zzeat, "vfr2");
        this.zzeay = true;
    }

    public final void zzxw() {
        this.zzdyg = true;
        if (!this.zzeay || this.zzeaz) {
            return;
        }
        zzzs.zza(this.zzdyc, this.zzeat, "vfp2");
        this.zzeaz = true;
    }

    public final void zzxx() {
        this.zzdyg = false;
    }
}
