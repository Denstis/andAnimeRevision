package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzij extends zze {
    private final zzjb zza;
    private zzeo zzb;
    private volatile Boolean zzc;
    private final zzaf zzd;
    private final zzjx zze;
    private final List<Runnable> zzf;
    private final zzaf zzg;

    protected zzij(zzga zzgaVar) {
        super(zzgaVar);
        this.zzf = new ArrayList();
        this.zze = new zzjx(zzgaVar.zzm());
        this.zza = new zzjb(this);
        this.zzd = new zzim(this, zzgaVar);
        this.zzg = new zzit(this, zzgaVar);
    }

    static /* synthetic */ zzeo zza(zzij zzijVar, zzeo zzeoVar) {
        zzijVar.zzb = null;
        return null;
    }

    private final zzm zza(boolean z) {
        zzu();
        return zzg().zza(z ? zzr().zzy() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(ComponentName componentName) {
        zzd();
        if (this.zzb != null) {
            this.zzb = null;
            zzr().zzx().zza("Disconnected from device MeasurementService", componentName);
            zzd();
            zzaf();
        }
    }

    private final void zza(Runnable runnable) {
        zzd();
        if (zzab()) {
            runnable.run();
        } else {
            if (this.zzf.size() >= 1000) {
                zzr().zzf().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzf.add(runnable);
            this.zzg.zza(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
            zzaf();
        }
    }

    private final boolean zzai() {
        zzu();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaj() {
        zzd();
        this.zze.zza();
        this.zzd.zza(zzap.zzag.zza(null).longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzak() {
        zzd();
        if (zzab()) {
            zzr().zzx().zza("Inactivity, disconnecting from the service");
            zzah();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzal() {
        zzd();
        zzr().zzx().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator<Runnable> it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e2) {
                zzr().zzf().zza("Task exception while flushing queue", e2);
            }
        }
        this.zzf.clear();
        this.zzg.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(com.google.android.gms.internal.measurement.zzn zznVar) {
        zzd();
        zzw();
        zza(new zzip(this, zza(false), zznVar));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzn zznVar, zzan zzanVar, String str) {
        zzd();
        zzw();
        if (zzp().zza(12451000) == 0) {
            zza(new zziu(this, zzanVar, str, zznVar));
        } else {
            zzr().zzi().zza("Not bundling data. Service unavailable or out of date");
            zzp().zza(zznVar, new byte[0]);
        }
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzn zznVar, String str, String str2) {
        zzd();
        zzw();
        zza(new zzja(this, str, str2, zza(false), zznVar));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzn zznVar, String str, String str2, boolean z) {
        zzd();
        zzw();
        zza(new zzjc(this, str, str2, z, zza(false), zznVar));
    }

    protected final void zza(zzan zzanVar, String str) {
        Preconditions.checkNotNull(zzanVar);
        zzd();
        zzw();
        boolean zZzai = zzai();
        zza(new zziv(this, zZzai, zZzai && zzj().zza(zzanVar), zzanVar, zza(true), str));
    }

    @VisibleForTesting
    protected final void zza(zzeo zzeoVar) {
        zzd();
        Preconditions.checkNotNull(zzeoVar);
        this.zzb = zzeoVar;
        zzaj();
        zzal();
    }

    @VisibleForTesting
    final void zza(zzeo zzeoVar, AbstractSafeParcelable abstractSafeParcelable, zzm zzmVar) {
        int size;
        zzey zzeyVarZzf;
        String str;
        List<AbstractSafeParcelable> listZza;
        zzd();
        zzb();
        zzw();
        boolean zZzai = zzai();
        int i2 = 0;
        int i3 = 100;
        while (i2 < 1001 && i3 == 100) {
            ArrayList arrayList = new ArrayList();
            if (!zZzai || (listZza = zzj().zza(100)) == null) {
                size = 0;
            } else {
                arrayList.addAll(listZza);
                size = listZza.size();
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj = arrayList.get(i4);
                i4++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzan) {
                    try {
                        zzeoVar.zza((zzan) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e2) {
                        e = e2;
                        zzeyVarZzf = zzr().zzf();
                        str = "Failed to send event to the service";
                        zzeyVarZzf.zza(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        zzeoVar.zza((zzkl) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e3) {
                        e = e3;
                        zzeyVarZzf = zzr().zzf();
                        str = "Failed to send attribute to the service";
                        zzeyVarZzf.zza(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzv) {
                    try {
                        zzeoVar.zza((zzv) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e4) {
                        e = e4;
                        zzeyVarZzf = zzr().zzf();
                        str = "Failed to send conditional property to the service";
                        zzeyVarZzf.zza(str, e);
                    }
                } else {
                    zzr().zzf().zza("Discarding data. Unrecognized parcel type.");
                }
            }
            i2++;
            i3 = size;
        }
    }

    protected final void zza(zzif zzifVar) {
        zzd();
        zzw();
        zza(new zzir(this, zzifVar));
    }

    protected final void zza(zzkl zzklVar) {
        zzd();
        zzw();
        zza(new zzil(this, zzai() && zzj().zza(zzklVar), zzklVar, zza(true)));
    }

    protected final void zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        zzw();
        zzu();
        zza(new zziy(this, true, zzj().zza(zzvVar), new zzv(zzvVar), zza(true), zzvVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzd();
        zzw();
        zza(new zziq(this, atomicReference, zza(false)));
    }

    protected final void zza(AtomicReference<List<zzv>> atomicReference, String str, String str2, String str3) {
        zzd();
        zzw();
        zza(new zzix(this, atomicReference, str, str2, str3, zza(false)));
    }

    protected final void zza(AtomicReference<List<zzkl>> atomicReference, String str, String str2, String str3, boolean z) {
        zzd();
        zzw();
        zza(new zziz(this, atomicReference, str, str2, str3, z, zza(false)));
    }

    protected final void zza(AtomicReference<List<zzkl>> atomicReference, boolean z) {
        zzd();
        zzw();
        zza(new zzio(this, atomicReference, zza(false), z));
    }

    public final boolean zzab() {
        zzd();
        zzw();
        return this.zzb != null;
    }

    protected final void zzac() {
        zzd();
        zzw();
        zza(new zziw(this, zza(true)));
    }

    protected final void zzad() {
        zzd();
        zzb();
        zzw();
        zzm zzmVarZza = zza(false);
        if (zzai()) {
            zzj().zzab();
        }
        zza(new zzin(this, zzmVarZza));
    }

    protected final void zzae() {
        zzd();
        zzw();
        zzm zzmVarZza = zza(true);
        boolean zZza = zzt().zza(zzap.zzbv);
        if (zZza) {
            zzj().zzac();
        }
        zza(new zzis(this, zzmVarZza, zZza));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzaf() {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzij.zzaf():void");
    }

    final Boolean zzag() {
        return this.zzc;
    }

    public final void zzah() {
        zzd();
        zzw();
        this.zza.zza();
        try {
            ConnectionTracker.getInstance().unbindService(zzn(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }
}
