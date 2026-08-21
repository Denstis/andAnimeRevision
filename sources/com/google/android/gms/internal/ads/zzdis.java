package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdis extends zzdqw<zzdis, zza> implements zzdsi {
    private static volatile zzdsp<zzdis> zzdv;
    private static final zzdis zzgwh;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;
    private zzdit zzgwg;

    public static final class zza extends zzdqw.zza<zzdis, zza> implements zzdsi {
        private zza() {
            super(zzdis.zzgwh);
        }

        /* synthetic */ zza(zzdir zzdirVar) {
            this();
        }

        public final zza zzb(zzdit zzditVar) {
            zzazn();
            ((zzdis) this.zzhkp).zza(zzditVar);
            return this;
        }

        public final zza zzbc(zzdpm zzdpmVar) {
            zzazn();
            ((zzdis) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzeg(int i2) {
            zzazn();
            ((zzdis) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdis zzdisVar = new zzdis();
        zzgwh = zzdisVar;
        zzdqw.zza((Class<zzdis>) zzdis.class, zzdisVar);
    }

    private zzdis() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdit zzditVar) {
        if (zzditVar == null) {
            throw new NullPointerException();
        }
        this.zzgwg = zzditVar;
    }

    public static zza zzasw() {
        return zzgwh.zzazt();
    }

    public static zzdis zzba(zzdpm zzdpmVar) {
        return (zzdis) zzdqw.zza(zzgwh, zzdpmVar);
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
        zzdir zzdirVar = null;
        switch (zzdir.zzdi[i2 - 1]) {
            case 1:
                return new zzdis();
            case 2:
                return new zza(zzdirVar);
            case 3:
                return zzdqw.zza(zzgwh, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtt", "zzgwg", "zzgub"});
            case 4:
                return zzgwh;
            case 5:
                zzdsp<zzdis> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdis.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgwh);
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

    public final zzdit zzasv() {
        zzdit zzditVar = this.zzgwg;
        return zzditVar == null ? zzdit.zzasz() : zzditVar;
    }
}
