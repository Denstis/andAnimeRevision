package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
public final class zzdhq extends zzdqw<zzdhq, zza> implements zzdsi {
    private static volatile zzdsp<zzdhq> zzdv;
    private static final zzdhq zzgux;
    private int zzgtt;
    private zzdpm zzgub = zzdpm.zzhgb;

    public static final class zza extends zzdqw.zza<zzdhq, zza> implements zzdsi {
        private zza() {
            super(zzdhq.zzgux);
        }

        /* synthetic */ zza(zzdhp zzdhpVar) {
            this();
        }

        public final zza zzal(zzdpm zzdpmVar) {
            zzazn();
            ((zzdhq) this.zzhkp).zzw(zzdpmVar);
            return this;
        }

        public final zza zzdz(int i2) {
            zzazn();
            ((zzdhq) this.zzhkp).setVersion(0);
            return this;
        }
    }

    static {
        zzdhq zzdhqVar = new zzdhq();
        zzgux = zzdhqVar;
        zzdqw.zza((Class<zzdhq>) zzdhq.class, zzdhqVar);
    }

    private zzdhq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i2) {
        this.zzgtt = i2;
    }

    public static zzdhq zzaj(zzdpm zzdpmVar) {
        return (zzdhq) zzdqw.zza(zzgux, zzdpmVar);
    }

    public static zza zzaro() {
        return zzgux.zzazt();
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
        zzdhp zzdhpVar = null;
        switch (zzdhp.zzdi[i2 - 1]) {
            case 1:
                return new zzdhq();
            case 2:
                return new zza(zzdhpVar);
            case 3:
                return zzdqw.zza(zzgux, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgtt", "zzgub"});
            case 4:
                return zzgux;
            case 5:
                zzdsp<zzdhq> zzcVar = zzdv;
                if (zzcVar == null) {
                    synchronized (zzdhq.class) {
                        zzcVar = zzdv;
                        if (zzcVar == null) {
                            zzcVar = new zzdqw.zzc<>(zzgux);
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
