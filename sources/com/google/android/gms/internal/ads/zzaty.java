package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzaty {

    @VisibleForTesting
    private final String zzdro;
    private final zzaui zzdrp;

    @VisibleForTesting
    private long zzdrj = -1;

    @VisibleForTesting
    private long zzdrk = -1;

    @VisibleForTesting
    private int zzdrl = -1;

    @VisibleForTesting
    int zzdrm = -1;

    @VisibleForTesting
    private long zzdrn = 0;
    private final Object lock = new Object();

    @VisibleForTesting
    private int zzdrq = 0;

    @VisibleForTesting
    private int zzdrr = 0;

    public zzaty(String str, zzaui zzauiVar) {
        this.zzdro = str;
        this.zzdrp = zzauiVar;
    }

    private static boolean zzam(Context context) {
        Context contextZzaa = zzapv.zzaa(context);
        int identifier = contextZzaa.getResources().getIdentifier("Theme.Translucent", TtmlNode.TAG_STYLE, "android");
        if (identifier == 0) {
            zzaxi.zzet("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == contextZzaa.getPackageManager().getActivityInfo(new ComponentName(contextZzaa.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzaxi.zzet("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            zzaxi.zzeu("Fail to fetch AdActivity theme");
            zzaxi.zzet("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public final void zza(zztx zztxVar, long j2) {
        synchronized (this.lock) {
            long jZzvf = this.zzdrp.zzvf();
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
            if (this.zzdrk == -1) {
                if (jCurrentTimeMillis - jZzvf > ((Long) zzuv.zzon().zzd(zzza.zzcko)).longValue()) {
                    this.zzdrm = -1;
                } else {
                    this.zzdrm = this.zzdrp.zzvg();
                }
                this.zzdrk = j2;
                j2 = this.zzdrk;
            }
            this.zzdrj = j2;
            if (zztxVar == null || zztxVar.extras == null || zztxVar.extras.getInt("gw", 2) != 1) {
                this.zzdrl++;
                this.zzdrm++;
                if (this.zzdrm == 0) {
                    this.zzdrn = 0L;
                    this.zzdrp.zzeu(jCurrentTimeMillis);
                } else {
                    this.zzdrn = jCurrentTimeMillis - this.zzdrp.zzvh();
                }
            }
        }
    }

    public final Bundle zzo(Context context, String str) {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzdro);
            bundle.putLong("basets", this.zzdrk);
            bundle.putLong("currts", this.zzdrj);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzdrl);
            bundle.putInt("preqs_in_session", this.zzdrm);
            bundle.putLong("time_in_session", this.zzdrn);
            bundle.putInt("pclick", this.zzdrq);
            bundle.putInt("pimp", this.zzdrr);
            bundle.putBoolean("support_transparent_background", zzam(context));
        }
        return bundle;
    }

    public final void zztx() {
        synchronized (this.lock) {
            this.zzdrr++;
        }
    }

    public final void zzty() {
        synchronized (this.lock) {
            this.zzdrq++;
        }
    }
}
