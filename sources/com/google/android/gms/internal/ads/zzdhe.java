package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhe extends zzdqw<zzdhe, zza> implements zzdsi {
    private static volatile zzdsp<zzdhe> zzdv;
    private static final zzdhe zzguq;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;
    private zzdhi zzgup;

    public static final class zza extends zzdqw.zza<zzdhe, zza> implements zzdsi {
        private zza() {
            super(zzdhe.zzguq);
        }

        /* synthetic */ zza(zzdhd zzdhdVar) {
            this();
        }

        public final zza zzaf(zzdpm zzdpmVar) {
            zzazn();
            ((zzdhe) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzb(zzdhi zzdhiVar) {
            zzazn();
            ((zzdhe) this.zzhkp).zza(zzdhiVar);
            return this;
        }

        public final zza zzdx(int i2) {
            zzazn();
            ((zzdhe) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdhe zzdheVar = new zzdhe();
        zzguq = zzdheVar;
        zzdqw.zza((Class<zzdhe>) zzdhe.class, zzdheVar);
    }

    private zzdhe() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdhi zzdhiVar) {
        if (zzdhiVar == null) {
            throw new NullPointerException();
        }
        this.zzgup = zzdhiVar;
    }

    public static zzdhe zzad(zzdpm zzdpmVar) {
        return (zzdhe) zzdqw.zza(zzguq, zzdpmVar);
    }

    public static zza zzard() {
        return zzguq.zzazt();
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
        zzdhd zzdhdVar = null;
        switch (zzdhd.zzdi[i2 - 1]) {
            case 1:
                return new zzdhe();
            case 2:
                return new zza(zzdhdVar);
            case 3:
                return zzdqw.zza(zzguq, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgtt", "zzgup", "zzgub"});
            case 4:
                return zzguq;
            case 5:
                zzdsp<zzdhe> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhe.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzguq);
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

    public final zzdhi zzarc() {
        zzdhi zzdhiVar = this.zzgup;
        return zzdhiVar == null ? zzdhi.zzarg() : zzdhiVar;
    }
}
