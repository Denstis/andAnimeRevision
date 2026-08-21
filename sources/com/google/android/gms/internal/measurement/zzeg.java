package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzeg {
    int zza;
    int zzb;
    zzel zzc;
    private int zzd;
    private boolean zze;

    private zzeg() {
        this.zzb = 100;
        this.zzd = Integer.MAX_VALUE;
        this.zze = false;
    }

    public static long zza(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    static zzeg zza(byte[] bArr, int i2, int i3, boolean z) {
        zzei zzeiVar = new zzei(bArr, 0, i3, false);
        try {
            zzeiVar.zzc(i3);
            return zzeiVar;
        } catch (zzfo e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static int zze(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public abstract int zza();

    public abstract void zza(int i2);

    public abstract double zzb();

    public abstract boolean zzb(int i2);

    public abstract float zzc();

    public abstract int zzc(int i2);

    public abstract long zzd();

    public abstract void zzd(int i2);

    public abstract long zze();

    public abstract int zzf();

    public abstract long zzg();

    public abstract int zzh();

    public abstract boolean zzi();

    public abstract String zzj();

    public abstract String zzk();

    public abstract zzdu zzl();

    public abstract int zzm();

    public abstract int zzn();

    public abstract int zzo();

    public abstract long zzp();

    public abstract int zzq();

    public abstract long zzr();

    abstract long zzs();

    public abstract boolean zzt();

    public abstract int zzu();
}
