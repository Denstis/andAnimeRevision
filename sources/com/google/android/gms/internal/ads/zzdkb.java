package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdkb extends zzdqw<zzdkb, zza> implements zzdsi {
    private static volatile zzdsp<zzdkb> zzdv;
    private static final zzdkb zzgys;
    private int zzgtt;
    private zzdkc zzgyr;

    public static final class zza extends zzdqw.zza<zzdkb, zza> implements zzdsi {
        private zza() {
            super(zzdkb.zzgys);
        }

        /* synthetic */ zza(zzdka zzdkaVar) {
            this();
        }

        public final zza zzb(zzdkc zzdkcVar) {
            zzazn();
            ((zzdkb) this.zzhkp).zza(zzdkcVar);
            return this;
        }

        public final zza zzex(int i2) {
            zzazn();
            ((zzdkb) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdkb zzdkbVar = new zzdkb();
        zzgys = zzdkbVar;
        zzdqw.zza((Class<zzdkb>) zzdkb.class, zzdkbVar);
    }

    private zzdkb() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdkc zzdkcVar) {
        if (zzdkcVar == null) {
            throw new NullPointerException();
        }
        this.zzgyr = zzdkcVar;
    }

    public static zza zzaux() {
        return zzgys.zzazt();
    }

    public static zzdkb zzbp(zzdpm zzdpmVar) {
        return (zzdkb) zzdqw.zza(zzgys, zzdpmVar);
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdka zzdkaVar = null;
        switch (zzdka.zzdi[i2 - 1]) {
            case 1:
                return new zzdkb();
            case 2:
                return new zza(zzdkaVar);
            case 3:
                return zzdqw.zza(zzgys, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgtt", "zzgyr"});
            case 4:
                return zzgys;
            case 5:
                zzdsp<zzdkb> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdkb.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgys);
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

    public final zzdkc zzauw() {
        zzdkc zzdkcVar = this.zzgyr;
        return zzdkcVar == null ? zzdkc.zzava() : zzdkcVar;
    }
}
