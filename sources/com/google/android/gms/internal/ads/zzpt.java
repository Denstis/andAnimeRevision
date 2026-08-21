package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzpt {
    private int score;
    private final int zzboi;
    private final int zzboj;
    private final int zzbok;
    private final boolean zzbol;
    private final zzqi zzbom;
    private final zzqp zzbon;
    private final Object lock = new Object();
    private ArrayList<String> zzboo = new ArrayList<>();
    private ArrayList<String> zzbop = new ArrayList<>();
    private ArrayList<zzqg> zzboq = new ArrayList<>();
    private int zzbor = 0;
    private int zzbos = 0;
    private int zzbot = 0;
    private String zzbou = "";
    private String zzbov = "";
    private String zzbow = "";

    public zzpt(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        this.zzboi = i2;
        this.zzboj = i3;
        this.zzbok = i4;
        this.zzbol = z;
        this.zzbom = new zzqi(i5);
        this.zzbon = new zzqp(i6, i7, i8);
    }

    private static String zza(ArrayList<String> arrayList, int i2) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            String str = arrayList.get(i3);
            i3++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() < 100 ? string : string.substring(0, 100);
    }

    private final void zzc(String str, boolean z, float f2, float f3, float f4, float f5) {
        if (str == null || str.length() < this.zzbok) {
            return;
        }
        synchronized (this.lock) {
            this.zzboo.add(str);
            this.zzbor += str.length();
            if (z) {
                this.zzbop.add(str);
                this.zzboq.add(new zzqg(f2, f3, f4, f5, this.zzbop.size() - 1));
            }
        }
    }

    @VisibleForTesting
    private final int zzg(int i2, int i3) {
        return this.zzbol ? this.zzboj : (i2 * this.zzboi) + (i3 * this.zzboj);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzpt)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzpt) obj).zzbou;
        return str != null && str.equals(this.zzbou);
    }

    public final int getScore() {
        return this.score;
    }

    public final int hashCode() {
        return this.zzbou.hashCode();
    }

    public final String toString() {
        int i2 = this.zzbos;
        int i3 = this.score;
        int i4 = this.zzbor;
        String strZza = zza(this.zzboo, 100);
        String strZza2 = zza(this.zzbop, 100);
        String str = this.zzbou;
        String str2 = this.zzbov;
        String str3 = this.zzbow;
        StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 165 + String.valueOf(strZza2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i2);
        sb.append(" score:");
        sb.append(i3);
        sb.append(" total_length:");
        sb.append(i4);
        sb.append("\n text: ");
        sb.append(strZza);
        sb.append("\n viewableText");
        sb.append(strZza2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }

    public final void zza(String str, boolean z, float f2, float f3, float f4, float f5) {
        zzc(str, z, f2, f3, f4, f5);
        synchronized (this.lock) {
            if (this.zzbot < 0) {
                zzaxi.zzdv("ActivityContent: negative number of WebViews.");
            }
            zzls();
        }
    }

    public final void zzb(String str, boolean z, float f2, float f3, float f4, float f5) {
        zzc(str, z, f2, f3, f4, f5);
    }

    public final void zzbo(int i2) {
        this.zzbos = i2;
    }

    public final boolean zzlk() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzbot == 0;
        }
        return z;
    }

    public final String zzll() {
        return this.zzbou;
    }

    public final String zzlm() {
        return this.zzbov;
    }

    public final String zzln() {
        return this.zzbow;
    }

    public final void zzlo() {
        synchronized (this.lock) {
            this.score -= 100;
        }
    }

    public final void zzlp() {
        synchronized (this.lock) {
            this.zzbot--;
        }
    }

    public final void zzlq() {
        synchronized (this.lock) {
            this.zzbot++;
        }
    }

    public final void zzlr() {
        synchronized (this.lock) {
            int iZzg = zzg(this.zzbor, this.zzbos);
            if (iZzg > this.score) {
                this.score = iZzg;
            }
        }
    }

    public final void zzls() {
        synchronized (this.lock) {
            int iZzg = zzg(this.zzbor, this.zzbos);
            if (iZzg > this.score) {
                this.score = iZzg;
                if (!com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzuy()) {
                    this.zzbou = this.zzbom.zza(this.zzboo);
                    this.zzbov = this.zzbom.zza(this.zzbop);
                }
                if (!com.google.android.gms.ads.internal.zzq.zzkn().zzuh().zzva()) {
                    this.zzbow = this.zzbon.zza(this.zzbop, this.zzboq);
                }
            }
        }
    }

    @VisibleForTesting
    final int zzlt() {
        return this.zzbor;
    }
}
