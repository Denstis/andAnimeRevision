package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdkf extends zzdqw<zzdkf, zza> implements zzdsi {
    private static volatile zzdsp<zzdkf> zzdv;
    private static final zzdkf zzgyw;
    private int zzgtt;
    private zzdkg zzgyv;

    public static final class zza extends zzdqw.zza<zzdkf, zza> implements zzdsi {
        private zza() {
            super(zzdkf.zzgyw);
        }

        /* synthetic */ zza(zzdke zzdkeVar) {
            this();
        }

        public final zza zzb(zzdkg zzdkgVar) {
            zzazn();
            ((zzdkf) this.zzhkp).zza(zzdkgVar);
            return this;
        }

        public final zza zzey(int i2) {
            zzazn();
            ((zzdkf) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdkf zzdkfVar = new zzdkf();
        zzgyw = zzdkfVar;
        zzdqw.zza((Class<zzdkf>) zzdkf.class, zzdkfVar);
    }

    private zzdkf() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdkg zzdkgVar) {
        if (zzdkgVar == null) {
            throw new NullPointerException();
        }
        this.zzgyv = zzdkgVar;
    }

    public static zza zzavd() {
        return zzgyw.zzazt();
    }

    public static zzdkf zzbr(zzdpm zzdpmVar) {
        return (zzdkf) zzdqw.zza(zzgyw, zzdpmVar);
    }

    public final int getVersion() {
        return this.zzgtt;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    protected final Object zza(int i2, Object obj, Object obj2) {
        zzdke zzdkeVar = null;
        switch (zzdke.zzdi[i2 - 1]) {
            case 1:
                return new zzdkf();
            case 2:
                return new zza(zzdkeVar);
            case 3:
                return zzdqw.zza(zzgyw, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgtt", "zzgyv"});
            case 4:
                return zzgyw;
            case 5:
                zzdsp<zzdkf> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdkf.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgyw);
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

    public final zzdkg zzavc() {
        zzdkg zzdkgVar = this.zzgyv;
        return zzdkgVar == null ? zzdkg.zzavh() : zzdkgVar;
    }
}
