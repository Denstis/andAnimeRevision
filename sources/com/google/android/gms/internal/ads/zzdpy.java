package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdpy {
    int zzhgj;
    int zzhgk;
    private int zzhgl;
    zzdqd zzhgm;
    private boolean zzhgn;

    private zzdpy() {
        this.zzhgk = 100;
        this.zzhgl = Integer.MAX_VALUE;
        this.zzhgn = false;
    }

    static zzdpy zzc(byte[] bArr, int i2, int i3, boolean z) {
        zzdqa zzdqaVar = new zzdqa(bArr, i2, i3, z);
        try {
            zzdqaVar.zzfr(i3);
            return zzdqaVar;
        } catch (zzdrg e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static long zzez(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static int zzft(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public abstract double readDouble();

    public abstract float readFloat();

    public abstract String readString();

    public abstract int zzaxu();

    public abstract long zzaxv();

    public abstract long zzaxw();

    public abstract int zzaxx();

    public abstract long zzaxy();

    public abstract int zzaxz();

    public abstract boolean zzaya();

    public abstract String zzayb();

    public abstract zzdpm zzayc();

    public abstract int zzayd();

    public abstract int zzaye();

    public abstract int zzayf();

    public abstract long zzayg();

    public abstract int zzayh();

    public abstract long zzayi();

    abstract long zzayj();

    public abstract boolean zzayk();

    public abstract int zzayl();

    public abstract void zzfp(int i2);

    public abstract boolean zzfq(int i2);

    public abstract int zzfr(int i2);

    public abstract void zzfs(int i2);
}
