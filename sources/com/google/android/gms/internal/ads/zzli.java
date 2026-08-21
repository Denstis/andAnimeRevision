package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzli implements zziy, zzls, zzme, zzno<zzll> {
    private final Uri uri;
    private final Handler zzacs;
    private boolean zzadu;
    private boolean zzaei;
    private long zzagh;
    private final zzne zzamo;
    private final int zzazt;
    private final zzlp zzazu;
    private final zzlt zzazv;
    private final zznc zzazw;
    private final String zzazx;
    private final long zzazy;
    private final zzlo zzbaa;
    private zzlr zzbaf;
    private zzjb zzbag;
    private boolean zzbah;
    private boolean zzbai;
    private boolean zzbaj;
    private int zzbak;
    private zzmk zzbal;
    private boolean[] zzbam;
    private boolean[] zzban;
    private boolean zzbao;
    private long zzbap;
    private int zzbar;
    private boolean zzbas;
    private final zznl zzazz = new zznl("Loader:ExtractorMediaPeriod");
    private final zznt zzbab = new zznt();
    private final Runnable zzbac = new zzlh(this);
    private final Runnable zzbad = new zzlk(this);
    private final Handler handler = new Handler();
    private long zzbaq = C.TIME_UNSET;
    private final SparseArray<zzmc> zzbae = new SparseArray<>();
    private long zzcb = -1;

    public zzli(Uri uri, zzne zzneVar, zziw[] zziwVarArr, int i2, Handler handler, zzlp zzlpVar, zzlt zzltVar, zznc zzncVar, String str, int i3) {
        this.uri = uri;
        this.zzamo = zzneVar;
        this.zzazt = i2;
        this.zzacs = handler;
        this.zzazu = zzlpVar;
        this.zzazv = zzltVar;
        this.zzazw = zzncVar;
        this.zzazx = str;
        this.zzazy = i3;
        this.zzbaa = new zzlo(zziwVarArr, this);
    }

    private final void startLoading() {
        zzjb zzjbVar;
        zzll zzllVar = new zzll(this, this.uri, this.zzamo, this.zzbaa, this.zzbab);
        if (this.zzadu) {
            zznr.checkState(zzhi());
            long j2 = this.zzagh;
            if (j2 != C.TIME_UNSET && this.zzbaq >= j2) {
                this.zzbas = true;
                this.zzbaq = C.TIME_UNSET;
                return;
            } else {
                zzllVar.zze(this.zzbag.zzdt(this.zzbaq), this.zzbaq);
                this.zzbaq = C.TIME_UNSET;
            }
        }
        this.zzbar = zzhg();
        int i2 = this.zzazt;
        if (i2 == -1) {
            i2 = (this.zzadu && this.zzcb == -1 && ((zzjbVar = this.zzbag) == null || zzjbVar.getDurationUs() == C.TIME_UNSET)) ? 6 : 3;
        }
        this.zzazz.zza(zzllVar, this, i2);
    }

    private final void zza(zzll zzllVar) {
        if (this.zzcb == -1) {
            this.zzcb = zzllVar.zzcb;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzhf() {
        if (this.zzaei || this.zzadu || this.zzbag == null || !this.zzbah) {
            return;
        }
        int size = this.zzbae.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.zzbae.valueAt(i2).zzhr() == null) {
                return;
            }
        }
        this.zzbab.zzig();
        zzmh[] zzmhVarArr = new zzmh[size];
        this.zzban = new boolean[size];
        this.zzbam = new boolean[size];
        this.zzagh = this.zzbag.getDurationUs();
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= size) {
                this.zzbal = new zzmk(zzmhVarArr);
                this.zzadu = true;
                this.zzazv.zzb(new zzmi(this.zzagh, this.zzbag.zzgc()), null);
                this.zzbaf.zza((zzls) this);
                return;
            }
            zzgo zzgoVarZzhr = this.zzbae.valueAt(i3).zzhr();
            zzmhVarArr[i3] = new zzmh(zzgoVarZzhr);
            String str = zzgoVarZzhr.zzafc;
            if (!zzny.zzbd(str) && !zzny.zzbc(str)) {
                z = false;
            }
            this.zzban[i3] = z;
            this.zzbao = z | this.zzbao;
            i3++;
        }
    }

    private final int zzhg() {
        int size = this.zzbae.size();
        int iZzhp = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzhp += this.zzbae.valueAt(i2).zzhp();
        }
        return iZzhp;
    }

    private final long zzhh() {
        int size = this.zzbae.size();
        long jMax = Long.MIN_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, this.zzbae.valueAt(i2).zzhh());
        }
        return jMax;
    }

    private final boolean zzhi() {
        return this.zzbaq != C.TIME_UNSET;
    }

    public final void release() {
        this.zzazz.zza(new zzlj(this, this.zzbaa));
        this.handler.removeCallbacksAndMessages(null);
        this.zzaei = true;
    }

    final int zza(int i2, zzgq zzgqVar, zzik zzikVar, boolean z) {
        if (this.zzbaj || zzhi()) {
            return -3;
        }
        return this.zzbae.valueAt(i2).zza(zzgqVar, zzikVar, z, this.zzbas, this.zzbap);
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final /* synthetic */ int zza(zznq zznqVar, long j2, long j3, IOException iOException) {
        zzjb zzjbVar;
        zzll zzllVar = (zzll) zznqVar;
        zza(zzllVar);
        Handler handler = this.zzacs;
        if (handler != null && this.zzazu != null) {
            handler.post(new zzlm(this, iOException));
        }
        if (iOException instanceof zzmj) {
            return 3;
        }
        boolean z = zzhg() > this.zzbar;
        if (this.zzcb == -1 && ((zzjbVar = this.zzbag) == null || zzjbVar.getDurationUs() == C.TIME_UNSET)) {
            this.zzbap = 0L;
            this.zzbaj = this.zzadu;
            int size = this.zzbae.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.zzbae.valueAt(i2).zzj(!this.zzadu || this.zzbam[i2]);
            }
            zzllVar.zze(0L, 0L);
        }
        this.zzbar = zzhg();
        return z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zza(zzmt[] zzmtVarArr, boolean[] zArr, zzmd[] zzmdVarArr, boolean[] zArr2, long j2) {
        zznr.checkState(this.zzadu);
        for (int i2 = 0; i2 < zzmtVarArr.length; i2++) {
            if (zzmdVarArr[i2] != null && (zzmtVarArr[i2] == null || !zArr[i2])) {
                int i3 = ((zzln) zzmdVarArr[i2]).track;
                zznr.checkState(this.zzbam[i3]);
                this.zzbak--;
                this.zzbam[i3] = false;
                this.zzbae.valueAt(i3).disable();
                zzmdVarArr[i2] = null;
            }
        }
        boolean z = false;
        for (int i4 = 0; i4 < zzmtVarArr.length; i4++) {
            if (zzmdVarArr[i4] == null && zzmtVarArr[i4] != null) {
                zzmt zzmtVar = zzmtVarArr[i4];
                zznr.checkState(zzmtVar.length() == 1);
                zznr.checkState(zzmtVar.zzaw(0) == 0);
                int iZza = this.zzbal.zza(zzmtVar.zzhx());
                zznr.checkState(!this.zzbam[iZza]);
                this.zzbak++;
                this.zzbam[iZza] = true;
                zzmdVarArr[i4] = new zzln(this, iZza);
                zArr2[i4] = true;
                z = true;
            }
        }
        if (!this.zzbai) {
            int size = this.zzbae.size();
            for (int i5 = 0; i5 < size; i5++) {
                if (!this.zzbam[i5]) {
                    this.zzbae.valueAt(i5).disable();
                }
            }
        }
        if (this.zzbak == 0) {
            this.zzbaj = false;
            if (this.zzazz.isLoading()) {
                this.zzazz.zzie();
            }
        } else if (!this.zzbai ? j2 != 0 : z) {
            j2 = zzea(j2);
            for (int i6 = 0; i6 < zzmdVarArr.length; i6++) {
                if (zzmdVarArr[i6] != null) {
                    zArr2[i6] = true;
                }
            }
        }
        this.zzbai = true;
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zza(zzjb zzjbVar) {
        this.zzbag = zzjbVar;
        this.handler.post(this.zzbac);
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zza(zzlr zzlrVar, long j2) {
        this.zzbaf = zzlrVar;
        this.zzbab.open();
        startLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final /* synthetic */ void zza(zznq zznqVar, long j2, long j3) {
        zza((zzll) zznqVar);
        this.zzbas = true;
        if (this.zzagh == C.TIME_UNSET) {
            long jZzhh = zzhh();
            this.zzagh = jZzhh == Long.MIN_VALUE ? 0L : jZzhh + 10000;
            this.zzazv.zzb(new zzmi(this.zzagh, this.zzbag.zzgc()), null);
        }
        this.zzbaf.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final /* synthetic */ void zza(zznq zznqVar, long j2, long j3, boolean z) {
        zza((zzll) zznqVar);
        if (z || this.zzbak <= 0) {
            return;
        }
        int size = this.zzbae.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.zzbae.valueAt(i2).zzj(this.zzbam[i2]);
        }
        this.zzbaf.zza(this);
    }

    final boolean zzas(int i2) {
        if (this.zzbas) {
            return true;
        }
        return !zzhi() && this.zzbae.valueAt(i2).zzhq();
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final zzjd zzb(int i2, int i3) {
        zzmc zzmcVar = this.zzbae.get(i2);
        if (zzmcVar != null) {
            return zzmcVar;
        }
        zzmc zzmcVar2 = new zzmc(this.zzazw);
        zzmcVar2.zza(this);
        this.zzbae.put(i2, zzmcVar2);
        return zzmcVar2;
    }

    final void zzd(int i2, long j2) {
        zzmc zzmcVarValueAt = this.zzbae.valueAt(i2);
        if (!this.zzbas || j2 <= zzmcVarValueAt.zzhh()) {
            zzmcVarValueAt.zze(j2, true);
        } else {
            zzmcVarValueAt.zzhu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls, com.google.android.gms.internal.ads.zzmg
    public final boolean zzdy(long j2) {
        if (this.zzbas) {
            return false;
        }
        if (this.zzadu && this.zzbak == 0) {
            return false;
        }
        boolean zOpen = this.zzbab.open();
        if (this.zzazz.isLoading()) {
            return zOpen;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zzdz(long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzea(long j2) {
        if (!this.zzbag.zzgc()) {
            j2 = 0;
        }
        this.zzbap = j2;
        int size = this.zzbae.size();
        boolean zZze = !zzhi();
        for (int i2 = 0; zZze && i2 < size; i2++) {
            if (this.zzbam[i2]) {
                zZze = this.zzbae.valueAt(i2).zze(j2, false);
            }
        }
        if (!zZze) {
            this.zzbaq = j2;
            this.zzbas = false;
            if (this.zzazz.isLoading()) {
                this.zzazz.zzie();
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    this.zzbae.valueAt(i3).zzj(this.zzbam[i3]);
                }
            }
        }
        this.zzbaj = false;
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzf(zzgo zzgoVar) {
        this.handler.post(this.zzbac);
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zzge() {
        this.zzbah = true;
        this.handler.post(this.zzbac);
    }

    @Override // com.google.android.gms.internal.ads.zzls, com.google.android.gms.internal.ads.zzmg
    public final long zzgz() {
        if (this.zzbak == 0) {
            return Long.MIN_VALUE;
        }
        return zzhd();
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zzha() throws IOException {
        this.zzazz.zzbb(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final zzmk zzhb() {
        return this.zzbal;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzhc() {
        if (!this.zzbaj) {
            return C.TIME_UNSET;
        }
        this.zzbaj = false;
        return this.zzbap;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzhd() {
        long jZzhh;
        if (this.zzbas) {
            return Long.MIN_VALUE;
        }
        if (zzhi()) {
            return this.zzbaq;
        }
        if (this.zzbao) {
            jZzhh = Long.MAX_VALUE;
            int size = this.zzbae.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.zzban[i2]) {
                    jZzhh = Math.min(jZzhh, this.zzbae.valueAt(i2).zzhh());
                }
            }
        } else {
            jZzhh = zzhh();
        }
        return jZzhh == Long.MIN_VALUE ? this.zzbap : jZzhh;
    }

    final void zzhe() {
        this.zzazz.zzbb(Integer.MIN_VALUE);
    }
}
