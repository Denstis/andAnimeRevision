package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdji extends zzdqw<zzdji, zza> implements zzdsi {
    private static volatile zzdsp<zzdji> zzdv;
    private static final zzdji zzgxe;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;
    private zzdjm zzgxd;

    public static final class zza extends zzdqw.zza<zzdji, zza> implements zzdsi {
        private zza() {
            super(zzdji.zzgxe);
        }

        /* synthetic */ zza(zzdjh zzdjhVar) {
            this();
        }

        public final zza zzbm(zzdpm zzdpmVar) {
            zzazn();
            ((zzdji) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzc(zzdjm zzdjmVar) {
            zzazn();
            ((zzdji) this.zzhkp).zzb(zzdjmVar);
            return this;
        }

        public final zza zzem(int i2) {
            zzazn();
            ((zzdji) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdji zzdjiVar = new zzdji();
        zzgxe = zzdjiVar;
        zzdqw.zza((Class<zzdji>) zzdji.class, zzdjiVar);
    }

    private zzdji() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zza zzatl() {
        return zzgxe.zzazt();
    }

    public static zzdji zzatm() {
        return zzgxe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdjm zzdjmVar) {
        if (zzdjmVar == null) {
            throw new NullPointerException();
        }
        this.zzgxd = zzdjmVar;
    }

    public static zzdji zzbk(zzdpm zzdpmVar) {
        return (zzdji) zzdqw.zza(zzgxe, zzdpmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzw(zzdpm zzdpmVar) {
        if (zzdpmVar == null) {
            throw new NullPointerException();
        }
        this.zzgub = zzdpmVar;
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdjh zzdjhVar = null;
        switch (zzdjh.zzdi[i2 - 1]) {
            case 1:
                return new zzdji();
            case 2:
                return new zza(zzdjhVar);
            case 3:
                return zzdqw.zza(zzgxe, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtt", "zzgxd", "zzgub"});
            case 4:
                return zzgxe;
            case 5:
                zzdsp<zzdji> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdji.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgxe);
                            zzdv = zzcVar;
                        }
                        break;
                    }
                }
                return zzcVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzdpm zzaqj() {
        return this.zzgub;
    }

    public final zzdjm zzatk() {
        zzdjm zzdjmVar = this.zzgxd;
        return zzdjmVar == null ? zzdjm.zzats() : zzdjmVar;
    }
}
