package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdlc extends zzdqw<zzdlc, zza> implements zzdsi {
    private static volatile zzdsp<zzdlc> zzdv;
    private static final zzdlc zzhaj;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;

    public static final class zza extends zzdqw.zza<zzdlc, zza> implements zzdsi {
        private zza() {
            super(zzdlc.zzhaj);
        }

        /* synthetic */ zza(zzdld zzdldVar) {
            this();
        }

        public final zza zzcy(zzdpm zzdpmVar) {
            zzazn();
            ((zzdlc) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzfe(int i2) {
            zzazn();
            ((zzdlc) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdlc zzdlcVar = new zzdlc();
        zzhaj = zzdlcVar;
        zzdqw.zza((Class<zzdlc>) zzdlc.class, zzdlcVar);
    }

    private zzdlc() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zza zzaws() {
        return zzhaj.zzazt();
    }

    public static zzdlc zzcv(zzdpm zzdpmVar) {
        return (zzdlc) zzdqw.zza(zzhaj, zzdpmVar);
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
        zzdld zzdldVar = null;
        switch (zzdld.zzdi[i2 - 1]) {
            case 1:
                return new zzdlc();
            case 2:
                return new zza(zzdldVar);
            case 3:
                return zzdqw.zza(zzhaj, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgtt", "zzgub"});
            case 4:
                return zzhaj;
            case 5:
                zzdsp<zzdlc> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdlc.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzhaj);
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
}
